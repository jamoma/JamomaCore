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
	TTSymbolPtr key = TTSymbolPtr(baton);
	
	if (keyval && TTSymbolPtr(keyval->first) == key)
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


TTErr TTDictionary::setSchema(const TTSymbolPtr schemaName)
{
	TTValue v = new TTKeyVal(TTPtrSizedInt(TT("schema")), TTValue(schemaName));

	remove(schemaName);	
	mList->append(v);
	return append(TT("schema"), schemaName);
}


TTSymbolPtr TTDictionary::getSchema() const
{
	TTValue v;
	TTErr	err;
	
	err = lookup(TT("schema"), v);
	return v;
}


TTErr TTDictionary::setValue(const TTValue& newValue)
{
	TTValue v = new TTKeyVal(TTPtrSizedInt(TT("value")), newValue);
	
	remove(TT("value"));	
	mList->append(v);
	return append(TT("value"), newValue);
}


TTErr TTDictionary::getValue(TTValue& returnedValue) const
{
	return lookup(TT("value"), returnedValue);
}


TTErr TTDictionary::append(const TTSymbolPtr key, const TTValue& value)
{
	TTValue v = new TTKeyVal(TTPtrSizedInt(key), value);
	
	remove(key);
	mList->append(v);
	return mHashTable->append(key, value);
}


TTErr TTDictionary::lookup(const TTSymbolPtr key, TTValue& value) const
{
	return mHashTable->lookup(key, value);
}


TTErr TTDictionary::remove(const TTSymbolPtr key)
{
	TTValue	v;
	TTErr	err;
	
	err = mList->find(TTDictionaryFindKeyInList, key, v);
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

