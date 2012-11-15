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

#include "TTDictionary.h"
#include "TTSymbolTable.h"


void TTDictionaryFindKeyInList(const TTValue& valueToCheck, TTPtr baton, TTBoolean& found);
void TTDictionaryFindKeyInList(const TTValue& valueToCheck, TTPtr baton, TTBoolean& found)
{
	TTKeyValPtr keyval = TTKeyValPtr(TTPtr(valueToCheck));
	TTSymbol key = TTSymbol((TTSymbolBase*)baton);
	
	if (keyval && TTSymbol((TTSymbolBase*)keyval->first) == key)
		found = YES;
}


/****************************************************************************************************/

TTDictionary::TTDictionary()
{
	mHashTable = new TTHash;
	mList = new TTList;
}


TTDictionary::~TTDictionary()
{
	delete mHashTable;
	delete mList;
}


TTErr TTDictionary::setSchema(const TTSymbol& schemaName)
{
	return append(TTSymbol("schema"), schemaName);
}


const TTSymbol TTDictionary::getSchema() const
{
	TTValue v;
	TTErr	err;
	
	err = lookup(TTSymbol("schema"), v);
	err = err; // silence 'unused' warning
	return v;
}


TTErr TTDictionary::setValue(const TTValue& newValue)
{
	return append(TTSymbol("value"), newValue);
}


TTErr TTDictionary::getValue(TTValue& returnedValue) const
{
	return lookup(TTSymbol("value"), returnedValue);
}


TTErr TTDictionary::append(const TTSymbol& key, const TTValue& value)
{
	TTValue v = new TTKeyVal(TTPtrSizedInt(&key), value);
	
	remove(key);
	mList->append(v);
	return mHashTable->append(key, value);
}


TTErr TTDictionary::lookup(const TTSymbol& key, TTValue& value) const
{
	return mHashTable->lookup(key, value);
}


TTErr TTDictionary::remove(const TTSymbol& key)
{
	TTValue	v;
	TTErr	err;
	
	err = mList->find(TTDictionaryFindKeyInList, key.rawpointer(), v);
	if (!err)
		mList->remove(v);
	return mHashTable->remove(key);
}


TTErr TTDictionary::clear()
{
	mList->clear();
	return mHashTable->clear();
}


TTErr TTDictionary::getKeys(TTValue& hashKeys)
{
	return mHashTable->getKeys(hashKeys);
}


TTUInt32 TTDictionary::getSize()
{
	return mHashTable->getSize();
}


TTBoolean TTDictionary::isEmpty()
{
	return mHashTable->isEmpty();
}

