/* 
	Jamoma Class for representing strings
	Copyright © 2012, Timothy Place
	
	License: This code is licensed under the terms of the "New BSD License"
	http://creativecommons.org/licenses/BSD/
 */

#include "TTString.h"
#include "MersenneTwister.h"


std::string TTGenerateRandomString()
{
	MTRand			twister;
	unsigned int	i = (unsigned int)twister.randInt();
	char			s[16];
	TTString		str;
		
	snprintf(s, 16, "j%u", i);
	s[15] = 0;
	str = s;
	return str;
}


// TODO: These conversions seem a bit misguided, but are being maintained momentarily for backward compatibility.
// Should be replaced with standard calls like std::stoi() and friends.

TTBoolean TTStringToTTInt32(const std::string s, TTInt32& convertedInt)
{
	char * pEnd;
	
	convertedInt = (TTInt32)strtol(s.c_str(), &pEnd, 10);
	return *pEnd == 0;
}


TTBoolean TTStringToTTUInt32(const std::string s,TTUInt32& convertedUInt)
{
	char * pEnd;
	
	convertedUInt = (TTUInt32)strtoul(s.c_str(), &pEnd, 10);
	
	// is the last letter is a 'u' ?
	return *pEnd == 'u' && pEnd == (s.c_str() + s.length() - 1);
}

/*	note : isTTFloat32 works only because the TTInt32 case is matched before
 see in TTValue::fromString method
 */
TTBoolean TTStringToTTFloat32(const std::string s, TTFloat32& convertedFloat)
{
	char * pEnd;
	
	convertedFloat = strtod(s.c_str(), &pEnd);
	return *pEnd == 0;
}
