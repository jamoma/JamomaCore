



// PROBABLY NOT GOING TO USE THIS !


/* a linked list built using tt_linkedlist
 * 
 * Copyright © 2007 by Timothy Place
 */

#ifndef TT_ELEMENTLIST_HEADER
#define TT_ELEMENTLIST_HEADER

#include "tt_base.h"
#include "tt_atom.h"

/****************************************************************************************************/
// Class Specification

class tt_elementlist : tt_linkedlist {

	private:
		// Our linked list contains both a key and a value, much like a hash table
		// This makes it possible to look up values using an identifier if that
		// functionality is desired.
		tt_element		*element;

	public:
		
		// LIFE CYCLE
		tt_elementlist()
		{
			element = NULL;
		}		
		
		~tt_elementlist()
		{
			;
		}
		
};


#endif // TT_ELEMENTLIST_HEADER
