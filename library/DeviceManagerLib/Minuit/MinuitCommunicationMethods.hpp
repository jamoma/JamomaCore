/*
 *  MinuitCommunicationMethods.h
 *
 *
 *  Created by Laurent Garnier on 04/06/09.
 *  Copyright 2009 __MyCompanyName__. All rights reserved.
 *
 */

#ifndef MINUITCOMMUNICATIONMETHODS_HPP_
#define MINUITCOMMUNICATIONMETHODS_HPP_

#include "MinuitDiscoverAnswer.hpp"
#include "MinuitGetAnswer.hpp"
#include "ReceiveOSCThread.hpp"
#include "OSCParser.hpp"
#include "OSCFunctions.hpp"
#include "MinuitInclude.hpp"

#include "TTModular.h"

#include <string>
#include <map>
#include <vector>

class MinuitCommunicationMethods{
private:
	ReceiveOSCThread* m_receiveOSCThread;
	std::map<std::string, MinuitDiscoverAnswer*> m_discoverAnswer;
	std::map<std::string, MinuitGetAnswer*> m_getAnswer;
	
public:
	MinuitCommunicationMethods();
	
	/** */
	void minuitRunOSCListening(unsigned int port);

	void(*m_discoverRequestCallBack)(void*, std::string, std::string);
	void(*m_getRequestCallBack)(void*, std::string, std::string, std::string);
	void(*m_setRequestCallBack)(void*, std::string, std::string, std::string, TTValue&);
	void(*m_listenRequestCallBack)(void*, std::string, std::string, std::string, bool);
	
	void* m_discoverRequestCallBackArgument;
	void* m_getRequestCallBackArgument;
	void* m_setRequestCallBackArgument;
	void* m_listenRequestCallBackArgument;
	
	void minuitReceiveNetworkDiscoverRequest(std::string from, std::string address);
	void minuitReceiveNetworkGetRequest(std::string from, std::string address, std::string attribute);
	void minuitReceiveNetworkSetRequest(std::string from, std::string address, std::string attribute, TTValue& value);
	void minuitReceiveNetworkListenRequest(std::string from, std::string address, std::string attribute, bool);

	void minuitSendMessage(std::string stringToSend, std::string ip, unsigned int port);
	
	void minuitParseDiscoverAnswer(std::string from, std::string address, const osc::ReceivedMessage&m);
	void minuitAddDiscoverAnswer(std::string from, std::string address, std::string ip, unsigned int port, int timeOutInMs = DEFAULT_TIMEOUT);
	int minuitWaitDiscoverAnswer(std::string from, std::string address, TTValue& returnednodes, TTValue& returnedleaves, TTValue& returnedAttributes);
	
	void minuitParseGetAnswer(std::string from, std::string address, const osc::ReceivedMessage&m);
	void minuitAddGetAnswer(std::string from, std::string address, int timeOutInMs = DEFAULT_TIMEOUT);
	int minuitWaitGetAnswer(std::string from, std::string address, TTValue& returnedValues, bool repeatAddress = true);
};

unsigned int computeOSCMessageSize(OSCParser OSCParsed);

#endif /*MINUITCOMMUNICATIONMETHODS_HPP_*/
