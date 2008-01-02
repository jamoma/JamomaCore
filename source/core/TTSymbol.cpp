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

TTSymbol::TTSymbol(TTString newString)
{
	strcpy(string, newString);
	id = symbolTableSize;
	
	if(symbolTableSize)
		symbolTable = (TTSymbol**)realloc(symbolTable, sizeof(TTSymbol*) * (symbolTableSize + 1));
	else
		symbolTable = (TTSymbol**)malloc(sizeof(TTSymbol*));
	symbolTableSize++;
	
	symbolTable[symbolTableSize-1] = this;
}


TTSymbol::~TTSymbol()
{
	;
}


// Copy Constructor
TTSymbol::TTSymbol(const TTSymbol& oldSymbol)
{
	id = oldSymbol.id;
	strcpy(string, oldSymbol.string);
}


const TTString TTSymbol::getString()
{
	return string;
}


const TTUInt32 TTSymbol::getId()
{
	return id;
}


TTBoolean TTSymbol::compare(TTSymbol &anotherSymbol)
{
	return kTTErrNone;	// TODO: implement this
}

/*
// make sure this is a friend so that it can access the private members of the other atom
//friend bool TTValue::operator == (const TTValue &a1, const TTValue &a2)
friend bool TTSymbol::operator == (const TTSymbol& symbol1, const TTSymbol& symbol2)
{
	if(symbol1.id == symbol2.id)
		return true;
	else
		return false;
}
*/


/****************************************************************************************************/
// Shared (static) Methods

const TTSymbol* TTSymbol::lookup(const TTString string)
{
	TTUInt32	i;
	
	for(i=0; i<symbolTableSize; i++){
		if(!strcmp(string, symbolTable[i]->getString())){
			return symbolTable[i];	// we found it
		}
	}
	
	// If we are here then the symbol wasn't found, so we need to create it
	return new TTSymbol(string);
}

