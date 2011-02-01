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
			:mThreadProtection(NO)
{
	mMutex = new TTMutex(false);
	
	if (!sHashMutex)
		sHashMutex = new TTMutex(false);
}


TTHash::~TTHash()
{
	;
}


TTErr TTHash::append(const TTSymbolPtr key, const TTValue& value)
{
	lock();
	hashMap.insert(TTKeyVal(TTPtrSizedInt(key), value));
	unlock();
	return kTTErrNone;
}


TTErr TTHash::lookup(const TTSymbolPtr key, TTValue& value)
{
	lock();
	TTHashMapIter iter = hashMap.find(TTPtrSizedInt(key));

	if (iter == hashMap.end()) {
		unlock();
		return kTTErrValueNotFound;
	}
	else {
		value = iter->second;
		unlock();
		return kTTErrNone;
	}
}


TTErr TTHash::remove(const TTSymbolPtr key)
{
	lock();
	hashMap.erase(TTPtrSizedInt(key));
	unlock();
	return kTTErrNone;
}


TTErr TTHash::clear()
{
	lock();
	hashMap.clear();
	unlock();
	return kTTErrNone;
}


TTErr TTHash::getKeys(TTValue& hashKeys)
{
	lock();
	hashKeys.clear();
	for (TTHashMapIter iter = hashMap.begin(); iter != hashMap.end(); iter++)	
		hashKeys.append(TTSymbolPtr(iter->first));
	unlock();
	return kTTErrNone;
}


TTErr TTHash::iterate(const TTPtr target, const TTHashIteratorType callback)
{
	lock();
	for (TTHashMapIter iter = hashMap.begin(); iter != hashMap.end(); iter++)	
		callback(target, *iter);
	unlock();
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


void TTHash::lock()
{
	if (mThreadProtection)
		mMutex->lock();
}


void TTHash::unlock()
{
	if (mThreadProtection)
		mMutex->unlock();
}
