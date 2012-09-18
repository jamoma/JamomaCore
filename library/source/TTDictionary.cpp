/* 
 * Foundation Dictionary Class
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDictionary.h"
#include "TTSymbolTable.h"


void TTDictionaryFindKeyInList(const TTValue& valueToCheck, TTPtr baton, TTBoolean& found)
{
	TTKeyValPtr keyval = TTKeyValPtr(TTPtr(valueToCheck));
	TTSymbolRef key = TTSymbolRef(baton);
	
	if (keyval && TTSymbolRef(keyval->first) == key)
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


TTErr TTDictionary::setSchema(const TTSymbolRef schemaName)
{
	return append(TT("schema"), schemaName);
}


TTSymbolRef TTDictionary::getSchema() const
{
	TTValue v;
	TTErr	err;
	
	err = lookup(TT("schema"), v);
	err = err; // silence 'unused' warning
	return v;
}


TTErr TTDictionary::setValue(const TTValue& newValue)
{
	return append(TT("value"), newValue);
}


TTErr TTDictionary::getValue(TTValue& returnedValue) const
{
	return lookup(TT("value"), returnedValue);
}


TTErr TTDictionary::append(const TTSymbolRef key, const TTValue& value)
{
	TTValue v = new TTKeyVal(TTPtrSizedInt(&key), value);
	
	remove(key);
	mList->append(v);
	return mHashTable->append(key, value);
}


TTErr TTDictionary::lookup(const TTSymbolRef key, TTValue& value) const
{
	return mHashTable->lookup(key, value);
}


TTErr TTDictionary::remove(const TTSymbolRef key)
{
	TTValue	v;
	TTErr	err;
	
	err = mList->find(TTDictionaryFindKeyInList, &key, v);
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

