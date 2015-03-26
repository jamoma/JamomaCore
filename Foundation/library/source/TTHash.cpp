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

#include "TTSymbolCache.h"

#include <unordered_map>
typedef std::unordered_map<TTPtrSizedInt,TTValue>	TTHashMap;

typedef TTHashMap::const_iterator	TTHashMapIter;
#define HASHMAP  ((TTHashMap*)(mHashMap))
#define mHASHMAP (*HASHMAP)

/****************************************************************************************************/

TTHash::TTHash()
{
	mHashMap = new TTHashMap;
}


TTHash::~TTHash()
{
	delete HASHMAP;
}


TTHash::TTHash(TTHash& that)
{
	mHashMap = new TTHashMap;

	*HASHMAP = *((TTHashMap*)that.mHashMap);
}


TTErr TTHash::append(const TTPtr key, const TTValue& value)
{
	auto locker = acquireLock();
	HASHMAP->insert(TTKeyVal(TTPtrSizedInt(key), value));
	return kTTErrNone;
}


TTErr TTHash::append(const TTSymbol key, const TTValue& value)
{
	return append(TTPtr(key.rawpointer()), value);
}


TTErr TTHash::lookup(const TTSymbol key, TTValue& value)
{
	return lookup(TTPtr(key.rawpointer()), value);
}


TTErr TTHash::lookup(const TTPtr key, TTValue& value)
{
	auto locker = acquireLock();
	TTHashMap* theMap = (TTHashMap*)mHashMap;
	TTHashMapIter iter = theMap->find(TTPtrSizedInt(key));

	if (theMap->end() != iter)
	{
		value = iter->second;
		return kTTErrNone;
	}

	return kTTErrValueNotFound;
}



TTErr TTHash::remove(const TTSymbol key)
{
	auto locker = acquireLock();
	HASHMAP->erase(TTPtrSizedInt(key.rawpointer()));
	return kTTErrNone;
}


TTErr TTHash::clear()
{
	auto locker = acquireLock();
	HASHMAP->clear();
	return kTTErrNone;
}


TTErr TTHash::getKeys(TTValue& hashKeys)
{
	auto locker = acquireLock();
	hashKeys.clear();

	TTHashMap* theMap = (TTHashMap*)mHashMap;

	for (TTHashMapIter iter = theMap->begin(); iter != theMap->end(); iter++) {
		TTPtrSizedInt	a = iter->first;
		TTSymbol		b((TTSymbolBase*)a);

		hashKeys.append(b);
	}
	return kTTErrNone;
}


TTErr TTHash::getKeysSorted(TTValue& hashKeysSorted, TTBoolean(*comparisonFunction)(TTValue&, TTValue&))
{
	auto locker = acquireLock();
	TTList		listToSort;
	TTValue		v;
	TTSymbol	key;

	// fill a list to sort
	for (TTHashMapIter iter = HASHMAP->begin(); iter != HASHMAP->end(); iter++) {
		TTPtrSizedInt	a = iter->first;
		TTSymbol		b((TTSymbolBase*)a);

		if (comparisonFunction) {
			v = b;	// the key
			v.append(TTPtr(iter->second));	// a pointer to the stored value
			listToSort.append(v);
		}
		else
			listToSort.append(b);
	}

	listToSort.sort(comparisonFunction);

	// fill the result
	hashKeysSorted.clear();
	for (listToSort.begin(); listToSort.end(); listToSort.next()) {

		if (comparisonFunction) {
			key = listToSort.current()[0];
			hashKeysSorted.append(key);
		}
		else
			hashKeysSorted.append(listToSort.current());
	}

	return kTTErrNone;
}


TTErr TTHash::iterate(const TTPtr target, const TTHashIteratorType callback)
{
	auto locker = acquireLock();

	for (TTHashMapIter iter = HASHMAP->begin(); iter != HASHMAP->end(); iter++)
		callback(target, *iter);

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

std::unique_lock<std::mutex> TTHash::acquireLock()
{
	return mThreadProtection ? std::unique_lock<std::mutex>{mMutex} : std::unique_lock<std::mutex>{};
}
