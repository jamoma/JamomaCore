/* 
 * Foundation Dictionary Class
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_DICTIONARY_H__
#define __TT_DICTIONARY_H__

#include "TTHash.h"
#include "TTList.h"


/****************************************************************************************************/
// Class Specification

/**	
	The dictionary is a data structure that combines the fast lookup of a hashtable,
	but may be sorted like a linked-list.
 
	The linked list contains the key-value pairs of the hash a linked-list of TTKeyValues.
*/
class TTFOUNDATION_EXPORT TTDictionary : TTBase {
private:
	TTHashPtr	mHashTable;
	TTListPtr	mList;
	
public:
	TTDictionary();
	virtual ~TTDictionary();
	
	// The copy assignment constructor doesn't appear to be involved, at least with resizes, on the Mac...
	// This operator is used when pushing to an append# object, however...
	TTDictionary& operator=(const TTDictionary& source)
	{
		if (mHashTable)
			delete mHashTable;
		mHashTable = new TTHash(*source.mHashTable);
		
		if (mList)
			delete mList;
		mList = new TTList(*source.mList);
		return *this;
	}
		
	
	TTErr setSchema(const TTSymbol& schemaName);
	const TTSymbol getSchema() const;
	
	TTErr setValue(const TTValue& newValue);
	TTErr getValue(TTValue& returnedValue) const;
	
	
	/** Insert an item into the hash table. */
	TTErr append(const TTSymbol& key, const TTValue& value);
	
	/** Find the value for the given key. */
	TTErr lookup(const TTSymbol& key, TTValue& value) const;
	
	/** Remove an item from the hash table. */
	TTErr remove(const TTSymbol& key);
	
	/** Remove all items from the hash table. */
	TTErr clear();
	
	/** Get an array of all of the keys for the hash table. */
	TTErr getKeys(TTValue& hashKeys);
	
	/** Return the number of keys in the hash table. */
	TTUInt32 getSize();
	
	/** Return true if the hash has nothing stored in it. */
	TTBoolean isEmpty();
};

typedef TTDictionary* TTDictionaryPtr;


#endif // __TT_DICTIONARY_H__
