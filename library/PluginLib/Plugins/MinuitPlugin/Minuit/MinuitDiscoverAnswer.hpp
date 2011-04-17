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

	void waitDiscoverAnswer(TTValue& returnednodes, TTValue& returnedleaves, TTValue& returnedAttributes);

private:
	int m_state;

	long long m_launchTimeInMs;

	int m_timeOutInMs;

	std::string m_ip;
	unsigned int m_port;

//	std::vector<std::string> m_nodes;
//	std::vector<std::string> m_leaves;
//	std::vector<std::string> m_attributes;
	TTValue m_nodes;
	TTValue m_leaves;
	TTValue m_attributes;
};

#endif /*MINUITDISCOVERANSWER_HPP_*/
