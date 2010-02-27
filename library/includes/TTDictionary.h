/* 
 * Foundation Dictionary Class
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_DICTIONARY_H__
#define __TT_DICTIONARY_H__

#include "TTHash.h"


/****************************************************************************************************/
// Class Specification

/**	
 
*/
class TTFOUNDATION_EXPORT TTDictionary : TTElement {
private:
	TTHashPtr	mHashTable;
	
public:
	TTDictionary();
	virtual ~TTDictionary();
	
	TTErr setSchema(const TTSymbolPtr schemaName);
	TTSymbolPtr getSchema();
	
	/** Insert an item into the hash table. */
	TTErr append(const TTSymbolPtr key, const TTValue& value);
	
	/** Find the value for the given key. */
	TTErr lookup(const TTSymbolPtr key, TTValue& value);
	
	/** Remove an item from the hash table. */
	TTErr remove(const TTSymbolPtr key);
	
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

