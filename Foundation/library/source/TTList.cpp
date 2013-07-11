/* 
 * TTBlue (Linked) List Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTList.h"
#include "TTObject.h"
#include "TTEnvironment.h"


/****************************************************************************************************/

TTList::TTList()
	:mThreadProtection(YES)
{
	mMutex = new TTMutex(false);
}


TTList::~TTList()
{
	delete mMutex;
}


TTList::TTList(TTList& that) :
	mThreadProtection(YES)
{
	mMutex = new TTMutex(false);
	
	theList = that.theList;
}



TTUInt32 TTList::getSize()
{
	return theList.size();
}
	

TTValue& TTList::getHead()
{
	return theList.front();
}


TTValue& TTList::getTail()
{
	return theList.back();
}


void TTList::begin()
{
	theIter = theList.begin();	
}


bool TTList::end()
{
	return theIter != theList.end();	
}


void TTList::next()
{
	theIter++;
}


void TTList::prev()
{
	theIter--;
}


TTValue& TTList::current()
{
	return *theIter;
}


TTBoolean TTList::isEmpty()
{
	return theList.empty();
}


TTErr TTList::getIndex(TTUInt32 index, TTValue& returnedValue)
{
	TTErr		err = kTTErrValueNotFound;
	TTUInt32	i=0;
	
	lock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); iter++) {
		if (i==index) {
			err = kTTErrNone;
			returnedValue = *iter;
			break;
		}
		i++;
	}
	unlock();
	
	return err;
}


void TTList::append(const TTValue& newValue)
{
	lock();
//	theList.insert(theList.end(), (TTValue*)&newValue);
	theList.insert(theList.end(), newValue);
	unlock();
}


void TTList::appendUnique(const TTValue& newValue)
{
	TTErr	err;
	TTValue	foundValue;
	
	err = findEquals(newValue, foundValue);
	if (err == kTTErrValueNotFound)
		append(newValue);
}

void TTList::insert(TTUInt32 index, const TTValue& newValue)
{
	TTListIter	iter;
	TTUInt32	i=0;
	
	lock();
	for (iter = theList.begin(); iter != theList.end(); iter++) {
		if (i==index) {
			break;
		}
		i++;
	}
	
	theList.insert(iter, newValue);
	unlock();
}

void TTList::merge(TTList& newList)
{
	lock();
	theList.merge(newList.theList);
	unlock();
}


void TTList::sort(TTBoolean(comparisonFunction)(TTValue&, TTValue&))
{
	lock();
	
	// If a comparison fonction is given : use it
	if (comparisonFunction)
		theList.sort(comparisonFunction);
	
	// else use the < operator of TTValue to sort the list
	else
		theList.sort();
	unlock();
}


TTErr TTList::find(TTFunctionMatch aMatchFunction, TTPtr aBaton, TTValue& returnedValue)
{
	TTErr		err = kTTErrGeneric;
	TTBoolean	found = NO;
	
	lock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); iter++) {
		TTValue& v = *iter;
		
		aMatchFunction(v, aBaton, found);
		if (found) {
			returnedValue = v;
			err = kTTErrNone;
			break;
		}
	}
	unlock();
	return err;
}


TTErr TTList::findEquals(const TTValue& valueToCompareAgainst, TTValue& foundValue)
{
	TTErr err = kTTErrValueNotFound;
	
	lock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); iter++) {
		if ((*iter) == valueToCompareAgainst) {
			foundValue = *iter;
			err = kTTErrNone;
			break;
		}
	}
	unlock();
	
	return err;
}


void TTList::remove(const TTValue& value)
{
	lock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); iter++) {
		if ((*iter) == value) {
			theList.remove(*iter);
			break;
		}
	}
	unlock();
}


void TTList::clear()
{
	lock();
	theList.clear();
	unlock();
}


void TTList::free()
{
	lock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); iter++) {
		TTValue& v = *iter;
		if (v[0].type() == kTypeObject) {
			TTObjectBasePtr o = NULL;
//			v.get(0, &o);
			o = v;
			TTObjectBaseRelease(&o);
		}
//		delete *iter;
	}
	theList.clear();
	unlock();
}


void TTList::assignToValue(TTValue& value)
{
	TTListIter	iter;
	
	value.clear();
	
	lock();
	for (iter = theList.begin(); iter != theList.end(); iter++) {
		value.append(*iter);
	}
	unlock();	
}


TTErr TTList::iterate(const TTObjectBasePtr target, const TTFunctionWithBatonAndValue callback)
{
	lock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); iter++) {
		callback(target, *iter);
	}
	unlock();
	return kTTErrNone;	
}


TTErr TTList::iterate(const TTObjectBasePtr target, const TTSymbol& messageName)
{
	lock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); iter++) {
		TTValue v;
		target->sendMessage(messageName, *iter, v);
	}
	unlock();
	return kTTErrNone;	
}


TTErr TTList::iterateObjectsSendingMessage(const TTSymbol& messageName)
{
	lock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); iter++) {
		TTObjectBasePtr obj = NULL;
		
		//(iter)->get(0, &obj);
		obj = iter->at(0);
		if (obj && obj->valid)
			obj->sendMessage(messageName);
	}
	unlock();
	return kTTErrNone;
}


TTErr TTList::iterateObjectsSendingMessage(const TTSymbol& messageName, TTValue& aValue)
{
	lock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); iter++) {
		TTObjectBasePtr obj = NULL;
		
		//(iter)->get(0, &obj);
		obj = iter->at(0);
		if (obj && obj->valid) {
			TTValue v;
			obj->sendMessage(messageName, aValue, v);
		}
	}
	unlock();
	return kTTErrNone;
}


void TTList::lock()
{
	if (mThreadProtection)
		mMutex->lock();
}


void TTList::unlock()
{
	if (mThreadProtection)
		mMutex->unlock();
}

