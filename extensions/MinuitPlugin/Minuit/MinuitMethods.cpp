/*
 *  MinuitMethods.cpp
 *
 *
 *  Created by Laurent Garnier on 04/06/09.
 *  Copyright 2009 __MyCompanyName__. All rights reserved.
 *
 */

#include "MinuitMethods.hpp"

MinuitMethods::MinuitMethods()
{
	mReceiveOSCThread = NULL;
}

void MinuitMethods::Run(unsigned int port)
{
	if (mReceiveOSCThread == NULL) {
		mReceiveOSCThread = new ReceiveOSCThread(this);
		mReceiveOSCThread->setPort(port);
	}
	
	if (!mReceiveOSCThread->isRunning()) {
		mReceiveOSCThread->run();
	}
}

void MinuitMethods::SendMessage(TTString header, TTValue& arguments, TTString ip, unsigned int port)
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

void MinuitMethods::ReceiveDiscoverRequest(TTString from, TTNodeAddressPtr address)
{
	mDiscoverRequestCallBack(mDiscoverRequestBaton, from, address);
}

void MinuitMethods::ReceiveGetRequest(TTString from, TTNodeAddressPtr address)
{
	if (address->getAttribute() == NO_ATTRIBUTE)
		address = address->appendAttribute(kTTSym_value);
	
	mGetRequestCallBack(mGetRequestBaton, from, address);	
}

void MinuitMethods::ReceiveSetRequest(TTString from, TTNodeAddressPtr address, TTValue& value)
{
	if (address->getAttribute() == NO_ATTRIBUTE)
		address = address->appendAttribute(kTTSym_value);
	
	mSetRequestCallBack(mSetRequestBaton, from, address, value);
}

void MinuitMethods::ReceiveListenRequest(TTString from, TTNodeAddressPtr address, bool enable)
{
	if (address->getAttribute() == NO_ATTRIBUTE)
		address = address->appendAttribute(kTTSym_value);
	
	mListenRequestCallBack(mListenRequestBaton, from, address, enable);
}

void MinuitMethods::AddDiscoverAnswer(TTString from, TTNodeAddressPtr address, int timeOutInMs)
{
	TTString key = from + address->getCString();
	mDiscoverAnswers[key] = new MinuitAnswer();
	mDiscoverAnswers[key]->setTimeOut(timeOutInMs);
}

void MinuitMethods::ReceiveDiscoverAnswer(string from, TTNodeAddressPtr address, const TTValue& value)
{
	TTString key = from + address->getCString();
	MinuitAnswerTable::iterator it  = mDiscoverAnswers.find(key);
	
	if(it != mDiscoverAnswers.end())
		if(mDiscoverAnswers[key]->getState() != TIMEOUT_EXCEEDED)
			mDiscoverAnswers[key]->setAnswer(value);
	else
		cout << "MinuitMethods::ReceiveDiscoverAnswer can't find a request at " << address << endl;
}

int MinuitMethods::CheckDiscoverAnswer(TTString from, TTNodeAddressPtr address, TTValue& value)
{
	int			state;
	TTString	key = from + address->getCString();
	TTValue		answer;
	
	// Looking for a MinuitDiscoverAnswer object at the given address
	MinuitAnswerTable::iterator it  = mDiscoverAnswers.find(key);
	if(it != mDiscoverAnswers.end())
	{
		state = mDiscoverAnswers[key]->getState();
		
		// if an answer is received
		if(state == ANSWER_RECEIVED)
		{
			// get the answer
			it->second->getAnswer(answer);
			delete it->second;
			mDiscoverAnswers.erase(it);
		}
		
		return state;
	} 
	else
		return REQUEST_NOT_SENT;
}

void MinuitMethods::AddGetAnswer(TTString from, TTNodeAddressPtr address, int timeOutInMs)
{	
	TTString key = from + address->getCString();
	mGetAnswers[key] = new MinuitAnswer();
	mGetAnswers[key]->setTimeOut(timeOutInMs);
}

void MinuitMethods::ReceiveGetAnswer(TTString from, TTNodeAddressPtr address, const TTValue& value)
{
	TTString key = from + address->getCString();
	MinuitAnswerTable::iterator it  = mGetAnswers.find(key);
	
	if (it != mGetAnswers.end())
		if (mGetAnswers[key]->getState() != TIMEOUT_EXCEEDED)
			mGetAnswers[key]->setAnswer(value);
	else
		cout << "MinuitMethods::ReceiveGetAnswer can't find a request at " << key << endl;
}

int MinuitMethods::CheckGetAnswer(TTString from, TTNodeAddressPtr address, TTValue& value)
{
	int			state;
	TTString	key = from + address->getCString();
	
	// Looking for a MinuitGetAnswer object at the given address
	MinuitAnswerTable::iterator it  = mGetAnswers.find(key);
	if(it != mGetAnswers.end())
	{
		state =  mGetAnswers[key]->getState();
		
		// if an answer is received
		if(state == ANSWER_RECEIVED)
		{
			 it->second->getAnswer(value);
			delete it->second;
			mGetAnswers.erase(it);
		}
		
		return state;
	}
	
	return REQUEST_NOT_SENT;
}

void MinuitMethods::AddListenAnswer(TTString from, TTNodeAddressPtr address)
{
	TTString key = from + address->getCString();
	mListenAnswers[key] = new MinuitAnswer();
	mListenAnswers[key]->setTimeOut(NO_TIMEOUT);
}

void MinuitMethods::ReceiveListenAnswer(TTString from, TTNodeAddressPtr address, TTValue& value)
{
	TTString key = from + address->getCString();
	MinuitAnswerTable::iterator it  = mListenAnswers.find(key);
	
	if (it != mListenAnswers.end()) {
		mListenAnswers[key]->setAnswer(value);
		
		if (address->getAttribute() == NO_ATTRIBUTE)
			address = address->appendAttribute(kTTSym_value);
		
		mListenAnswerCallBack(mListenAnswerBaton, from, address, value);
	}
	else
		cout << "MinuitMethods::ReceiveListenAnswer can't find a request at " << key << endl;
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
