/* 
 * TTBlue Hash Table Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTHash.h"
#include "TTSymbolTable.h"
#include "TTMutex.h"

static TTMutex* sHashMutex=NULL;

/****************************************************************************************************/

TTHash::TTHash()
{
	if (!sHashMutex)
		sHashMutex = new TTMutex(false);
}


TTHash::~TTHash()
{
	;
}


TTErr TTHash::append(const TTSymbolPtr key, const TTValue& value)
{
	hashMap.insert(TTKeyVal(TTPtrSizedInt(key), value));
	return kTTErrNone;
}


TTErr TTHash::lookup(const TTSymbolPtr key, TTValue& value)
{
	TTHashMapIter iter = hashMap.find(TTPtrSizedInt(key));

	if (iter == hashMap.end())
		return kTTErrValueNotFound;
	else {
		value = iter->second;
		return kTTErrNone;
	}
}


TTErr TTHash::remove(const TTSymbolPtr key)
{
	hashMap.erase(TTPtrSizedInt(key));
	return kTTErrNone;
}


TTErr TTHash::clear()
{
	hashMap.clear();
	return kTTErrNone;
}


TTErr TTHash::getKeys(TTValue& hashKeys)
{
// TODO: we need to have some thread protection for TTHash!
	hashKeys.clear();
	for (TTHashMapIter iter = hashMap.begin(); iter != hashMap.end(); iter++)	
		hashKeys.append(TTSymbolPtr(iter->first));
	return kTTErrNone;
}


TTUInt32 TTHash::getSize()
{
	return hashMap.size();
}


TTBoolean TTHash::isEmpty()
{
	return hashMap.empty();
}

