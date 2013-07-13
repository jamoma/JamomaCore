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

#include "TTDictionaryBase.h"
#include "TTSymbolTable.h"
#include "TTSymbolCache.h"

//void TTDictionaryBaseFindKeyInList(const TTValue& valueToCheck, TTPtr baton, TTBoolean& found);
//void TTDictionaryBaseFindKeyInList(const TTValue& valueToCheck, TTPtr baton, TTBoolean& found)
//{
//	TTKeyValPtr keyval = TTKeyValPtr(TTPtr(valueToCheck));
//	TTSymbol key = TTSymbol((TTSymbolBase*)baton);
	//
//	if (keyval && TTSymbol((TTSymbolBase*)keyval->first) == key)
//		found = YES;
//}


/****************************************************************************************************/

TTDictionaryBase::TTDictionaryBase() :
	mReferenceCount(0)
{
//	mHashTable = new TTHash;
//	mList = new TTList;
}


TTDictionaryBase::~TTDictionaryBase()
{
//	delete mHashTable;
//	delete mList;
}


TTErr TTDictionaryBase::setSchema(const TTSymbol& schemaName)
{
	return append(kTTSym_schema, schemaName);
}


const TTSymbol TTDictionaryBase::getSchema() const
{
	TTValue v;
	
	lookup(kTTSym_schema, v);
	return v;
}


TTErr TTDictionaryBase::setValue(const TTValue& newValue)
{
	return append(kTTSym_value, newValue);
}


TTErr TTDictionaryBase::getValue(TTValue& returnedValue) const
{
	return lookup(kTTSym_value, returnedValue);
}


TTErr TTDictionaryBase::append(const TTSymbol& key, const TTValue& value)
{
//	TTValue v = new TTKeyVal(TTPtrSizedInt(&key), value);
//	lock();
	remove(key);
//	mMap.insert(TTDictionaryBasePair(key.getSymbolId(), value));
	mMap.insert(TTDictionaryBasePair((TTPtrSizedInt)key.rawpointer(), value));
//	unlock();
	sendNotification("change", TTValue());
	return kTTErrNone;

//	mList->append(v);
//	return mMap->append(key, value);
//	return kTTErrNone;
}



TTErr TTDictionaryBase::lookup(const TTSymbol& key, TTValue& value) const
{
//	return mHashTable->lookup(key, value);
//	lock();
//	TTHashMap* theMap = (TTHashMap*)mHashMap;
//	TTDictionaryBaseMapIterK iter = mMap.find(key.getSymbolId());
	TTDictionaryBaseMapIterK iter = mMap.find((TTPtrSizedInt)key.rawpointer());
	
	//	TTPtrSizedInt a = iter->first;
	//	TTSymbol*     b = (TTSymbol*)a;
	//	TTValue			v = iter->second;
	//	TTValue v = (*theMap)[TTPtrSizedInt(&key)];
	
	if (iter == mMap.end()) {
//		unlock();
		return kTTErrValueNotFound;
	}
	else {
		value = iter->second;
//		unlock();
		return kTTErrNone;
	}

}


TTErr TTDictionaryBase::remove(const TTSymbol& key)
{
//	TTValue	v;
//	TTErr	err;
	
//	err = mList->find(TTDictionaryBaseFindKeyInList, key.rawpointer(), v);
//	if (!err)
//		mList->remove(v);
//	return mHashTable->remove(key);
//	mMap.erase(key.getSymbolId());
	mMap.erase((TTPtrSizedInt)key.rawpointer());
	sendNotification("change", TTValue());
	return kTTErrNone;
}


TTErr TTDictionaryBase::clear()
{
//	mList->clear();
	mMap.clear();
	sendNotification("change", TTValue());
	return kTTErrNone;
}


TTErr TTDictionaryBase::getKeys(TTValue& hashKeys)
{
//	lock();
	hashKeys.clear();
	
	for (TTDictionaryBaseMapIter iter = mMap.begin(); iter != mMap.end(); iter++) {
		TTPtrSizedInt	a = iter->first;
		TTSymbol		b((TTSymbolBase*)a);
		//TTValue		  v = iter->second;
		//hashKeys.append(TTSymbolRef(*(TTSymbol*)iter->first));
		hashKeys.append(b);
	}
//	unlock();
	return kTTErrNone;
}


TTUInt32 TTDictionaryBase::getSize()
{
	return mMap.size();
}


TTBoolean TTDictionaryBase::isEmpty()
{
	return mMap.empty();
}


TTErr TTDictionaryBase::registerObserverForNotifications(const TTObjectBase& observingObject)
{
	TTValue v = observingObject;
	mObservers.appendUnique(v);
	return kTTErrNone;
}


TTErr TTDictionaryBase::unregisterObserverForNotifications(const TTObjectBase& observingObject)
{
	TTValue	c(observingObject);
	TTValue	v;
	TTErr	err;
	
	err = mObservers.findEquals(c, v);
	if (!err)
		mObservers.remove(v);
	return err;
}


TTErr TTDictionaryBase::sendNotification(const TTSymbol name, const TTValue& arguments)
{
	return mObservers.iterateObjectsSendingMessage(name, TTValueRef(arguments));
}

