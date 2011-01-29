#ifndef MINUITGETANSWER_HPP_
#define MINUITGETANSWER_HPP_

#include "MinuitInclude.hpp"
#include "ReceiveOSCThread.hpp"

#include "TTModular.h"

#include <string>

class MinuitGetAnswer
{
public:
	MinuitGetAnswer();
	virtual ~MinuitGetAnswer();

	void setTimeOut(int timeout);

	int getState();

	void parseMinuitGetAnswer(const osc::ReceivedMessage&m);

	TTValue waitGetAnswer(bool withAddress);

private:
	int m_state;
	long long m_launchTimeInMs;

	int m_timeOutInMs;

//	std::string m_getStringWithAddress;
//	std::string m_getStringWithoutAddress;
	TTValue	m_getTTValueWithAddress;
	TTValue m_getTTValueWithoutAddress;
};

#endif /*MINUITGETANSWER_HPP_*/
