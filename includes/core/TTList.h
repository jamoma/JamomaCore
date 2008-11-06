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
#include <list>
using namespace std;


typedef list<TTValue*>::iterator	TTListIter;

/****************************************************************************************************/
// Class Specification

class TTEXPORT TTList : TTElement {
private:
	TTBoolean	threadProtection;	///< Use thread safety mechanisms.  Only disable this if you are certain that you will be calling from a single thread.
	
	#ifdef TT_PLATFORM_WIN
	#pragma warning(disable:4251)
	#endif
	std::list<TTValue*>	theList;
	
	void lock();
	void unlock();
	
public:
	TTList();
	virtual ~TTList();

	/** Determine the number of values in the list.
		@return	The count of the values in the list.	*/
	TTUInt32 getSize();
	
	/** Return the first value in the list. 
		@return	The first value in the list.			*/
	TTValue& getHead();
	
	/** Return the last value in the list.
		@return	The last value in the list.				*/
	TTValue& getTail();
	
	/** Appends a value to the list. 
		@param	newValue	The value to add to the list.  */
	void append(const TTValue& newValue);

	/** Remove the specified value. 
		This doesn't change the value or free it, it just removed the pointer to it from the list.
		@param	The value to remove.					*/
	void remove(const TTValue& value);
	
	/** Remove all values from the list					*/
	void clear();

	/**	Assign the contents of the list to a value as an array.	*/
	void assignToValue(TTValue& value);
	
	/**	Traverse the entire list, and if the item in the list is an object, then send it the specified message.	*/
	TTErr iterateObjectsSendingMessage(const TTSymbolPtr messageName);
	
	
	void setThreadProtection(TTBoolean newThreadProtection)
	{	
		threadProtection = newThreadProtection;
	}
};


typedef TTList* TTListPtr;


#endif // __TT_LIST_H__

