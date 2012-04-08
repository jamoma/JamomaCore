/*
 * Jamoma Hash Table Class
 * Copyright © 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTHash.h"
#include "TTList.h"
#include "TTSymbolTable.h"
#include "TTMutex.h"

#ifdef TT_PLATFORM_WIN
	#include <hash_map>
	using namespace stdext;	// Visual Studio 2008 puts the hash_map in this namespace
	typedef hash_map<TTPtrSizedInt,TTValue>			TTHashMap;
#else
	#ifdef TT_PLATFORM_LINUX
		// at least for GCC 4.6 on the BeagleBoard, the unordered map is standard
		#include <unordered_map>
	#else
		#include "boost/unordered_map.hpp"
		using namespace boost;
	#endif
	typedef unordered_map<TTPtrSizedInt,TTValue>	TTHashMap;
#endif

typedef TTHashMap::const_iterator	TTHashMapIter;
#define HASHMAP  ((TTHashMap*)(mHashMap))
#define mHASHMAP (*HASHMAP)

/****************************************************************************************************/

TTHash::TTHash()
			:mThreadProtection(NO)
{
	mHashMap = new TTHashMap;
	mMutex = new TTMutex(false);
}


TTHash::~TTHash()
{
	delete mMutex;
	delete HASHMAP;
}


TTHash::TTHash(TTHash& that)
{
	mHashMap = new TTHashMap;
	mMutex = new TTMutex(false);

	*HASHMAP = *((TTHashMap*)that.mHashMap);
}


TTErr TTHash::append(const TTSymbolPtr key, const TTValue& value)
{
	lock();
	HASHMAP->insert(TTKeyVal(TTPtrSizedInt(key), value));
	unlock();
	return kTTErrNone;
}


TTErr TTHash::lookup(const TTSymbolPtr key, TTValue& value)
{
	lock();
	TTHashMapIter iter = HASHMAP->find(TTPtrSizedInt(key));

	if (iter == HASHMAP->end()) {
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
	HASHMAP->erase(TTPtrSizedInt(key));
	unlock();
	return kTTErrNone;
}


TTErr TTHash::clear()
{
	lock();
	HASHMAP->clear();
	unlock();
	return kTTErrNone;
}


TTErr TTHash::getKeys(TTValue& hashKeys)
{
	lock();
	hashKeys.clear();

	for (TTHashMapIter iter = HASHMAP->begin(); iter != HASHMAP->end(); iter++)
		hashKeys.append(TTSymbolPtr(iter->first));
	unlock();
	return kTTErrNone;
}


TTErr TTHash::getKeysSorted(TTValue& hashKeysSorted, TTBoolean(comparisonFunction)(TTValue&, TTValue&))
{
	lock();
	TTList		listToSort;
	TTValue		v;
	TTSymbolPtr key;
	
	// fill a list to sort
	for (TTHashMapIter iter = HASHMAP->begin(); iter != HASHMAP->end(); iter++) {
		
		if (comparisonFunction) {
			v = TTSymbolPtr(iter->first);	// the key
			v.append(TTPtr(iter->second));	// a pointer to the stored value
			listToSort.append(v);
		}
		else
			listToSort.append(TTSymbolPtr(iter->first));
	}
	
	listToSort.sort(comparisonFunction);
	
	// fill the result
	hashKeysSorted.clear();
	for (listToSort.begin(); listToSort.end(); listToSort.next()) {
		
		if (comparisonFunction) {
			listToSort.current().get(0, &key);
			hashKeysSorted.append(key);
		}
		else
			hashKeysSorted.append(listToSort.current());
	}
	
	unlock();
	return kTTErrNone;
}


TTErr TTHash::iterate(const TTPtr target, const TTHashIteratorType callback)
{
	lock();

	for (TTHashMapIter iter = HASHMAP->begin(); iter != HASHMAP->end(); iter++)
		callback(target, *iter);
	unlock();
	return kTTErrNone;
}


TTUInt32 TTHash::getSize()
{
	return HASHMAP->size();
}


TTBoolean TTHash::isEmpty()
{
	return HASHMAP->empty();
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

