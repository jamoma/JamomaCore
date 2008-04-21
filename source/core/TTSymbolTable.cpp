/* 
 * TTBlue Class that maintains a table of symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSymbolTable.h"
#include "TTMutex.h"

static TTMutex*				sMutex = NULL;
TTBLUE_DLL TTSymbolTable*	ttSymbolTable = NULL;

/****************************************************************************************************/

TTSymbolTable::TTSymbolTable()
	: symbolTable(NULL), symbolTableLength(0), symbolTableSize(0)
{
	if(!sMutex)
		sMutex = new TTMutex(true);
	symbolTableSize = 1024;
	symbolTable = (TTSymbol**)malloc(sizeof(TTSymbol*) * (symbolTableSize + 1));
	// always start off with 1 symbol -- the empty string
	symbolTable[0] = new TTSymbol("", 0);
	symbolTableLength++;
}


TTSymbolTable::~TTSymbolTable()
{
	for(TTUInt32 i = 0; i < symbolTableLength; i++)
		delete symbolTable[i];
	
	free(symbolTable);
	// TODO: we should reference count symbol tables and then free the mutex here, yes?
}


TTSymbol& TTSymbolTable::lookup(const char* string)
{
	TTUInt32	i;
	TTSymbol	*newSymbol;

	sMutex->lock();
	for(i=0; i<symbolTableLength; i++){
		if(!strcmp(string, symbolTable[i]->getString())){
			sMutex->unlock();
			return *symbolTable[i];	// we found it
		}
	}

	// If we are here then the symbol wasn't found, so we need to create it
	newSymbol = new TTSymbol(string, symbolTableLength);
	if(symbolTableLength == symbolTableSize){
		symbolTableSize += 1024;
		symbolTable = (TTSymbol**)realloc(symbolTable, sizeof(TTSymbol*) * (symbolTableSize + 1));
	}
	symbolTable[symbolTableLength] = newSymbol;
	symbolTableLength++;
	sMutex->unlock();
	return *newSymbol;
}

