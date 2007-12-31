/* 
 * TTBlue Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSymbol.h"

TTSymbol*	TTSymbol::symbolTable = NULL;
TTUInt32	TTSymbol::symbolTableSize = 0;


/****************************************************************************************************/

TTSymbol::TTSymbol(TTString newString)
{
	strcpy(string, name);
	id = symbolTableSize;
	
	if(symbolTableSize)
		symbolTable = realloc(symbolTable, sizeof(TTSymbol) * (symbolTableSize + 1));
	else
		symbolTable = (TTString*)malloc(sizeof(TTSymbol));
	symbolTableSize++;
	
	symbolTable[symbolTableSize-1] = this;	
}


TTSymbol::~TTSymbol()
{
	;
}


const TTString TTSymbol::getString()
{
	return string;
}


const TTUInt32 TTSymbol::getId()
{
	return id;
}


TTBoolean TTSymbol::compare(TTSymbol &anotherString)
{
	;	// TODO: implement this
}


/****************************************************************************************************/
// Shared (static) Methods

const TTUInt32 TTSymbol::lookup(TTString string)
{
	TTUInt32	i;
	TTSymbol	*aSymbol;
	
	for(i=0; i<symbolTableSize; i++){
		if(!strcmp(string, symbolTable[i]->getString())){
			return i;	// we found it, so return the id
		}
	}
	
	// If we are here then the symbol wasn't found, so we need to create it
	aSymbol = new TTSymbol(string);
	return aSymbol->getId();
}

