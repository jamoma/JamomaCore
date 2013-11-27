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

#ifdef TT_PLATFORM_WIN
	#include <hash_map>
	using namespace stdext;	// Visual Studio 2008 puts the hash_map in this namespace
	typedef hash_map<TTPtrSizedInt,TTValue>			TTHashMap;
#else
//	#ifdef TT_PLATFORM_LINUX
		// at least for GCC 4.6 on the BeagleBoard, the unordered map is standard
		#include <unordered_map>
//	#else
//		#include "boost/unordered_map.hpp"
//		using namespace boost;
//	#endif
typedef std::unordered_map<TTPtrSizedInt,TTValue>	TTHashMap;
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


TTErr TTHash::append(const TTPtr key, const TTValue& value)
{
	lock();
	HASHMAP->insert(TTKeyVal(TTPtrSizedInt(key), value));
	unlock();
	return kTTErrNone;
}


TTErr TTHash::append(const TTSymbol& key, const TTValue& value)
{
	return append(TTPtr(key.rawpointer()), value);
}


TTErr TTHash::lookup(const TTSymbol& key, TTValue& value)
{
	return lookup(TTPtr(key.rawpointer()), value);
}


TTErr TTHash::lookup(const TTPtr key, TTValue& value)
{
	lock();
	TTHashMap* theMap = (TTHashMap*)mHashMap;
	TTHashMapIter iter = theMap->find(TTPtrSizedInt(key));
	
	//	TTPtrSizedInt a = iter->first;
	//	TTSymbol*     b = (TTSymbol*)a;
	//	TTValue			v = iter->second;
	//	TTValue v = (*theMap)[TTPtrSizedInt(&key)];
	
	if (theMap->end() == iter) {
		unlock();
		return kTTErrValueNotFound;
	}
	else {
		value = iter->second;
		unlock();
		return kTTErrNone;
	}
}



TTErr TTHash::remove(const TTSymbol& key)
{
	lock();
	HASHMAP->erase(TTPtrSizedInt(key.rawpointer()));
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

//#define HASHMAP  ((TTHashMap*)(mHashMap))
//#define mHASHMAP (*HASHMAP)

	TTHashMap* theMap = (TTHashMap*)mHashMap;
	
	for (TTHashMapIter iter = theMap->begin(); iter != theMap->end(); iter++) {
		TTPtrSizedInt	a = iter->first;
		TTSymbol		b((TTSymbolBase*)a);
		//TTValue		  v = iter->second;
		//hashKeys.append(TTSymbolRef(*(TTSymbol*)iter->first));
		hashKeys.append(b);
	}
	unlock();
	return kTTErrNone;
}


TTErr TTHash::getKeysSorted(TTValue& hashKeysSorted, TTBoolean(comparisonFunction)(TTValue&, TTValue&))
{
	lock();
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

