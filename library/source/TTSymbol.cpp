/* 
 * TTBlue Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSymbol.h"
#include "TTSymbolTable.h"


/****************************************************************************************************/

TTSymbol::TTSymbol() {;}

TTSymbol::TTSymbol(const TTString& newString, TTInt32 newId)
{
	init(newString, newId);
}


TTSymbol::~TTSymbol()
{
	;
}


// Copy Constructor
TTSymbol::TTSymbol(const TTSymbol& oldSymbol)
{
	id = oldSymbol.id;
	theString = oldSymbol.theString;
}


void TTSymbol::init(const TTString& newString, TTInt32 newId)
{
	theString = newString;
	id = newId;
}


#ifdef LIVE_DANGEROUSLY
const TTString TTSymbol::getString()
{
	return theString;
}
#endif


const char* TTSymbol::getCString()
{
	return theString.c_str();
}


/*const*/ TTUInt32 TTSymbol::getId()
{
	return id;
}


#include "MersenneTwister.h"

TTSymbol* TTSymbol::random()
{
	MTRand			twister;
	unsigned int	i = twister.randInt();
	char			s[16];
		
	snprintf(s, 16, "j%u", i);
	s[15] = 0;
	return TT(s);
}
