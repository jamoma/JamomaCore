/* 
 * TTBlue Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSymbol.h"

TTSymbol**	TTSymbol::symbolTable = NULL;
TTUInt32	TTSymbol::symbolTableSize = 0;


/****************************************************************************************************/

TTSymbol::TTSymbol()
{
	init("");
}

TTSymbol::TTSymbol(TTString newString)
{
	init(newString);
}


TTSymbol::~TTSymbol()
{
	//should free this to prevent memory leaks, but is it safe to do so?
	// maybe we need to reference count...
	//free(string);
}


// Copy Constructor
TTSymbol::TTSymbol(const TTSymbol& oldSymbol)
{
	id = oldSymbol.id;
	strcpy(string, oldSymbol.string);
}


void TTSymbol::init(TTString newString)
{
	TTSymbol	*existingSymbol = NULL;
	TTUInt32	i;

	for(i=0; i<symbolTableSize; i++){
		if(!strcmp(newString, symbolTable[i]->getString())){
			existingSymbol = symbolTable[i];	// we found it
			break;
		}
	}

	string = (char*)malloc(sizeof(char) * (strlen(newString)+1));
	strcpy(string, newString);

	if(existingSymbol)
		id = existingSymbol->id;
	else{
		id = symbolTableSize;
		
		if(symbolTableSize)
			symbolTable = (TTSymbol**)realloc(symbolTable, sizeof(TTSymbol*) * (symbolTableSize + 1));
		else
			symbolTable = (TTSymbol**)malloc(sizeof(TTSymbol*));
		symbolTableSize++;
		
		symbolTable[symbolTableSize-1] = this;
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


/****************************************************************************************************/
// Shared (static) Methods

const TTSymbol* TTSymbol::lookup(const TTString string)
{
	TTUInt32	i;

	// NOTE: This lookup is also done up in the constructor
	// That allows us to call methods expecting a TTSymbol by
	// passing them simple c strings.	
	for(i=0; i<symbolTableSize; i++){
		if(!strcmp(string, symbolTable[i]->getString())){
			return symbolTable[i];	// we found it
		}
	}
	
	// If we are here then the symbol wasn't found, so we need to create it
	return new TTSymbol(string);
}

