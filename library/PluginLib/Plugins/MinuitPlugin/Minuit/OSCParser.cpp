#include "OSCParser.hpp"
#include "OSCFunctions.hpp"

#include <sstream>
#include <iterator>

#include <stdexcept>

OSCParser::OSCParser()
{
	
}

OSCParser::OSCParser(std::string OSCMessageToParse)
{
	using namespace std;

	vector<string> strList;

	istringstream iss( OSCMessageToParse );
	copy(
			istream_iterator<string>( iss ),
			istream_iterator<string>(),
			back_inserter( strList ) );

	if (strList.size() > 0) {
		m_address = strList.at(0);

		for (unsigned int i = 1; i < strList.size(); ++i) {
			string currentString = strList.at(i);
			if (isInt(currentString)) {
				m_arg.push_back(currentString);
				m_type.push_back(osc::INT32_TYPE_TAG);
			} else if (isFloat(currentString)) {
				m_arg.push_back(currentString);
				m_type.push_back(osc::FLOAT_TYPE_TAG);
			} else {
				if (currentString.data()[0] == '"') {
					string symbolToSend = currentString.substr(1, currentString.size());

					while (currentString.data()[currentString.size()-1] != '"' && (i != (strList.size() - 1))) {
						i++;
						currentString = strList.at(i);

						symbolToSend += " ";
						symbolToSend += currentString;
					}

					if (i == (strList.size() - 1)) {
						m_arg.push_back(symbolToSend);
						m_type.push_back(osc::SYMBOL_TYPE_TAG);
					} else {
						m_arg.push_back(symbolToSend.substr(0, symbolToSend.size() - 1));
						m_type.push_back(osc::SYMBOL_TYPE_TAG);
					}


				} else {
					m_arg.push_back(currentString);
					m_type.push_back(osc::STRING_TYPE_TAG);
				}
			}
		}
	}
}

OSCParser::~OSCParser()
{
}

std::string OSCParser::getAddress() 
{
	return m_address;
}

unsigned int OSCParser::getNbArg()
{
	return m_arg.size();
}

std::string OSCParser::getArg(unsigned int i)
{
	if (i > m_arg.size()) {
		throw std::out_of_range("ask for an argument in OSCParser which do not exist");
	}
	return m_arg[i];
}

char OSCParser::getType(unsigned int i)
{
	if (i > m_arg.size()) {
		throw std::out_of_range("ask for the type of an argument in OSCParser which do not exist");
	}
	return m_type[i];
}
