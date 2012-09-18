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

//TTSymbol::TTSymbol() {;}

TTSymbol::TTSymbol(const TTString& newString, TTPtrSizedInt newSymbolTableId, TTInt32 newSymbolId)
{
	init(newString, newSymbolTableId, newSymbolId);
}


TTSymbol::~TTSymbol()
{
	;
}


// Copy Constructor
TTSymbol::TTSymbol(const TTSymbol& oldSymbol)
{
	mSymbolId = oldSymbol.mSymbolId;
	mSymbolTableId = oldSymbol.mSymbolTableId;
	mString = oldSymbol.mString;
}


void TTSymbol::init(const TTString& newString, TTPtrSizedInt newSymbolTableId, TTInt32 newSymbolId)
{
	mSymbolId = newSymbolId;
	mSymbolTableId = newSymbolTableId;
	mString = newString;
}


/*const*//* TTUInt32 TTSymbol::getId()
{
	return id;
}
*/



#include "MersenneTwister.h"

TTSymbolRef TTSymbol::random()
{
#if 0
	MTRand			twister;
	unsigned int	i = twister.randInt();
	char			s[16];
		
	snprintf(s, 16, "j%u", i);
	s[15] = 0;
#else
	TTString s;
	
	s.random();
#endif
	return TT(s);
}

