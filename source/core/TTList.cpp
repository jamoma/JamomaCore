/* 
 * TTBlue (Linked) List Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTList.h"
#include "TTMutex.h"

static TTMutex sListMutex(false);

/****************************************************************************************************/

TTList::TTList()
	: list(NULL), size(0), head(0), tail(0), currentItem(NULL)
{
	;
}


TTList::~TTList()
{
	;
}


TTUInt32 TTList::getSize()
{
	return size;
}
	

/** return the number of values in the list. */
TTListItem* TTList::getHead(TTValue& headValue)
{
	headValue = head->value;
	return head;
}


/** return the number of values in the list. */
TTListItem* TTList::getTail(TTValue& tailValue)
{
	tailValue = tail->value;
	return tail;
}


void TTList::append(TTValue& newValue)
{
	;
}

// how to know where to insert it?	
//	void insert(TTValue* newItem);

/** remove a specified item. */
void TTList::remove(TTValue& value)
{
	TTListItem *item = NULL;

	sListMutex.lock();
	item = findFirst(&value);
	if(item)
		doRemove(item);
	sListMutex.unlock();
}


/** remove a specified item. */
void TTList::remove(TTListItem* item)
{
	sListMutex.lock();
	doRemove(item);
	sListMutex.unlock();
}


/** remove a specified item. */
void TTList::doRemove(TTListItem* item)
{
	// tie the pointers together for the prev and next member
	// delete the value 
	// free the item
	;
}


/** remove all items from the list */
void TTList::clear()
{
	TTListItem* next;

	sListMutex.lock();
	currentItem = head;
	while(currentItem){
		next = currentItem->next;
		doRemove(currentItem);
		currentItem = next;
	}
	sListMutex.unlock();
}


/** find the first item with this value, and return it. */
TTListItem* TTList::findFirst(TTValue* value)
{
	currentItem;
}
