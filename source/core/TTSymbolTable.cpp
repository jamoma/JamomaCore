/* 
 * TTBlue Class that maintains a table of symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSymbolTable.h"


/****************************************************************************************************/

TTSymbolTable::TTSymbolTable()
	: symbolTable(NULL), symbolTableSize(0)
{
	// always start off with 1 symbol -- the empty string
	symbolTable = (TTSymbol**)malloc(sizeof(TTSymbol*));
	symbolTableSize++;
	symbolTable[symbolTableSize-1] = new TTSymbol("", 0);
}


TTSymbolTable::~TTSymbolTable()
{
	;
}


const TTSymbol* TTSymbolTable::lookup(const TTString string)
{
	TTUInt32	i;
	TTSymbol	*newSymbol;

	for(i=0; i<symbolTableSize; i++){
		if(!strcmp(string, symbolTable[i]->getString())){
			return symbolTable[i];	// we found it
		}
	}
	
	// If we are here then the symbol wasn't found, so we need to create it
	newSymbol = new TTSymbol(string, symbolTableSize);
	symbolTable = (TTSymbol**)realloc(symbolTable, sizeof(TTSymbol*) * (symbolTableSize + 1));
	symbolTableSize++;
	symbolTable[symbolTableSize-1] = newSymbol;
	return newSymbol;
}

