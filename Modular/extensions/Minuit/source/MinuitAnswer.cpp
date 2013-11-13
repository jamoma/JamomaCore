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

#include "MinuitAnswer.h"

#ifdef TT_PLATFORM_WIN
	#include "Time2.hpp"
#endif

MinuitAnswer::MinuitAnswer()
{
	struct timeval tv;

#ifdef TT_PLATFORM_WIN
	Time2 time2;
	time2.gettimeofday(&tv, NULL);
#else
	struct timezone tz;
	gettimeofday(&tv, &tz);
#endif
	
    mThread = new TTThread(NULL, NULL);
	mAnswer = kTTValNONE;
	mState = NO_ANSWER;
	mLaunchTimeInMs = (tv.tv_sec * 1000000L + tv.tv_usec)/1000;
	mTimeOutInMs = NO_TIMEOUT;
}

MinuitAnswer::~MinuitAnswer()
{
    if (mThread)
		mThread->wait();
    
    delete mThread;
}

void MinuitAnswer::setAnswer(const TTValue& value, TTErr error)
{
	mAnswer = value;
	
    if (!error)
        mState = ANSWER_RECEIVED;
    else
        mState = ANSWER_ERROR;
}

void MinuitAnswer::getAnswer(TTValue& value)
{
	value = mAnswer;
}

void MinuitAnswer::setTimeOut(int timeout) {
	mTimeOutInMs = timeout;
}

void MinuitAnswer::wait()
{
    if (mState == NO_ANSWER)
        mThread->sleep(1);
}

int MinuitAnswer::getState()
{
	if ((mState == NO_ANSWER) && (mTimeOutInMs != NO_TIMEOUT)) {
		struct timeval tv;

#ifdef TT_PLATFORM_WIN
		Time2 time2;
		time2.gettimeofday(&tv, NULL);
#else
		struct timezone tz;
		gettimeofday(&tv, &tz);
#endif

		long long dt = 0;

		dt = (tv.tv_sec * 1000000L + tv.tv_usec)/1000 - mLaunchTimeInMs;

		if (dt > mTimeOutInMs) {
			mState = TIMEOUT_EXCEEDED;
		}
	}
	return mState;
}

