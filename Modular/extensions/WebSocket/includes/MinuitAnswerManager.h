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


#ifndef MINUIT_ANSWER_MANAGER
#define MINUIT_ANSWER_MANAGER

#include "WebSocket.h"
#include "WebSocketInclude.h"
#include "MinuitAnswer.h"

#include <string>
#include <vector>

class WebSocket;
typedef WebSocket* WebSocketPtr;

class MinuitAnswerManager {
	
private:
	
	WebSocketPtr   mProtocol;
	
	TTHashPtr   mDiscoverAnswers;
    TTHashPtr   mDiscoverAllAnswers;
	TTHashPtr   mGetAnswers;
	
public:

	MinuitAnswerManager(WebSocketPtr aMinuitProtocol);
	virtual ~MinuitAnswerManager();
	
	void	AddDiscoverAnswer(TTSymbol from, TTAddress address, int timeOutInMs = DEFAULT_TIMEOUT);
	TTErr	ReceiveDiscoverAnswer(TTSymbol from, TTAddress address, const TTValue& value, TTErr error = kTTErrNone);
	int		CheckDiscoverAnswer(TTSymbol from, TTAddress address, TTValue& value);
	TTErr	ParseDiscoverAnswer(const TTValue& answer, TTSymbol& returnedType, TTValue& returnedChildren, TTValue& returnedAttributes);
				
    void	AddDiscoverAllAnswer(TTSymbol from, TTAddress address, int timeOutInMs = DEFAULT_TIMEOUT);
    TTErr	ReceiveDiscoverAllAnswer(TTSymbol from, TTAddress address, const TTValue& value, TTErr error = kTTErrNone);
    int		CheckDiscoverAllAnswer(TTSymbol from, TTAddress address, TTValue& value);
	TTErr	ParseDiscoverAllAnswer(const TTValue& answer, TTNodePtr node);
    
	void	AddGetAnswer(TTSymbol from, TTAddress address, int timeOutInMs = DEFAULT_TIMEOUT);
	TTErr	ReceiveGetAnswer(TTSymbol from, TTAddress address, const TTValue& value, TTErr error = kTTErrNone);
	int		CheckGetAnswer(TTSymbol from, TTAddress address, TTValue& value);
};
typedef MinuitAnswerManager* MinuitAnswerManagerPtr;

#endif // MINUIT_ANSWER_MANAGER
