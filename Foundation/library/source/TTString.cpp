/* 
	Jamoma Class for representing strings
	Copyright © 2012, Timothy Place
	
	License: This code is licensed under the terms of the "New BSD License"
	http://creativecommons.org/licenses/BSD/
 */

#include "TTString.h"
#include "MersenneTwister.h"


void TTString::random()
{
	MTRand			twister;
	unsigned int	i = twister.randInt();
	char			s[16];
		
	snprintf(s, 16, "j%u", i);
	s[15] = 0;
	(*this) = s;
}
