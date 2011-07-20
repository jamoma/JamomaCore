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
	
	mAnswer = kTTValNONE;
	mState = NO_ANSWER;
	mLaunchTimeInMs = (tv.tv_sec * 1000000L + tv.tv_usec)/1000;
	mTimeOutInMs = NO_TIMEOUT;
}

MinuitAnswer::~MinuitAnswer()
{
	;
}

void MinuitAnswer::setAnswer(const TTValue& value)
{
	mAnswer = value;	
	mState = ANSWER_RECEIVED;
}

void MinuitAnswer::getAnswer(TTValue& value)
{
	value = mAnswer;
}

void MinuitAnswer::setTimeOut(int timeout) {
	mTimeOutInMs = timeout;
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

