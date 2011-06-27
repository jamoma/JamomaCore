/*
 *  MinuitCommunicationMethods.cpp
 *
 *
 *  Created by Laurent Garnier on 04/06/09.
 *  Copyright 2009 __MyCompanyName__. All rights reserved.
 *
 */

#include "MinuitCommunicationMethods.hpp"

#include <iostream>

using namespace std;

MinuitCommunicationMethods::MinuitCommunicationMethods()
{
	m_receiveOSCThread = NULL;
}

void MinuitCommunicationMethods::minuitRunOSCListening(unsigned int port)
{
	if (m_receiveOSCThread == NULL) {
		m_receiveOSCThread = new ReceiveOSCThread(this);
		m_receiveOSCThread->setPort(port);
	}
	
	if (!m_receiveOSCThread->isRunning()) {
		m_receiveOSCThread->run();
	}
}

void MinuitCommunicationMethods::minuitReceiveNetworkDiscoverRequest(TTString from, TTNodeAddressPtr address)
{
	m_discoverRequestCallBack(m_discoverRequestCallBackArgument, from, address);
}

void MinuitCommunicationMethods::minuitReceiveNetworkGetRequest(TTString from, TTNodeAddressPtr address)
{
	if (address->getAttribute() == NO_ATTRIBUTE)
		address = address->appendAttribute(kTTSym_value);
	
	m_getRequestCallBack(m_getRequestCallBackArgument, from, address);	
}

void MinuitCommunicationMethods::minuitReceiveNetworkSetRequest(TTString from, TTNodeAddressPtr address, TTValue& value)
{
	if (address->getAttribute() == NO_ATTRIBUTE)
		address = address->appendAttribute(kTTSym_value);
	
	m_setRequestCallBack(m_setRequestCallBackArgument, from, address, value);
}

void MinuitCommunicationMethods::minuitReceiveNetworkListenRequest(TTString from, TTNodeAddressPtr address, bool enable)
{
	if (address->getAttribute() == NO_ATTRIBUTE)
		address = address->appendAttribute(kTTSym_value);
	
	m_listenRequestCallBack(m_listenRequestCallBackArgument, from, address, enable);
}

void MinuitCommunicationMethods::minuitSendMessage(TTString header, TTValue& arguments, TTString ip, unsigned int port)
{
	UdpTransmitSocket transmitSocket( IpEndpointName(ip.data(), port) );
	unsigned int bufferSize = computeOSCMessageSize(header, arguments);
	
	if (!bufferSize)
		return;
	
#ifdef TT_PLATFORM_WIN
	char* buffer = (char*)malloc(bufferSize);
#else
	char buffer[bufferSize];
#endif
	
	osc::OutboundPacketStream oscStream(buffer, bufferSize);

	oscStream << osc::BeginMessage(header.data());

	TTSymbolPtr symValue;
	TTInt32		intValue;
	TTFloat64	floatValue;
	TTBoolean	booleanValue;
	TTDataType	valueType;

	for (unsigned int i = 0; i < arguments.getSize(); ++i) {
		valueType = arguments.getType(i);

		if (valueType == kTypeSymbol) {
			arguments.get(i, &symValue);
			oscStream << symValue->getCString();
		}
		else if (valueType == kTypeBoolean) {
			arguments.get(i, booleanValue);
			oscStream << booleanValue;
		}
		else if (valueType == kTypeUInt8 || valueType == kTypeUInt16 || valueType == kTypeUInt32 || valueType == kTypeUInt64) {
			arguments.get(i, intValue);
			oscStream << intValue;
		}
		else if (valueType == kTypeInt8 || valueType == kTypeInt16 || valueType == kTypeInt32 || valueType == kTypeInt64) {
			arguments.get(i, intValue);
			oscStream << intValue;
		}
		else if (valueType == kTypeFloat32 || valueType == kTypeFloat64) {
			arguments.get(i, floatValue);
			oscStream << (float)floatValue;
		}
		else
			return; // error
	}
	
	oscStream << osc::EndMessage;
	
	transmitSocket.Send( oscStream.Data(), oscStream.Size());
	oscStream.Clear();
}

void MinuitCommunicationMethods::minuitAddDiscoverAnswer(TTString from, TTNodeAddressPtr address, TTString ip, unsigned int port, int timeOutInMs)
{
	string key = from + address->getCString();
	m_discoverAnswer[key] = new MinuitDiscoverAnswer();
	m_discoverAnswer[key]->setTimeOut(timeOutInMs);
	m_discoverAnswer[key]->setIp(ip);
	m_discoverAnswer[key]->setPort(port);
}

void MinuitCommunicationMethods::minuitAddGetAnswer(TTString from, TTNodeAddressPtr address, int timeOutInMs)
{	
	string key = from + address->getCString();
	m_getAnswer[key] = new MinuitGetAnswer();
	m_getAnswer[key]->setTimeOut(DEFAULT_TIMEOUT);
}

void MinuitCommunicationMethods::minuitParseDiscoverAnswer(string from, TTNodeAddressPtr address, const osc::ReceivedMessage&m)
{
	string key = from + address->getCString();
	map<string, MinuitDiscoverAnswer*>::iterator it  = m_discoverAnswer.find(key);
	
	if(it != m_discoverAnswer.end())
	{
		if(m_discoverAnswer[key]->getState() != TIMEOUT_EXCEEDED)
		{
			m_discoverAnswer[key]->parseMinuitDiscoverAnswer(m);
			return;
		}
	}
	else
		cout << "MinuitCommunicationMethods::minuitParseDiscoverAnswer can't find a request at " << address << endl;
}


void MinuitCommunicationMethods::minuitParseGetAnswer(TTString from, TTNodeAddressPtr address, const osc::ReceivedMessage&m)
{
	string key = from + address->getCString();
	map<string, MinuitGetAnswer*>::iterator it  = m_getAnswer.find(key);
	
	if (it != m_getAnswer.end())
	{
		if (m_getAnswer[key]->getState() != TIMEOUT_EXCEEDED)
		{
			m_getAnswer[key]->parseMinuitGetAnswer(m);
			return;
		}
	}
	else
		cout << "MinuitCommunicationMethods::minuitParseGetAnswer can't find a request at " << key << endl;
}

int MinuitCommunicationMethods::minuitWaitDiscoverAnswer(TTString from, TTNodeAddressPtr address, TTValue& returnednodes, TTValue& returnedleaves, TTValue& returnedAttributes)
{
	int state;
	string key = from + address->getCString();
	
	// Looking for a MinuitDiscoverAnswer object at the given address
	map<string, MinuitDiscoverAnswer*>::iterator it  = m_discoverAnswer.find(key);
	if(it != m_discoverAnswer.end())
	{
		state = m_discoverAnswer[key]->getState();
		
		// if an answer is received
		if(state == ANSWER_RECEIVED)
		{
			// get the answer
			it->second->waitDiscoverAnswer(returnednodes, returnedleaves, returnedAttributes);
			delete it->second;
			m_discoverAnswer.erase(it);
		}
		
		return state;
	} 
	else
		return REQUEST_NOT_SENT;
}


int MinuitCommunicationMethods::minuitWaitGetAnswer(TTString from, TTNodeAddressPtr address, TTValue& returnedValues, bool repeatAddress)
{
	int state;
	string key = from + address->getCString();
	
	// Looking for a MinuitGetAnswer object at the given address
	map<string, MinuitGetAnswer*>::iterator it  = m_getAnswer.find(key);
	if(it != m_getAnswer.end())
	{
		state =  m_getAnswer[key]->getState();
		
		// if an answer is received
		if(state == ANSWER_RECEIVED)
		{
			returnedValues = it->second->waitGetAnswer(repeatAddress);
			delete it->second;
			m_getAnswer.erase(it);
		}
		
		return state;
	}
	
	return REQUEST_NOT_SENT;
}


unsigned int computeOSCMessageSize(TTString header, TTValue& arguments) 
{
	unsigned int result = 0;
	
	result += 8; //#bundle
	result += 8; //timetag
	result += 4; //datasize
	
	unsigned int headerSize = header.size();
	headerSize += 1; // /0 for end of string
	
	result += ((headerSize/4) + 1) * 4;
	
	unsigned int argumentSize = arguments.getSize();
	argumentSize += 1; // , for indicating this is an argument string information
	
	result += ((argumentSize/4) + 1) * 4; // ArgumentTag Size

	for (unsigned int i = 0; i < arguments.getSize(); ++i) {
		if (arguments.getType(i) == kTypeSymbol) {
			TTSymbolPtr symValue;
			arguments.get(i, &symValue);
			unsigned int stringSize = strlen(symValue->getCString());
			stringSize += 1; // /0 for end of string
			result += ((stringSize/4) + 1) * 4; //String Size
		}
		else if (arguments.getType(i) == kTypeBoolean) {
			result += 1; // Boolean size
		}
		else if (arguments.getType(i) == kTypeUInt8 || arguments.getType(i) == kTypeInt8) {
			result += 2; // Int8 size
		}
		else if (arguments.getType(i) == kTypeUInt16 || arguments.getType(i) == kTypeInt16) {
			result += 4; // Int16 size
		}
		else if (arguments.getType(i) == kTypeUInt32 || arguments.getType(i) == kTypeInt32 || arguments.getType(i) == kTypeFloat32) {
			result += 4; //Float32/Int32 size
		}
		else if (arguments.getType(i) == kTypeUInt64 || arguments.getType(i) == kTypeInt64 || arguments.getType(i) == kTypeFloat64) {
			result += 8; //Float64/Int64 size
		}
		else
			return 0; // error
	}
	
	return result;
}
