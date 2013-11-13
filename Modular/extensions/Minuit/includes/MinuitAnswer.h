/** @file
 *
 * @ingroup modularMinuit
 *
 * @brief Minuit Answer
 *
 * @details
 *
 * @authors Laurent Garnier, Théo de la Hogue
 *
 * @copyright © 2011, Laurent Garnier, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef MINUITANSWER_HPP_
#define MINUITANSWER_HPP_

#include "MinuitInclude.h"

class MinuitAnswer
{
	TTThreadPtr mThread;              // a thread used to wait an answer
    
private:
	TTValue		mAnswer;
	
	int			mState;
	long long	mLaunchTimeInMs;
	int			mTimeOutInMs;
	
public:
	MinuitAnswer();
	virtual     ~MinuitAnswer();

	void		setAnswer(const TTValue& value, TTErr error = kTTErrNone);
	void		getAnswer(TTValue& value);
	
	void		setTimeOut(int timeout);
    
    void        wait();

	int			getState();
};

typedef MinuitAnswer* MinuitAnswerPtr;

#endif /*MINUITANSWER_HPP_*/
