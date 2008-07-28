/* 
 * TTBlue Hash Table Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTHash.h"
#include "TTSymbolTable.h"
#include "TTMutex.h"

static TTMutex* sListMutex=NULL;

/****************************************************************************************************/

TTHash::TTHash()
{
	if(!sListMutex)
		sListMutex = new TTMutex(false);
	hashMap = new TTHashMap;
}


TTHash::~TTHash()
{
	hashMap->clear();
	delete hashMap;
}


TTErr TTHash::append(const TTSymbolPtr key, const TTValue& value)
{
	hashMap->insert(TTKeyVal(TTPtrSizedInt(key), value));
	return kTTErrNone;
}


TTErr TTHash::lookup(const TTSymbolPtr key, TTValue& value)
{
	TTHashMapIter iter = hashMap->find(TTPtrSizedInt(key));

	if(iter == hashMap->end())
		return kTTErrGeneric;
	else{
		value = iter->second;
		return kTTErrNone;
	}
}


TTErr TTHash::remove(const TTSymbolPtr key)
{
	hashMap->erase(TTPtrSizedInt(key));
	return kTTErrNone;
}


TTErr TTHash::clear()
{
	hashMap->clear();
	return kTTErrNone;
}


TTErr TTHash::getKeys(TTValue& hashKeys)
{
	hashKeys.clear();
	for(TTHashMapIter iter = hashMap->begin(); iter != hashMap->end(); iter++)	
		hashKeys.append(TTSymbolPtr(iter->first));
	return kTTErrNone;
}


TTUInt32 TTHash::getSize()
{
	return hashMap->size();
}

