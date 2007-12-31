/* 
 * TTBlue Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSymbol.h"



/****************************************************************************************************/

TTSymbol::TTSymbol(char *newString)
{
	strcpy(string, name);
	id = 0; // TODO: use a hash function to generate this from the string -- or is it just an index?
}


TTSymbol::~TTSymbol()
{
	;
}


const char* TTSymbol::getString()
{
	;
}


const TTUInt32 TTSymbol::getId()
{
	;
}


TTBoolean TTSymbol::compare(TTString &anotherString)
{
	;
}


/****************************************************************************************************/
// Shared (static) Methods

const TTUInt32 TTSymbol::lookup(char *string)
{
	// 1. Hash the string
	// 2. Look for an existing string with this id in the table
	// 3. If it doesn't exist, then create it
	// 4. Return the id
	return 0;
}

