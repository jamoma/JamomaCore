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

void MinuitCommunicationMethods::minuitReceiveNetworkDiscoverRequest(TTString from, TTString address)
{
	m_discoverRequestCallBack(m_discoverRequestCallBackArgument, from, address);
}

void MinuitCommunicationMethods::minuitReceiveNetworkGetRequest(TTString from, TTString address, TTString attribute)
{
	m_getRequestCallBack(m_getRequestCallBackArgument, from, address, attribute);	
}

void MinuitCommunicationMethods::minuitReceiveNetworkSetRequest(TTString from, TTString address, TTString attribute, TTValue& value)
{
	m_setRequestCallBack(m_setRequestCallBackArgument, from, address, attribute, value);
}

void MinuitCommunicationMethods::minuitReceiveNetworkListenRequest(TTString from, TTString address, TTString attribute, bool enable)
{
	m_listenRequestCallBack(m_listenRequestCallBackArgument, from, address, attribute, enable);
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
	TTDataType	valueType;

	for (unsigned int i = 0; i < arguments.getSize(); ++i) {
		valueType = arguments.getType(i);

		if (valueType == kTypeSymbol) {
			arguments.get(i, &symValue);
			oscStream << symValue->getCString();
		}
		else if (valueType == kTypeInt32 || valueType == kTypeInt64) {
			arguments.get(i, intValue);
			oscStream << intValue;
		}
		else if (valueType == kTypeFloat32 || valueType == kTypeFloat64) {
			arguments.get(i, floatValue);
			oscStream << (float)floatValue;
		}
	}
	
	oscStream << osc::EndMessage;
	
	transmitSocket.Send( oscStream.Data(), oscStream.Size());
	oscStream.Clear();
}

void MinuitCommunicationMethods::minuitAddDiscoverAnswer(TTString from, TTString address, TTString ip, unsigned int port, int timeOutInMs)
{
	string key = from + address;
	m_discoverAnswer[key] = new MinuitDiscoverAnswer();
	m_discoverAnswer[key]->setTimeOut(timeOutInMs);
	m_discoverAnswer[key]->setIp(ip);
	m_discoverAnswer[key]->setPort(port);
}

void MinuitCommunicationMethods::minuitAddGetAnswer(TTString from, TTString address, int timeOutInMs)
{	
	string key = from + address;
	m_getAnswer[key] = new MinuitGetAnswer();
	m_getAnswer[key]->setTimeOut(DEFAULT_TIMEOUT);
}

void MinuitCommunicationMethods::minuitParseDiscoverAnswer(string from, string address, const osc::ReceivedMessage&m)
{
	string key = from + address;
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


void MinuitCommunicationMethods::minuitParseGetAnswer(TTString from, string address, const osc::ReceivedMessage&m)
{
	string key = from + address;
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
		cout << "MinuitCommunicationMethods::minuitParseGetAnswer can't find a request at " << from+address << endl;
}

int MinuitCommunicationMethods::minuitWaitDiscoverAnswer(TTString from, TTString address, TTValue& returnednodes, TTValue& returnedleaves, TTValue& returnedAttributes)
{
	int state;
	string key = from + address;
	
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


int MinuitCommunicationMethods::minuitWaitGetAnswer(TTString from, string address, TTValue& returnedValues, bool repeatAddress)
{
	int state;
	string key = from + address;
	
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
		else if (arguments.getType(i) == kTypeInt32 || arguments.getType(i) == kTypeFloat32) {
			result += 4; //Float32/Int32 size
		}
		else if (arguments.getType(i) == kTypeInt64 || arguments.getType(i) == kTypeFloat64) {
			result += 8; //Float64/Int64 size
		}
		else
			return 0; // error
	}
	
	return result;
}
