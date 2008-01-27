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
	: string(NULL)
{
	init("", -1);
}

TTSymbol::TTSymbol(TTString newString)
	: string(NULL)
{
	init(newString, -1);
}


TTSymbol::TTSymbol(TTString newString, TTInt32 newId)
	: string(NULL)
{
	init(newString, newId);
}


TTSymbol::~TTSymbol()
{
	//should free this to prevent memory leaks, but is it safe to do so?
	// maybe we need to reference count...
	free(string);
}


// Copy Constructor
TTSymbol::TTSymbol(const TTSymbol& oldSymbol)
{
	id = oldSymbol.id;
	strcpy(string, oldSymbol.string);
}


void TTSymbol::init(const char* newString, TTInt32 newId)
{
	const TTSymbol	*existingSymbol = NULL;

	// 1. Copy the string
	if(string)
		free(string);
	string = (char*)malloc(sizeof(char) * (strlen(newString)+1));
	strcpy(string, newString);

	// 2. Look for this symbol in the symbol table (it should already exist)
	if(newId < 0){
		existingSymbol = ttSymbolTable.lookup((TTString)newString);
		id = existingSymbol->id;
	}
	else	// This symbol is being added to the symbol table with the given id
		id = newId;
}


const TTString TTSymbol::getString()
{
	return string;
}


const TTUInt32 TTSymbol::getId()
{
	return id;
}
