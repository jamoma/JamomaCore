/* tt_linkedlist
 *
 * A base class for linked lists
 * It may be used as is, or it may be subclassed for specific functionality
 * 
 * Copyright © 2007 by Timothy Place
 */

#ifndef TT_LINKEDLIST_HEADER
#define TT_LINKEDLIST_HEADER

#include "tt_base.h"
#include "tt_element.h"

/****************************************************************************************************/
// Class Specification

class tt_linkedlist : tt_base {

	protected:		
		// Standard members for doubly-linked list
		tt_linkedlist	*head;
		tt_linkedlist	*tail;
		tt_linkedlist	*current;
		tt_uint16		count;		///< number of elements in the linked list
		
	public:
		
		// LIFE CYCLE
		tt_linkedlist()
		{
			head = NULL;
			tail = NULL;
			current = NULL;
		}		
		
		~tt_linkedlist()
		{
			;
		}
		

		// LINKED LIST OPERATIONS
		
		
		/**	remove all elements from the list
		*/
		void clear()
		{
			;
		}
		
		/**
			add to the end of the linked list
		*/
		void append(tt_element &elem)
		{
			;
		}
		
		
		/**
			@param previous_elem : the key after which to insert this element
		*/
		void insert_after(tt_element &previous_elem, tt_element &elem)
		{
			;
		}
		
		
		void remove(tt_element &elem)
		{
			;
		}
		
		
		tt_element* findbyindex(tt_uint index)
		{
			;
		}
		
		
		// sort();
		// do_function_on_all();
		// etc.
};



#endif // TT_LINKEDLIST_HEADER
