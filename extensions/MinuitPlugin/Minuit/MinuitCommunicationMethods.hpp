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

#include "TTFoundationAPI.h"

#include "MinuitDiscoverAnswer.hpp"
#include "MinuitGetAnswer.hpp"
#include "ReceiveOSCThread.hpp"
#include "MinuitInclude.hpp"

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

	void(*m_discoverRequestCallBack)(TTPtr, TTString, TTNodeAddressPtr);
	void(*m_getRequestCallBack)(TTPtr, TTString, TTNodeAddressPtr);
	void(*m_setRequestCallBack)(TTPtr, TTString, TTNodeAddressPtr, TTValue&);
	void(*m_listenRequestCallBack)(TTPtr, TTString, TTNodeAddressPtr, bool);
	
	TTPtr m_discoverRequestCallBackArgument;
	TTPtr m_getRequestCallBackArgument;
	TTPtr m_setRequestCallBackArgument;
	TTPtr m_listenRequestCallBackArgument;
	
	void minuitReceiveNetworkDiscoverRequest(TTString from, TTNodeAddressPtr address);
	void minuitReceiveNetworkGetRequest(TTString from, TTNodeAddressPtr address);
	void minuitReceiveNetworkSetRequest(TTString from, TTNodeAddressPtr address, TTValue& value);
	void minuitReceiveNetworkListenRequest(TTString from, TTNodeAddressPtr address, bool);

	void minuitSendMessage(TTString header, TTValue& arguments, TTString ip, unsigned int port);
	
	void minuitParseDiscoverAnswer(TTString from, TTNodeAddressPtr address, const osc::ReceivedMessage&m);
	void minuitAddDiscoverAnswer(TTString from, TTNodeAddressPtr address, TTString ip, unsigned int port, int timeOutInMs = DEFAULT_TIMEOUT);
	int minuitWaitDiscoverAnswer(TTString from, TTNodeAddressPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes);
	
	void minuitParseGetAnswer(TTString from, TTNodeAddressPtr address, const osc::ReceivedMessage&m);
	void minuitAddGetAnswer(TTString from, TTNodeAddressPtr address, int timeOutInMs = DEFAULT_TIMEOUT);
	int minuitWaitGetAnswer(TTString from, TTNodeAddressPtr address, TTValue& returnedValues, bool repeatAddress = true);
};

unsigned int computeOSCMessageSize(TTString header, TTValue& arguments) ;

#endif /*MINUITCOMMUNICATIONMETHODS_HPP_*/
