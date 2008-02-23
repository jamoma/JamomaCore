/* 
 * TTBlue (Linked) List Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_LIST_H__
#define __TT_LIST_H__

#include "TTElement.h"
#include "TTValue.h"

/****************************************************************************************************/
// Class Specification

typedef struct TTListItem {
	TTValue*		value;
	TTListItem*		prev;
	TTListItem*		next;
};
	

class TTList : TTElement {
private:
	TTValue*		list;
	TTUInt32		size;			///< number of items stored in the list
	TTListItem*		head;
	TTListItem*		tail;
	TTListItem*		currentItem;
	
	/** utility used by both remove() and clear()  */
	void doRemove(TTListItem* item);
	
public:
	TTList();
	virtual ~TTList();

	/** return the number of values in the list. */
	TTUInt32 getSize();
	
	/** return the number of values in the list. */
	TTValue* getHead();
	
	/** return the number of values in the list. */
	TTValue* getTail();
	
	/** appends a value to the list. */
	void append(TTValue* newValue);

// how to know where to insert it?	
//	void insert(TTValue* newItem);

	/** remove a specified item. */
	void remove(TTValue* value);
	void remove(TTListItem* item);
	
	/** remove all items from the list */
	void clear();

	/** find the first item with this value, and return it. */
	TTListItem* findFirst(TTValue* value);
	
};


#endif // __TT_LIST_H__

