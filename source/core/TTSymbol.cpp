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
	: string(NULL)//, inTable(false)
{
	init("", -1);
}

TTSymbol::TTSymbol(const char* newString)
	: string(NULL)//, inTable(false)
{
	init(newString, -1);
}


TTSymbol::TTSymbol(const char* newString, TTInt32 newId)
	: string(NULL)//, inTable(false)
{
	init(newString, newId);
}


TTSymbol::~TTSymbol()
{
	if(string){
		free(string);
		string = NULL;
	}
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
		existingSymbol = ttSymbolTable.lookup(newString);
		id = existingSymbol->id;
	}
	else{	// This symbol is being added to the symbol table with the given id
		id = newId;
		//inTable = true;
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
