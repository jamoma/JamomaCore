#include "MinuitDiscoverAnswer.hpp"
#include "MinuitInclude.hpp"

#ifdef TT_PLATFORM_WIN
	#include "Time2.hpp"
#endif

#include <sstream>
#include <iostream>

using namespace std;

MinuitDiscoverAnswer::MinuitDiscoverAnswer()
{
	m_state = NO_ANSWER;

	struct timeval tv;

#ifdef TT_PLATFORM_WIN
	Time2 time2;
	time2.gettimeofday(&tv, NULL);
#else
	struct timezone tz;
	gettimeofday(&tv, &tz);
#endif

	m_launchTimeInMs = (tv.tv_sec * 1000000L + tv.tv_usec)/1000;
	m_timeOutInMs = NO_TIMEOUT;
}

MinuitDiscoverAnswer::~MinuitDiscoverAnswer()
{
	;
}

int MinuitDiscoverAnswer::getState()
{
	if ((m_state == NO_ANSWER) && (m_timeOutInMs != NO_TIMEOUT)) {

		struct timeval tv;

#ifdef TT_PLATFORM_WIN
		Time2 time2;
		time2.gettimeofday(&tv, NULL);
#else
		struct timezone tz;
		gettimeofday(&tv, &tz);
#endif

		long long dt = 0;

		dt = (tv.tv_sec * 1000000L + tv.tv_usec)/1000 - m_launchTimeInMs;

		if (dt > m_timeOutInMs) {
			m_state = TIMEOUT_EXCEEDED;
		}
	}
	return m_state;
}

void MinuitDiscoverAnswer::setTimeOut(int timeout) {
	m_timeOutInMs = timeout;
}

TTString MinuitDiscoverAnswer::getIp()
{
	return m_ip;
}

void MinuitDiscoverAnswer::setIp(TTString ip)
{
	m_ip = ip;
}

unsigned int MinuitDiscoverAnswer::getPort()
{
	return m_port;
}

void MinuitDiscoverAnswer::setPort(unsigned int port)
{
	m_port = port;
}

void MinuitDiscoverAnswer::parseMinuitDiscoverAnswer(const osc::ReceivedMessage&m)
{
	bool find_end;
	osc::ReceivedMessage::const_iterator arg = m.ArgumentsBegin();
	
	// don't parse sender?operation /whereTo
	arg++;
	
	// parse something like : nodes={ some nodes } leaves={ some leaves } attributes={ somes attributes }
	while(arg != m.ArgumentsEnd()){
		
		TTString currentString = arg->AsString();
		
		// parse nodes
		if(currentString.compare(MINUIT_START_NODES) == 0){

			do{
				arg++;
				std::ostringstream parsed;
				if (arg->IsChar()) {
					parsed << arg->AsChar();
				} else if (arg->IsInt32()) {
					parsed << arg->AsInt32();
				} else if (arg->IsFloat()) {
					parsed << arg->AsFloat();
				}  else if (arg->IsString()) {
					parsed << arg->AsString();
				}
				
				currentString = parsed.str();
				// don't store the end flag
				find_end = currentString.compare(MINUIT_END_NODES) == 0;
				if(!find_end) {
#ifdef TT_PLUGIN_DEBUG
					cout << "Parsed nodes " << parsed.str() << endl;
#endif
					m_nodes.append(TT(currentString));
				}
			}
			while(!find_end);
			
		}
		else if(currentString.compare(MINUIT_START_TYPES) == 0){
			
			do{
				arg++;
				std::ostringstream parsed;
				if (arg->IsChar()) {
					parsed << arg->AsChar();
				} else if (arg->IsInt32()) {
					parsed << arg->AsInt32();
				} else if (arg->IsFloat()) {
					parsed << arg->AsFloat();
				}  else if (arg->IsString()) {
					parsed << arg->AsString();
				}
				
				currentString = parsed.str();
				// don't store the end flag
				find_end = currentString.compare(MINUIT_END_TYPES) == 0;
				if(!find_end) {
#ifdef TT_PLUGIN_DEBUG
					cout << "Parsed leaves " << parsed.str() << endl;
#endif
					m_leaves.append(TT(currentString));
				}
			}
			while(!find_end);
			
		}
		else if(currentString.compare(MINUIT_START_ATTRIBUTES) == 0){

			do{
				arg++;
				std::ostringstream parsed;
				if (arg->IsChar()) {
					parsed << arg->AsChar();
				} else if (arg->IsInt32()) {
					parsed << arg->AsInt32();
				} else if (arg->IsFloat()) {
					parsed << arg->AsFloat();
				}  else if (arg->IsString()) {
					parsed << arg->AsString();
				}
				
				currentString = parsed.str();
				// don't store the end flag
				find_end = currentString.compare(MINUIT_END_ATTRIBUTES) == 0;
				if(!find_end) {
#ifdef TT_PLUGIN_DEBUG
					cout << "Parsed attributes " << parsed.str() << endl;
#endif
					m_attributes.append(TT(currentString));
				}
			}
			while(!find_end);
			
		}
		else
			arg++;
	}

	m_state = ANSWER_RECEIVED;
}

void MinuitDiscoverAnswer::waitDiscoverAnswer(TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
{
	returnedNodes = m_nodes;
	returnedLeaves = m_leaves;
	returnedAttributes = m_attributes;
}
