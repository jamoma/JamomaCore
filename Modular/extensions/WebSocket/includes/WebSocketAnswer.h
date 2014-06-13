/** @file
 *
 * @ingroup modularWebSocket
 *
 * @brief WebSocket Answer
 *
 * @details
 *
 * @authors Laurent Garnier, Théo de la Hogue
 *
 * @copyright © 2011, Laurent Garnier, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef WEBSOCKETANSWER_HPP_
#define WEBSOCKETANSWER_HPP_

#include "WebSocketInclude.h"

class WebSocketAnswer
{
	TTThreadPtr mThread;              // a thread used to wait an answer
    
private:
	TTValue		mAnswer;
	
	int			mState;
	long long	mLaunchTimeInMs;
	int			mTimeOutInMs;
	
public:
	WebSocketAnswer();
	virtual     ~WebSocketAnswer();

	void		setAnswer(const TTValue& value, TTErr error = kTTErrNone);
	void		getAnswer(TTValue& value);
	
	void		setTimeOut(int timeout);
    
    void        wait();

	int			getState();
};

typedef WebSocketAnswer* WebSocketAnswerPtr;

#endif /*WEBSOCKETANSWER_HPP_*/
