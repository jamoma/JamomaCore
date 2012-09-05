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

TTSymbol::TTSymbol(const char* newString, TTPtrSizedInt newSymbolTableId, TTInt32 newSymbolId)
{
	init(newString, newSymbolTableId, newSymbolId);
}


TTSymbol::~TTSymbol()
{
	delete[] mCString;
}


// Copy Constructor
TTSymbol::TTSymbol(const TTSymbol& oldSymbol)
{
	mSymbolId = oldSymbol.mSymbolId;
	mSymbolTableId = oldSymbol.mSymbolTableId;
	mCString = oldSymbol.mCString;
}


void TTSymbol::init(const char* newString, TTPtrSizedInt newSymbolTableId, TTInt32 newSymbolId)
{
	TTUInt32 len = strlen(newString)+1;
	
	mSymbolId = newSymbolId;
	mSymbolTableId = newSymbolTableId;
	mCString = new char[len];
	strncpy(mCString, newString, len);
}


/*const*//* TTUInt32 TTSymbol::getId()
{
	return id;
}
*/



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

