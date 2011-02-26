/*
 * TTBlue Hash Table Class
 * Copyright © 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_HASH_H__
#define __TT_HASH_H__

#include "TTBase.h"
#include "TTValue.h"
#include "TTMutex.h"
#if defined( TT_PLATFORM_MAC ) || defined ( TT_PLATFORM_IPHONE )
#include <ext/hash_map>
using namespace __gnu_cxx;
#elif TT_PLATFORM_LINUX
#include <unordered_map>
#else // TT_PLATFORM_WIN
#include <hash_map>
using namespace stdext;	// Visual Studio 2008 puts the hash_map in this namespace
#endif

/**	A type that contains a key and a value. */
#ifdef TT_PLATFORM_LINUX
//typedef map<TTPtrSizedInt,TTValue> TTHashMap;
//typedef unordered_map::value_type               TTKeyVal;
typedef unordered_map<TTPtrSizedInt,TTValue>	TTHashMap;
#else
typedef pair<TTPtrSizedInt,TTValue>			TTKeyVal;
typedef hash_map<TTPtrSizedInt,TTValue>		TTHashMap;
#endif
typedef TTHashMap::const_iterator			TTHashMapIter;

typedef	TTKeyVal*							TTKeyValPtr;
typedef void (*TTHashIteratorType)(TTPtr, const TTKeyVal&);


/****************************************************************************************************/
// Class Specification

/**	The standard TTBlue hash table.
	Maintains a collection of TTValue objects indexed by TTSymbol pointers.
	The TTValue objects can themselves include TTSymbol pointers, TTObjects, simple values, polymorphic arrays, etc.

	TTHash is implemented as a light wrapper class around the STL hash_map templates.
	While we could inherit from hash_map and then override the appropriate things, there are a few reasons to just contain the hash_map and wrap it.
	- For example, we may later make TTHash inherit from TTObject and want to address it with messages.
	- This approach isolates coders from having to worry about an template craziness
	- This approach offers the possibility, should the need ever arise, to change the underlying implementation away from STL.
*/
class TTFOUNDATION_EXPORT TTHash : TTBase {
private:
//	#ifdef TT_PLATFORM_WIN
//	#pragma warning(disable:4251)
//	#endif
	TTHashMap	hashMap;

	TTBoolean	mThreadProtection;	///< Use thread safety mechanisms.  Only disable this if you are certain that you will be calling from a single thread.
	TTMutexPtr	mMutex;

	void lock();
	void unlock();

public:
	TTHash();
	virtual ~TTHash();

	/** Insert an item into the hash table. */
	TTErr append(const TTSymbolPtr key, const TTValue& value);

	/** Find the value for the given key. */
	TTErr lookup(const TTSymbolPtr key, TTValue& value);

	/** Remove an item from the hash table. */
	TTErr remove(const TTSymbolPtr key);

	/** Remove all items from the hash table. */
	TTErr clear();

	/**	For each item in the hash, run specified function.	*/
	TTErr iterate(const TTPtr target, const TTHashIteratorType callback);

	/** Get an array of all of the keys for the hash table. */
	TTErr getKeys(TTValue& hashKeys);

	/** Return the number of keys in the hash table. */
	TTUInt32 getSize();

	/** Return true if the hash has nothing stored in it. */
	TTBoolean isEmpty();

	void setThreadProtection(TTBoolean threadProtection)
	{
		mThreadProtection = threadProtection;
	}
};


typedef TTHash* TTHashPtr;


#endif // __TT_HASH_H__

