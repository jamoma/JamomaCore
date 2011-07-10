/*
 *  MinuitMethods.h
 *
 *
 *  Created by Laurent Garnier on 04/06/09.
 *  Copyright 2009 __MyCompanyName__. All rights reserved.
 *
 */

#ifndef MINUITCOMMUNICATIONMETHODS_HPP_
#define MINUITCOMMUNICATIONMETHODS_HPP_

#include "MinuitInclude.hpp"
#include "MinuitAnswer.hpp"
#include "ReceiveOSCThread.hpp"

#include <string>
#include <map>
#include <vector>

typedef std::map<TTString, MinuitAnswerPtr>	 MinuitAnswerTable;

class ReceiveOSCThread;
typedef ReceiveOSCThread* ReceiveOSCThreadPtr;

class MinuitMethods {
	
private:
	ReceiveOSCThreadPtr	mReceiveOSCThread;
	MinuitAnswerTable	mDiscoverAnswers;
	MinuitAnswerTable	mGetAnswers;
	MinuitAnswerTable	mListenAnswers;
	
public:
	void(*mDiscoverRequestCallBack)(TTPtr, TTString, TTNodeAddressPtr);
	void(*mGetRequestCallBack)(TTPtr, TTString, TTNodeAddressPtr);
	void(*mSetRequestCallBack)(TTPtr, TTString, TTNodeAddressPtr, TTValue&);
	void(*mListenRequestCallBack)(TTPtr, TTString, TTNodeAddressPtr, bool);
	void(*mListenAnswerCallBack)(TTPtr, TTString, TTNodeAddressPtr, TTValue&);
	
	TTPtr	mDiscoverRequestBaton;
	TTPtr	mGetRequestBaton;
	TTPtr	mSetRequestBaton;
	TTPtr	mListenRequestBaton;
	TTPtr	mListenAnswerBaton;
	
	MinuitMethods();
	
	/** */
	void	Run(unsigned int port);

	void	SendMessage(TTString header, TTValue& arguments, TTString ip, unsigned int port);
	
	void	ReceiveDiscoverRequest(TTString from, TTNodeAddressPtr address);
	void	ReceiveGetRequest(TTString from, TTNodeAddressPtr address);
	void	ReceiveSetRequest(TTString from, TTNodeAddressPtr address, TTValue& value);
	void	ReceiveListenRequest(TTString from, TTNodeAddressPtr address, bool);
	
	void	AddDiscoverAnswer(TTString from, TTNodeAddressPtr address, int timeOutInMs = DEFAULT_TIMEOUT);
	void	ReceiveDiscoverAnswer(TTString from, TTNodeAddressPtr address, const TTValue& value);
	int		CheckDiscoverAnswer(TTString from, TTNodeAddressPtr address, TTValue& value);
	
	void	AddGetAnswer(TTString from, TTNodeAddressPtr address, int timeOutInMs = DEFAULT_TIMEOUT);
	void	ReceiveGetAnswer(TTString from, TTNodeAddressPtr address, const TTValue& value);
	int		CheckGetAnswer(TTString from, TTNodeAddressPtr address, TTValue& value);
	
	void	AddListenAnswer(TTString from, TTNodeAddressPtr address);
	void	ReceiveListenAnswer(TTString from, TTNodeAddressPtr address, TTValue& value);
};

typedef MinuitMethods* MinuitMethodsPtr;

unsigned int computeOSCMessageSize(TTString header, TTValue& arguments) ;

#endif /*MINUITCOMMUNICATIONMETHODS_HPP_*/
