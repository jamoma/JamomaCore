/* tt_element
 *
 * A class that represents a named data element as a key-value pair
 * Copyright © 2007 by Timothy Place
 */

#ifndef TT_ELEMENT_HEADER
#define TT_ELEMENT_HEADER

#include "tt_base.h"
#include "tt_atom.h"


/****************************************************************************************************/
// Class Specification

class tt_element : tt_base {

	private:
		tt_char		key[64];
		tt_atom		value;

	public:
		
		// LIFE CYCLE
		tt_element()
		{
			key[0] = 0;
			value = 0;
		}
		
		tt_element(tt_string initial_key, tt_atom initial_value)
		{
			strcpy(key, initial_key)
			value = initial_value;
		}


		~tt_element()
		{
			;
		}
		
};



#endif // TT_ELEMENT_HEADER
