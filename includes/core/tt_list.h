/* tt_list
 *
 * A base class for linked lists
 * It may be used as is, or it may be subclassed for specific functionality
 * 
 * Copyright © 2007 by Timothy Place
 */

#ifndef TT_LINKEDLIST_HEADER
#define TT_LINKEDLIST_HEADER

#include "tt_base.h"
#include "tt_list_element.h"

/****************************************************************************************************/
// Class Specification

class tt_list : tt_base {

	protected:		
		// Standard members for doubly-linked list
		tt_list_element		*head;
		tt_list_element		*tail;
		tt_list_element		*current;
		tt_uint16	 	 count;		///< number of elements in the linked list
		
	public:
		
		// LIFE CYCLE
		tt_list()
		{
			head = NULL;
			tail = NULL;
			current = NULL;
			count = 0;
		}		
		
		~tt_list()
		{
			clear();
		}
		

		// LINKED LIST OPERATIONS
		
		/**	remove all elements from the list
		*/
		void clear()
		{
			current = head;
			while(current){
				delete current;
				current = current->next;
			}
			head = NULL;
			tail = NULL;
			current = NULL;
			count = 0;
		}
		
		
		/**
			add to the end of the linked list
		*/
		void append(tt_list_element *elem)
		{
			if(!head){	// head is null -- this is the first item
				head = elem;
				head->prev = NULL;
				head->next = NULL;
				tail = elem;
				current = head;
			}
			else{
				elem->next = NULL;
				elem->prev = tail;
				tail = elem;
			}
		}
		
		
		tt_list_element *next()
		{
			tt_list_element *value = current;
			current = current->next;
			return value;
		}


		tt_list_element *prev()
		{
			tt_list_element *value = current;
			current = current->prev;
			return value;
		}
		
		
		/**
			@param previous_elem : the key after which to insert this element
		*/
		void insert_after(tt_list_element &previous_elem, tt_list_element &elem)
		{
			;
		}
		
		
		void remove(tt_list_element &elem)
		{
			;
		}
		
		
		tt_list_element* findbyindex(tt_uint16 index)
		{
			tt_list_element *x;
			//TODO: implement!
			return x;
		}
		

		// sort();
		// do_function_on_all();		
};



#endif // TT_LINKEDLIST_HEADER
