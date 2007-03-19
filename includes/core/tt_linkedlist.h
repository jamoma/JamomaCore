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
#include "tt_atom.h"

/****************************************************************************************************/
// Class Specification

class tt_linkedlist : tt_base {

	private:
		// Our linked list contains both a key and a value, much like a hash table
		// This makes it possible to look up values using an identifier if that
		// functionality is desired.
		//
		// !!! BUT -- As a base class, perhaps these shouldn't be here !!!
		tt_atom			key;
		tt_atom			value;

// !!! RECOMMENDATION !!!
//	implement the above in a class called tt_linkedlist, which derives from
//	a new class called tt_linkedlistbase
		
		// Standard members for doubly-linked list
		// Should these be public?  I think so (for debugging among other things)
		tt_linkedlist	*next;
		tt_linkedlist	*prev;
		tt_linkedlist	*head;
		tt_linkedlist	*tail;

	public:
		
		// LIFE CYCLE
		tt_attr()
		{
			;
		}		
		
		~tt_attr()
		{
			;
		}
		
		// ACCESSORS
		// function pointers call the actual setter and getter
		set(tt_atom arg&) const
		{
			return default_setter(arg);
		}
		
		tt_atom& get()
		{
			return default_getter();
		}

		
		// DEFAULT ACCESSORS
		// trailing const -- this method can be used on const variables
		default_setter(tt_atom arg&) const
		{
			value = arg;
		}
		
		tt_atom& default_getter()
		{
			return &value;
		}


		// sort();
		// do_function_on_all();
		// bool does_value_exist(value);
		// bool does_key_exist(key);
		// tt_atom get_value_for_key(const tt_atom &key);
		// tt_atom get_keys_for_value();
		// etc.
};



#endif // TT_LINKEDLIST_HEADER
