/*
 *  MinuitAnswerManager.cpp
 *
 *
 *  Created by Laurent Garnier on 04/06/09.
 *  Copyright 2009 __MyCompanyName__. All rights reserved.
 *
 */

#include "MinuitAnswerManager.h"

MinuitAnswerManager::MinuitAnswerManager(MinuitPtr aMinuitProtocol)
{
	mProtocol = aMinuitProtocol;
}

MinuitAnswerManager::~MinuitAnswerManager()
{
	//delete mDiscoverAnswers;
	//delete mGetAnswers;
}

void MinuitAnswerManager::AddDiscoverAnswer(TTString from, TTNodeAddressPtr address, int timeOutInMs)
{
	TTString key = from + address->getCString();
	mDiscoverAnswers[key] = new MinuitAnswer();
	mDiscoverAnswers[key]->setTimeOut(timeOutInMs);
}

TTErr MinuitAnswerManager::ReceiveDiscoverAnswer(TTString from, TTNodeAddressPtr address, const TTValue& value)
{
	TTString key = from + address->getCString();
	MinuitAnswerTable::iterator it  = mDiscoverAnswers.find(key);
	
	if(it != mDiscoverAnswers.end()) {
		if(mDiscoverAnswers[key]->getState() != TIMEOUT_EXCEEDED) {
			mDiscoverAnswers[key]->setAnswer(value);
			return kTTErrNone;
		}
	}
	else
		cout << "MinuitAnswerManager::ReceiveDiscoverAnswer can't find a request at " << address << endl;
		
	return kTTErrGeneric;
}

int MinuitAnswerManager::CheckDiscoverAnswer(TTString from, TTNodeAddressPtr address, TTValue& value)
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

TTErr MinuitAnswerManager::ParseDiscoverAnswer(const TTValue& answer, TTValue& returnedChildrenNames, TTValue& returnedChildrenTypes, TTValue& returnedAttributes)
{
	TTSymbolPtr toParse, parsed;
	TTBoolean	endFlagFound;
	
	// don't parse sender?operation /whereTo
	// parse something like : nodes={ all nodes below } types={ all type of each node below } attributes={ all current node's attributes }
	for (TTUInt32 i=1; i<answer.getSize(); i++) {
		
		answer.get(i, &toParse);
		
		// parse nodes
		if (toParse == TT(MINUIT_START_NODES)) {
			
			endFlagFound = NO;
			do {
				i++;
				parsed = kTTSymEmpty;
				if (answer.getType() == kTypeSymbol)
					answer.get(i, &parsed);
				
				// don't store the end flag
				if (parsed != TT(MINUIT_END_NODES)) {
					
					returnedChildrenNames.append(parsed);
					
#ifdef TT_PROTOCOL_DEBUG	
					cout << "Parsed node " << parsed->getCString() << endl;
#endif
				}
				else
					endFlagFound = YES;
			}
			while (!endFlagFound);
			
		}
		else if (toParse == TT(MINUIT_START_TYPES)) {
			
			endFlagFound = NO;
			do {
				i++;
				parsed = kTTSymEmpty;
				if (answer.getType() == kTypeSymbol)
					answer.get(i, &parsed);
				
				// don't store the end flag
				if (parsed != TT(MINUIT_END_TYPES)) {
					
					returnedChildrenTypes.append(parsed);
					
#ifdef TT_PROTOCOL_DEBUG	
					cout << "Parsed type " << parsed->getCString() << endl;
#endif
				}
				else
					endFlagFound = YES;
			}
			while (!endFlagFound);
			
		}
		else if (toParse == TT(MINUIT_START_ATTRIBUTES)) {
			
			endFlagFound = NO;
			do {
				i++;
				parsed = kTTSymEmpty;
				if (answer.getType() == kTypeSymbol)
					answer.get(i, &parsed);
				
				// don't store the end flag
				if (parsed != TT(MINUIT_END_ATTRIBUTES)) {
					
					returnedAttributes.append(parsed);
					
#ifdef TT_PROTOCOL_DEBUG	
					cout << "Parsed attribute " << parsed->getCString() << endl;
#endif
				}
				else
					endFlagFound = YES;
			}
			while (!endFlagFound);
			
		}
		else
			i++;
	} // end for to parse answer
	
	return kTTErrNone;
}

void MinuitAnswerManager::AddGetAnswer(TTString from, TTNodeAddressPtr address, int timeOutInMs)
{	
	TTString key = from + address->getCString();
	mGetAnswers[key] = new MinuitAnswer();
	mGetAnswers[key]->setTimeOut(timeOutInMs);
}

TTErr MinuitAnswerManager::ReceiveGetAnswer(TTString from, TTNodeAddressPtr address, const TTValue& value)
{
	TTString key = from + address->getCString();
	MinuitAnswerTable::iterator it  = mGetAnswers.find(key);
	
	if (it != mGetAnswers.end()) {
		if (mGetAnswers[key]->getState() != TIMEOUT_EXCEEDED) {
			mGetAnswers[key]->setAnswer(value);
			return kTTErrNone;
		}
	}
	else
		cout << "MinuitAnswerManager::ReceiveGetAnswer can't find a request at " << key << endl;
	
	return kTTErrGeneric;
}

int MinuitAnswerManager::CheckGetAnswer(TTString from, TTNodeAddressPtr address, TTValue& value)
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