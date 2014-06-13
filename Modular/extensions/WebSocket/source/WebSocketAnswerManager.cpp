/** @file
 *
 * @ingroup modularMinuit
 *
 * @brief A Protocol interface
 *
 * @details
 *
 * @authors Laurent Garnier, Théo de la Hogue
 *
 * @copyright © 2011, Laurent Garnier, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "WebSocketAnswerManager.h"

WebSocketAnswerManager::WebSocketAnswerManager(WebSocketPtr aWebSocketProtocol)
{
	mProtocol = aWebSocketProtocol;
    
    mDiscoverAnswers = new TTHash();
    mDiscoverAllAnswers = new TTHash();
    mGetAnswers = new TTHash();
}

WebSocketAnswerManager::~WebSocketAnswerManager()
{
	delete mDiscoverAnswers;
    delete mDiscoverAllAnswers;
	delete mGetAnswers;
}

void WebSocketAnswerManager::AddDiscoverAnswer(TTSymbol from, TTAddress address, int timeOutInMs)
{
	TTString key = from.string();
    key += address.string();
    
    WebSocketAnswerPtr anAnswer = new WebSocketAnswer();
    anAnswer->setTimeOut(timeOutInMs);
    
    mDiscoverAnswers->append(TTSymbol(key), (TTPtr)anAnswer);
}

TTErr WebSocketAnswerManager::ReceiveDiscoverAnswer(TTSymbol from, TTAddress address, const TTValue& value, TTErr error)
{
    TTValue             v;
	TTString            key;
    WebSocketAnswerPtr  anAnswer;
    TTErr               err;
    
    key = from.string();
    key += address.string();
    
	err = mDiscoverAnswers->lookup(TTSymbol(key), v);
    
    if (!err) {
        anAnswer = WebSocketAnswerPtr((TTPtr)v[0]);
        
		if (anAnswer->getState() != TIMEOUT_EXCEEDED) {
			anAnswer->setAnswer(value, error);
			return kTTErrNone;
		}
	}
	else
		cout << "WebSocketAnswerManager::ReceiveDiscoverAnswer can't find a request at " << key << endl;
	
	return kTTErrGeneric;
}

int WebSocketAnswerManager::CheckDiscoverAnswer(TTSymbol from, TTAddress address, TTValue& value)
{
	int                 state;
    TTValue             v;
	TTString            key;
    WebSocketAnswerPtr  anAnswer;
    TTErr               err;
    
    key = from.string();
    key += address.string();
	
	// Looking for a WebSocketDiscoverAnswer object at the given address
	err = mDiscoverAnswers->lookup(TTSymbol(key), v);
    
    if (!err) {
        anAnswer = WebSocketAnswerPtr((TTPtr)v[0]);
        
        // wait
        anAnswer->wait();
        
		state = anAnswer->getState();
		
		// if an answer is received
		if(state != NO_ANSWER)
		{
			// get the answer
			anAnswer->getAnswer(value);
			mDiscoverAnswers->remove(TTSymbol(key));
            delete anAnswer;
		}
		
		return state;
	} 
	else
		return REQUEST_NOT_SENT;
}

TTErr WebSocketAnswerManager::ParseDiscoverAnswer(const TTValue& answer, TTSymbol& returnedType, TTValue& returnedChildren, TTValue& returnedAttributes)
{
	TTSymbol    toParse, parsed;
	TTBoolean	endFlagFound;
	
    // pars the type
    returnedType = answer[0];
    
	// parse something like : nodes={ all nodes below } attributes={ all current node's attributes }
	for (TTUInt32 i = 1; i < answer.size(); i++) {
		
		toParse = answer[i];
		
		// parse nodes
		if (toParse == TTSymbol(WEBSOCKET_START_NODES)) {
			
			endFlagFound = NO;
			do {
				i++;
				parsed = kTTSymEmpty;
				if (answer[i].type() == kTypeSymbol)
					parsed = answer[i];
				
				// don't store the end flag
				if (parsed != TTSymbol(WEBSOCKET_END_NODES)) {
					
					returnedChildren.append(parsed);
					
#ifdef TT_PROTOCOL_DEBUG	
					cout << "Parsed node " << parsed.c_str() << endl;
#endif
				}
				else
					endFlagFound = YES;
			}
			while (!endFlagFound);
			
		}
		else if (toParse == TTSymbol(WEBSOCKET_START_ATTRIBUTES)) {
			
			endFlagFound = NO;
			do {
				i++;
				parsed = kTTSymEmpty;
				if (answer[i].type() == kTypeSymbol)
					parsed = answer[i];
				
				// don't store the end flag
				if (parsed != TTSymbol(WEBSOCKET_END_ATTRIBUTES)) {
					
					returnedAttributes.append(parsed);
					
#ifdef TT_PROTOCOL_DEBUG	
					cout << "Parsed attribute " << parsed.c_str() << endl;
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

void WebSocketAnswerManager::AddDiscoverAllAnswer(TTSymbol from, TTAddress address, int timeOutInMs)
{
	TTString key = from.string();
    key += address.string();
    
    WebSocketAnswerPtr anAnswer = new WebSocketAnswer();
    anAnswer->setTimeOut(timeOutInMs);
    
    mDiscoverAllAnswers->append(TTSymbol(key), (TTPtr)anAnswer);
}

TTErr WebSocketAnswerManager::ReceiveDiscoverAllAnswer(TTSymbol from, TTAddress address, const TTValue& value, TTErr error)
{
    // TODO : implement it
    
    
	return kTTErrGeneric;
}

int WebSocketAnswerManager::CheckDiscoverAllAnswer(TTSymbol from, TTAddress address, TTValue& value)
{
	int                 state;
    TTValue             v;
	TTString            key;
    WebSocketAnswerPtr  anAnswer;
    TTErr               err;
    
    key = from.string();
    key += address.string();
	
	// Looking for a MinuitDiscoverAllAnswer object at the given address
	err = mDiscoverAllAnswers->lookup(TTSymbol(key), v);
    
    if (!err) {
        anAnswer = WebSocketAnswerPtr((TTPtr)v[0]);
        
        // wait
        anAnswer->wait();
        
		state = anAnswer->getState();
		
		// if an answer is received
		if(state != NO_ANSWER)
		{
			// get the answer
			anAnswer->getAnswer(value);
			mDiscoverAllAnswers->remove(TTSymbol(key));
            delete anAnswer;
		}
		
		return state;
	}
	else
		return REQUEST_NOT_SENT;
}

TTErr WebSocketAnswerManager::ParseDiscoverAllAnswer(const TTValue& answer, TTNodePtr node)
{
	
	
	return kTTErrNone;
}

void WebSocketAnswerManager::AddGetAnswer(TTSymbol from, TTAddress address, int timeOutInMs)
{	
	TTString key = from.string();
    key += address.string();
    
    WebSocketAnswerPtr anAnswer = new WebSocketAnswer();
    anAnswer->setTimeOut(timeOutInMs);
    
    mGetAnswers->append(TTSymbol(key), (TTPtr)anAnswer);
}

TTErr WebSocketAnswerManager::ReceiveGetAnswer(TTSymbol from, TTAddress address, const TTValue& value, TTErr error)
{
    TTValue             v;
	TTString            key;
    WebSocketAnswerPtr  anAnswer;
    TTErr               err;
    
    key = from.string();
    key += address.string();
    
	err = mGetAnswers->lookup(TTSymbol(key), v);
    
    if (!err) {
        anAnswer = WebSocketAnswerPtr((TTPtr)v[0]);
	
		if (anAnswer->getState() != TIMEOUT_EXCEEDED) {
			anAnswer->setAnswer(value, error);
			return kTTErrNone;
		}
	}
	else
		cout << "WebSocketAnswerManager::ReceiveGetAnswer can't find a request at " << key << endl;
	
	return kTTErrGeneric;
}

int WebSocketAnswerManager::CheckGetAnswer(TTSymbol from, TTAddress address, TTValue& value)
{
    int                 state;
    TTValue             v;
	TTString            key;
    WebSocketAnswerPtr  anAnswer;
    TTErr               err;
    
    key = from.string();
    key += address.string();
	
	// Looking for a WebSocketDiscoverAnswer object at the given address
	err = mGetAnswers->lookup(TTSymbol(key), v);
    
    if (!err) {
        anAnswer = WebSocketAnswerPtr((TTPtr)v[0]);
        
        // wait
        anAnswer->wait();
        
		state = anAnswer->getState();
		
		// if an answer is received
		if(state != NO_ANSWER)
		{
			// get the answer
			anAnswer->getAnswer(value);
			mGetAnswers->remove(TTSymbol(key));
            delete anAnswer;
		}
		
		return state;
	}
	else
		return REQUEST_NOT_SENT;
}