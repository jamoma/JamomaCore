/* 
 * Jamoma Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSymbolBase.h"
#include "TTSymbolTable.h"


/****************************************************************************************************/


TTSymbolBase::TTSymbolBase(const TTString& newString, TTPtrSizedInt newSymbolTableId, TTInt32 newSymbolId)
{
	init(newString, newSymbolTableId, newSymbolId);
}


TTSymbolBase::~TTSymbolBase()
{
	;
}


// Copy Constructor
TTSymbolBase::TTSymbolBase(const TTSymbolBase& oldSymbol)
{
	mSymbolId = oldSymbol.mSymbolId;
	mSymbolTableId = oldSymbol.mSymbolTableId;
	mString = oldSymbol.mString;
}


void TTSymbolBase::init(const TTString& newString, TTPtrSizedInt newSymbolTableId, TTInt32 newSymbolId)
{
	mSymbolId = newSymbolId;
	mSymbolTableId = newSymbolTableId;
	mString = newString;
}

