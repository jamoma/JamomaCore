/* 
 * TTBlue Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSymbol.h"
#include "TTSymbolTable.h"


/****************************************************************************************************/

TTSymbol::TTSymbol()
	: string(NULL), size(0)
{
	init("", -1);
}

TTSymbol::TTSymbol(const char* newString)
	: string(NULL), size(0)
{
	init(newString, -1);
}


TTSymbol::TTSymbol(const char* newString, TTInt32 newId)
	: string(NULL), size(0)
{
	init(newString, newId);
}


TTSymbol::~TTSymbol()
{
	// We can't free the string here, because it is referenced by other TTSymbols
	// only the when the symbol table itself is freed is it actually safe to free this string
	if(locallyOwned)
		delete [] string;
	string = NULL;
}


// Copy Constructor
TTSymbol::TTSymbol(const TTSymbol& oldSymbol)
{
	// deleting this causes problems, for example when creating a TTCrossfade object
	//if(locallyOwned)
	//	delete [] string;
	id = oldSymbol.id;
	size = oldSymbol.size;
	string = new char[size];
	memcpy(string, oldSymbol.string, size);
}


void TTSymbol::init(const char* newString, TTInt32 newId)
{
	const TTSymbol	*existingSymbol = NULL;

	// 1. Copy the string
	if(locallyOwned)
		delete [] string;
	locallyOwned = true;
	size = strlen(newString) + 1;
	string = new char[size];
	memcpy(string, newString, size-1);
	string[size-1] = 0;

	// 2. Look for this symbol in the symbol table (it should already exist)
	if(newId < 0){
		existingSymbol = ttSymbolTable->lookup(newString);
		id = existingSymbol->id;
	}
	else{	// This symbol is being added to the symbol table with the given id
		id = newId;
	}
}


const TTString TTSymbol::getString()
{
	return string;
}


const TTUInt32 TTSymbol::getId()
{
	return id;
}
