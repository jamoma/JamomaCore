/* 
 * TTBlue (Linked) List Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTList.h"
#include "TTMutex.h"

static TTMutex* sListMutex=NULL;

/****************************************************************************************************/

TTList::TTList()
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
	sListMutex->lock();
	theList.insert(theList.end(), (TTValue*)&newValue);
	sListMutex->unlock();
}


void TTList::remove(const TTValue& value)
{
	sListMutex->lock();
	theList.remove((TTValue*)&value);
	sListMutex->unlock();
}


void TTList::clear()
{
	sListMutex->lock();
	theList.clear();
	sListMutex->unlock();
}


void TTList::assignToValue(TTValue& value)
{
	TTListIter	iter;
	
	value.clear();
	
	sListMutex->lock();
	for(iter = theList.begin(); iter != theList.end(); iter++){
		value.append(*iter);
	}
	sListMutex->unlock();	
}

