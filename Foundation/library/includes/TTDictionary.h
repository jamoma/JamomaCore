/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Foundation Dictionary Class.
 *
 * @details The dictionary is a data structure that combines the fast lookup of a hashtable,
 * but may be sorted like a linked-list.
 * The linked list contains the key-value pairs of the hash a linked-list of TTKeyValues.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_DICTIONARY_H__
#define __TT_DICTIONARY_H__

#include "TTValue.h"
//#include "TTBase.h"
//#include "TTHash.h"
//#include "TTList.h"


/****************************************************************************************************/
// Class Specification

typedef std::pair<TTPtrSizedInt,TTValue>			TTDictionaryPair;
#if defined( __ICC )
#include "boost/unordered_map.hpp"
typedef boost::unordered_map<TTPtrSizedInt, TTValue>	TTDictionaryMap;
#else
#include <unordered_map>
typedef std::unordered_map<TTPtrSizedInt, TTValue>	TTDictionaryMap;
#endif
typedef TTDictionaryMap::iterator					TTDictionaryMapIter;
typedef TTDictionaryMap::const_iterator				TTDictionaryMapIterK;


/** A type that contains a key and a value. */
//typedef pair<TTPtrSizedInt,TTValue>	TTKeyVal;
//typedef	TTKeyVal*			TTKeyValPtr;
//typedef void (*TTHashIteratorType)(TTPtr, const TTKeyVal&);



/**
	The dictionary is a data structure that combines the fast lookup of a hashtable, but may be sorted like a linked-list.
	The linked list contains the key-value pairs of the hash a linked-list of TTKeyValues.
*/
class TTFOUNDATION_EXPORT TTDictionary {
private:
//	TTHashPtr	mHashTable;
//	TTListPtr	mList;
	TTDictionaryMap	mMap;
	
public:
	TTDictionary();
	virtual ~TTDictionary();
	
	// The copy assignment constructor doesn't appear to be involved, at least with resizes, on the Mac...
	// This operator is used when pushing to an append# object, however...
	TTDictionary& operator=(const TTDictionary& source)
	{
//		if (mHashTable)
//			delete mHashTable;
//		mHashTable = new TTHash(*source.mHashTable);
		
		mMap = source.mMap;
		
//		if (mList)
//			delete mList;
//		mList = new TTList(*source.mList);
		return *this;
	}
	
	
	/** TODO: Add documentation
	 @para schemaName			TODO: Add documentation
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSchema(const TTSymbol& schemaName);
	
	
	/** TODO: Add documentation
	 @return					TODO: Add documentation
	 */
	const TTSymbol getSchema() const;
	
	
	/** TODO: Add documentation
	 @param newValue			TODO: Add documentation
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setValue(const TTValue& newValue);
	
	
	/** TODO: Add documentation
	 @param returnedValue		TODO: Add documentation
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getValue(TTValue& returnedValue) const;
	
	
	/** Insert an item into the hash table. 
	 @param value	The value to instert.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr append(const TTSymbol& key, const TTValue& value);
	
	
	/** Find the value for the given key.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr lookup(const TTSymbol& key, TTValue& value) const;
	
	
	/** Remove an item from the hash table.
	 @param key					The key of the item to remove.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr remove(const TTSymbol& key);
	
	
	/** Remove all items from the hash table.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr clear();
	
	
	/** Get an array of all of the keys for the hash table.
	 @param hashKeys			Used to return an array of all of the keys for the hash table
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getKeys(TTValue& hashKeys);
	
	
	/** Return the number of keys in the hash table.
	 @return					The number of keys in the hash table.
	 */
	TTUInt32 getSize();
	
	
	/** Return true if the hash has nothing stored in it. 
	 @return					TRUE if the hash has nothing stored in it.
	 */
	TTBoolean isEmpty();
};

/** Pointer to a #TTDictionary.
 @ingroup typedefs
 */
typedef TTDictionary* TTDictionaryPtr;


#endif // __TT_DICTIONARY_H__
