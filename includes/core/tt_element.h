/* tt_element
 *
 * An element which is used by tt_linklist
 * Copyright © 2007 by Timothy Place
 */

#ifndef TT_LINKEDLIST_HEADER
#define TT_LINKEDLIST_HEADER

#include "tt_base.h"
#include "tt_atom.h"

/****************************************************************************************************/
// Class Specification

class tt_element : tt_base {

	protected:		
		// Standard members for doubly-linked list
		tt_tagged_atom	*values;			// values are stored as an array of elements
		tt_uint16		 value_count;		// number of elements
		tt_linkedlist	*next;
		tt_linkedlist	*prev;

	public:
		
		// LIFE CYCLE
		tt_linkedlist()
		{
			next = NULL;
			prev = NULL;
			values = NULL;
			value_count = 0;
		}		
		
		~tt_linkedlist()
		{
			;
		}
		
		
		// DATA ACCESSORS
		tt_err add_value(char *key, t_atom &value)
		{
			// 1. Check for an existing key with this name, if there is one then we update it
			;
			// 2. Otherwise we grow our list and add it
			;
		}
		
		/*
			@param remove_all - by default we remove only the first existing element with this name
								it is possible that there could be other keys with the same name
		*/
		tt_err remove_value(char *key, t_atom &value, bool remove_all = false)
		{
			// 1. Look for key with this name, if it exists then we delete it and shrink the list 
			// 		- ick maybe this list really needs to be a linked list itself?
			//	 	- ideally this list would actually be a hashtab...
		}


		// bool does_value_exist(value);
		// bool does_key_exist(key);
		// tt_atom get_value_for_key(const tt_atom &key);
		// tt_atom get_keys_for_value();
		// etc.
};



#endif // TT_LINKEDLIST_HEADER
