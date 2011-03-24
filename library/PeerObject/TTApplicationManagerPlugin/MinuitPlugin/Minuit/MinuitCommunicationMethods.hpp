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
	std::map<TTString, MinuitDiscoverAnswer*> m_discoverAnswer;
	std::map<TTString, MinuitGetAnswer*> m_getAnswer;
	
public:
	MinuitCommunicationMethods();
	
	/** */
	void minuitRunOSCListening(unsigned int port);

	void(*m_discoverRequestCallBack)(TTPtr, TTString, TTString);
	void(*m_getRequestCallBack)(TTPtr, TTString, TTString, TTString);
	void(*m_setRequestCallBack)(TTPtr, TTString, TTString, TTString, TTValue&);
	void(*m_listenRequestCallBack)(TTPtr, TTString, TTString, TTString, bool);
	
	TTPtr m_discoverRequestCallBackArgument;
	TTPtr m_getRequestCallBackArgument;
	TTPtr m_setRequestCallBackArgument;
	TTPtr m_listenRequestCallBackArgument;
	
	void minuitReceiveNetworkDiscoverRequest(TTString from, TTString address);
	void minuitReceiveNetworkGetRequest(TTString from, TTString address, TTString attribute);
	void minuitReceiveNetworkSetRequest(TTString from, TTString address, TTString attribute, TTValue& value);
	void minuitReceiveNetworkListenRequest(TTString from, TTString address, TTString attribute, bool);

	void minuitSendMessage(TTString stringToSend, TTValue& valueToSend, TTString ip, unsigned int port);
	
	void minuitParseDiscoverAnswer(TTString from, TTString address, const osc::ReceivedMessage&m);
	void minuitAddDiscoverAnswer(TTString from, TTString address, TTString ip, unsigned int port, int timeOutInMs = DEFAULT_TIMEOUT);
	int minuitWaitDiscoverAnswer(TTString from, TTString address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes);
	
	void minuitParseGetAnswer(TTString from, TTString address, const osc::ReceivedMessage&m);
	void minuitAddGetAnswer(TTString from, TTString address, int timeOutInMs = DEFAULT_TIMEOUT);
	int minuitWaitGetAnswer(TTString from, TTString address, TTValue& returnedValues, bool repeatAddress = true);
};

unsigned int computeOSCMessageSize(OSCParser OSCParsed, TTValue& v);

#endif /*MINUITCOMMUNICATIONMETHODS_HPP_*/
