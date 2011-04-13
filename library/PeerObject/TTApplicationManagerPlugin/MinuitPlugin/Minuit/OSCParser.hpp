#ifndef OSCPARSER_HPP_
#define OSCPARSER_HPP_

#include <string>
#include <vector>

#include "../../NetworkCommunication/osc/OscTypes.h"

class OSCParser
{
private:
	std::string m_address;
	std::vector<std::string> m_arg;
	std::vector<char> m_type;
	
public:
	OSCParser();
	OSCParser(std::string OSCMessageToParse);
	virtual ~OSCParser();
	
	std::string getAddress();
	
	unsigned int getNbArg();
	
	std::string getArg(unsigned int i);
	char getType(unsigned int i);
};

#endif /*OSCPARSER_HPP_*/
