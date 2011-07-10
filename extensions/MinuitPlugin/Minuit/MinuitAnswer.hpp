#ifndef MINUITANSWER_HPP_
#define MINUITANSWER_HPP_

#include "MinuitInclude.hpp"

class MinuitAnswer
{
	
private:
	TTValue		mAnswer;
	
	int			mState;
	long long	mLaunchTimeInMs;
	int			mTimeOutInMs;
	
public:
	MinuitAnswer();
	virtual ~MinuitAnswer();

	void		setAnswer(const TTValue& value);
	void		getAnswer(TTValue& value);
	
	void		setTimeOut(int timeout);

	int			getState();
};

typedef MinuitAnswer* MinuitAnswerPtr;

#endif /*MINUITANSWER_HPP_*/
