/* 
 * TTBlue (Linked) List Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTList.h"
#include "TTMutex.h"
#include "TTObject.h"

static TTMutex* sListMutex=NULL;

/****************************************************************************************************/

TTList::TTList()
	:threadProtection(YES)
{
	if(!sListMutex)
		sListMutex = new TTMutex(false);
}


TTList::~TTList()
{
	;
}


TTUInt32 TTList::getSize()
{
	return theList.size();
}
	

TTValue& TTList::getHead()
{
	return *theList.front();
}


TTValue& TTList::getTail()
{
	return *theList.back();
}


void TTList::append(const TTValue& newValue)
{
	lock();
	theList.insert(theList.end(), (TTValue*)&newValue);
	unlock();
}


void TTList::remove(const TTValue& value)
{
	lock();
	theList.remove((TTValue*)&value);
	unlock();
}


void TTList::clear()
{
	lock();
	theList.clear();
	unlock();
}


void TTList::assignToValue(TTValue& value)
{
	TTListIter	iter;
	
	value.clear();
	
	lock();
	for(iter = theList.begin(); iter != theList.end(); iter++){
		value.append(*iter);
	}
	unlock();	
}


TTErr TTList::iterateObjectsSendingMessage(const TTSymbolPtr messageName)
{
	lock();
	for(TTListIter iter = theList.begin(); iter != theList.end(); iter++){
		TTObjectPtr obj = *(*iter);
		if(obj)
			obj->sendMessage(messageName);
	}
	unlock();
	return kTTErrNone;
}


void TTList::lock()
{
	if(threadProtection)
		sListMutex->lock();
}

void TTList::unlock()
{
	if(threadProtection)
		sListMutex->unlock();
}

