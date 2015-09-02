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

TTList::TTList(TTList& that)
{
	theList = that.theList;
}


TTUInt32 TTList::getSize() const
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

	auto lock = acquireLock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); ++iter) {
		if (i==index) {
			err = kTTErrNone;
			returnedValue = *iter;
			break;
		}
		i++;
	}
	
	return err;
}


void TTList::append(const TTValue& newValue)
{
	auto lock = acquireLock();
	theList.insert(theList.end(), newValue);
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

	auto lock = acquireLock();
	for (iter = theList.begin(); iter != theList.end(); ++iter) {
		if (i==index) {
			break;
		}
		i++;
	}
	
	theList.insert(iter, newValue);
}

void TTList::merge(TTList& newList)
{
	auto lock = acquireLock();
	theList.sort();
	newList.theList.sort();
	theList.merge(newList.theList);
}


void TTList::sort(TTBoolean(*comparisonFunction)(TTValue&, TTValue&))
{
	auto lock = acquireLock();
	
	// If a comparison fonction is given : use it
	if (comparisonFunction)
		theList.sort(comparisonFunction);

	// else use the < operator of TTValue to sort the list
	else
		theList.sort();
}


TTErr TTList::find(TTFunctionMatch aMatchFunction, TTPtr aBaton, TTValue& returnedValue)
{
	TTErr		err = kTTErrGeneric;
	TTBoolean	found = NO;

	auto lock = acquireLock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); ++iter) {
		TTValue& v = *iter;
		
		aMatchFunction(v, aBaton, found);
		if (found) {
			returnedValue = v;
			err = kTTErrNone;
			break;
		}
	}
	return err;
}


TTErr TTList::findEquals(const TTValue& valueToCompareAgainst, TTValue& foundValue)
{
	TTErr err = kTTErrValueNotFound;

	auto lock = acquireLock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); ++iter) {
		if ((*iter) == valueToCompareAgainst) {
			foundValue = *iter;
			err = kTTErrNone;
			break;
		}
	}
	
	return err;
}


void TTList::remove(const TTValue& aValue)
{
	auto lock = acquireLock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); ++iter) {
		TTValue v = *iter;
		
		if (v == aValue) {
			theList.remove(v);
			break;
		}
	}
}


void TTList::clear()
{
	auto lock = acquireLock();
	theList.clear();
}


void TTList::assignToValue(TTValue& value)
{
	TTListIter	iter;
	
	value.clear();
	
	auto lock = acquireLock();
	for (iter = theList.begin(); iter != theList.end(); ++iter) {
		value.append(*iter);
	}
}


TTErr TTList::iterate(const TTObjectBasePtr target, const TTFunctionWithBatonAndValue callback)
{
	if (theList.empty())
		return kTTErrNone;

	auto lock = acquireLock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); ++iter) {
		callback(target, *iter);
	}
	return kTTErrNone;	
}


TTErr TTList::iterate(const TTObjectBasePtr target, const TTSymbol messageName)
{
	if (theList.empty())
		return kTTErrNone;

	auto lock = acquireLock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); ++iter) {
		TTValue v;
		target->sendMessage(messageName, *iter, v);
	}
	return kTTErrNone;	
}


TTErr TTList::iterateObjectsSendingMessage(const TTSymbol messageName)
{
	if (theList.empty())
		return kTTErrNone;

	auto lock = acquireLock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); ++iter) {
		TTObject o = iter->at(0);
		
		if (o.valid())
			o.send(messageName);
	}

	return kTTErrNone;
}


TTErr TTList::iterateObjectsSendingMessage(const TTSymbol messageName, TTValue& aValue)
{
	if (theList.empty())
		return kTTErrNone;
	
	auto lock = acquireLock();
	for (TTListIter iter = theList.begin(); iter != theList.end(); ++iter) {
		TTObject o = iter->at(0);
	
		if (o.valid())
			o.send(messageName, aValue);
	}

	return kTTErrNone;
}


std::unique_lock<std::mutex> TTList::acquireLock()
{
	return mThreadProtection ? std::unique_lock<std::mutex>{mMutex} : std::unique_lock<std::mutex>{};
}
