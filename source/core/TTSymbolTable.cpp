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
TTEXPORT TTSymbolTable*		ttSymbolTable = NULL;

/****************************************************************************************************/

TTSymbolTable::TTSymbolTable()
{
	if(!sMutex)
		sMutex = new TTMutex(true);
	symbolTable.insert(TTSymbolTablePair("", new TTSymbol("", 0))); 
}


TTSymbolTable::~TTSymbolTable()
{
	TTSymbolTableIter	iter;

	for(iter = symbolTable.begin(); iter != symbolTable.end(); iter++)
		delete TTSymbolPtr(iter->second);
	symbolTable.clear();
	
	// TODO: we should reference count symbol tables and then free the mutex here, yes?
}


TTSymbol* TTSymbolTable::lookup(const char* aString)
{
	TTSymbolTableIter	iter;

	sMutex->lock();
	
	iter = symbolTable.find(aString);
	if(iter == symbolTable.end()){
		// The symbol wasn't found in the table, so we need to create and add it.
		// TTLogMessage("Adding symbol: %s  With Address: %x", aString, aString);
		TTSymbol *newSymbol = new TTSymbol(aString, symbolTable.size());
		symbolTable.insert(TTSymbolTablePair(aString, newSymbol)); 
		sMutex->unlock();
		return newSymbol; 
	}
	else{
		// The symbol was found, so we return it.
		sMutex->unlock();
		return iter->second;
	}
}


TTSymbol* TTSymbolTable::lookup(string& aString)
{
	return lookup(aString.c_str());
}


void TTSymbolTable::dump(TTValue& allSymbols)
{
	TTSymbolTableIter	iter;
	
	TTLogMessage("---- DUMPING SYMBOL TABLE -- BEGIN ----\n");
	allSymbols.clear();
	for(iter = symbolTable.begin(); iter != symbolTable.end(); iter++){
		allSymbols.append(TTSymbolPtr(iter->second));
		TTLogMessage("KEY:%s   VALUE:%s\n", iter->first, TTSymbolPtr(iter->second)->getCString());
	}
	TTLogMessage("---- DUMPING SYMBOL TABLE -- END ----\n");
}
