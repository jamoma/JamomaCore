#ifndef MINUITDISCOVERANSWER_HPP_
#define MINUITDISCOVERANSWER_HPP_

#include "TTFoundationAPI.h"

#include "MinuitInclude.hpp"
#include "ReceiveOSCThread.hpp"

#include <vector>
#include <string>

class MinuitDiscoverAnswer
{
public:
	MinuitDiscoverAnswer();
	virtual ~MinuitDiscoverAnswer();

	int getState();
	void setTimeOut(int timeout);

	std::string getIp();
	void setIp(std::string ip);

	unsigned int getPort();
	void setPort(unsigned int port);

	void parseMinuitDiscoverAnswer(const osc::ReceivedMessage&m);

	void waitDiscoverAnswer(TTValue& returnedChildrenNames, TTValue& returnedChildrenTypes, TTValue& returnedAttributes);

private:
	int m_state;

	long long m_launchTimeInMs;

	int m_timeOutInMs;

	std::string m_ip;
	unsigned int m_port;

	TTValue m_names;
	TTValue m_types;
	TTValue m_attributes;
};

#endif /*MINUITDISCOVERANSWER_HPP_*/
