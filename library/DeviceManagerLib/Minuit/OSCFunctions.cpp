#include "OSCFunctions.hpp"
#include <sstream>

bool isFloat( const std::string & str )
{
    std::istringstream iss( str );

    float tmp;

    return ( iss >> tmp ) && ( iss.eof() );
}

bool isInt( const std::string & str )
{
    std::istringstream iss( str );

    int tmp;

    return ( iss >> tmp ) && ( iss.eof() );
}

int toInt( const std::string & str )
{
	 std::istringstream iss(str);

	 int result;

	 iss >> result;

	 return result;
}

float toFloat( const std::string & str )
{
	std::istringstream iss(str);

	float result;

	iss >> result;

	return result;
}
