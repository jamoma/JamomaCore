#include "OSCFunctions.hpp"
#include <sstream>

bool isFloat( const TTString & str )
{
    std::istringstream iss( str );

    float tmp;

    return ( iss >> tmp ) && ( iss.eof() );
}

bool isInt( const TTString & str )
{
    std::istringstream iss( str );

    int tmp;

    return ( iss >> tmp ) && ( iss.eof() );
}

int toInt( const TTString & str )
{
	 std::istringstream iss(str);

	 int result;

	 iss >> result;

	 return result;
}

float toFloat( const TTString & str )
{
	std::istringstream iss(str);

	float result;

	iss >> result;

	return result;
}
