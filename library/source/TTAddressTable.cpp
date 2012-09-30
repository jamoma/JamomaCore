/*
 * Jamoma Class that maintains a table of addresses
 * Copyright © 2011, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAddressTable.h"
#include "TTMutex.h"
#include "TTValue.h"

#include<iostream>
#include<unordered_map>


//TTFOUNDATION_EXPORT TTAddressTable* gTTAddressTable = NULL;


/****************************************************************************************************/

TTSymbolBase* TTAddressTable::createEntry(const TTString& aString, TTInt32 newSymbolId)
{
	return new TTAddressBase(aString, TTPtrSizedInt(this), newSymbolId);
}

