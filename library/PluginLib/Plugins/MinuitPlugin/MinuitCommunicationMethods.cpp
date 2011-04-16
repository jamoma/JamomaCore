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

void MinuitCommunicationMethods::minuitSendMessage(TTString stringToSend, TTValue& valueToSend, TTString ip, unsigned int port)
{
	OSCParser OSCParsed(stringToSend);
	
	unsigned int bufferSize = computeOSCMessageSize(OSCParsed, valueToSend);
	
	UdpTransmitSocket transmitSocket( IpEndpointName(ip.data(), port) );
	
#ifdef TT_PLATFORM_WIN
	char* buffer = (char*)malloc(bufferSize);
#else
	char buffer[bufferSize];
#endif

	osc::OutboundPacketStream oscStream(buffer, bufferSize);
	
	//oscStream << osc::BeginBundleImmediate;//provoque un segmentation fault
	oscStream << osc::BeginMessage(OSCParsed.getAddress().data());
	
	for (unsigned int i = 0; i < OSCParsed.getNbArg(); ++i) {
		string currentString = OSCParsed.getArg(i);
		if (OSCParsed.getType(i) == osc::INT32_TYPE_TAG) {
			oscStream << toInt(currentString);
		} else if (OSCParsed.getType(i) == osc::FLOAT_TYPE_TAG) {
			oscStream << toFloat(currentString);
		} else {
			oscStream << currentString.data();
		}
	}
	
	//TTValue v = valueToSend;
	//TTString s;
	//v.toString();
	//v.get(0, s);
	//std::cout << s << std::endl;

	TTSymbolPtr symValue;
	TTInt32		intValue;
	TTFloat64	floatValue;
	TTDataType	valueType;

	for (unsigned int i = 0; i < valueToSend.getSize(); ++i) {
		valueType = valueToSend.getType(i);

		if (valueType == kTypeSymbol) {
			valueToSend.get(i, &symValue);
			//std::cout << "symValue : " << symValue->getCString() << std::endl;
			oscStream << symValue->getCString();
		}
		else if (valueType == kTypeInt32) {
			valueToSend.get(i, intValue);
			//std::cout << "intValue : " << intValue << std::endl;
			oscStream << intValue;
		}
		else if (valueType == kTypeFloat64) {
			
			valueToSend.get(i, floatValue);
			//std::cout << "float : " << floatValue << std::endl;
			oscStream << (float)floatValue;
		}
	}
	
	oscStream << osc::EndMessage;
	// << osc::EndBundle;//provoque un segmentation fault

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


unsigned int computeOSCMessageSize(OSCParser OSCParsed, TTValue& valueToSend) 
{
	unsigned int result = 0;
	
	result += 8; //#bundle
	result += 8; //timetag
	result += 4; //datasize
	
	unsigned int addressSize = OSCParsed.getAddress().size();
	addressSize += 1; // /0 for end of string
	
	result += ((addressSize/4) + 1) * 4; //Address Size
	
	unsigned int argumentsSize = OSCParsed.getNbArg() + valueToSend.getSize();
	argumentsSize += 1; // , for indicating this is an argument string information
	
	result += ((argumentsSize/4) + 1) * 4; //ArgumentTag Size
	
	for (unsigned int i = 0; i < OSCParsed.getNbArg(); ++i) {
		string currentString = OSCParsed.getArg(i);
		if (OSCParsed.getType(i) == osc::INT32_TYPE_TAG) {
			result += 4; //Int size
		} else if (OSCParsed.getType(i) == osc::FLOAT_TYPE_TAG) {
			result += 4; //Float size
		} else {
			unsigned int stringSize = currentString.size();
			stringSize += 1; // /0 for end of string
			result += ((stringSize/4) + 1) * 4; //String Size
		}
	}

	for (unsigned int i = 0; i < valueToSend.getSize(); ++i) {
		if (valueToSend.getType(i) == kTypeSymbol) {
			TTSymbolPtr symValue;
			valueToSend.get(i, &symValue);
			result += strlen(symValue->getCString());
		}
		else if (valueToSend.getType(i) == kTypeInt32 || valueToSend.getType(i) == kTypeFloat32) {
			result += 4; //Float32/Int32 size
		}
		else if (valueToSend.getType(i) == kTypeInt64 || valueToSend.getType(i) == kTypeFloat64) {
			result += 8; //Float64/Int64 size
		}
	}
	
	//	std::cout << "OSC size calcul result : " << result << std::endl;
	return result;
}
