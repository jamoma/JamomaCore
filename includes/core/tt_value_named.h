/* tt_value_named
 *
 * A class that represents a named data element as a key-value pair
 * Copyright © 2007 by Timothy Place
 */

#ifndef TT_TAGGED_ATOM_HEADER
#define TT_TAGGED_ATOM_HEADER

#include "tt_base.h"
#include "tt_value.h"


/****************************************************************************************************/
// Class Specification

class tt_value_named : tt_base {

	private:
	public:
		tt_char		key[64];
		tt_value		value;

		
		// LIFE CYCLE
		tt_value_named()
		{
			key[0] = 0;
			value = 0;
		}
		
		tt_value_named(tt_string initial_key)
		{
			strcpy(key, initial_key);
			value = 0;
		}


		tt_value_named(tt_string initial_key, tt_value initial_value)
		{
			strcpy(key, initial_key);
			value = initial_value;
		}


		~tt_value_named()
		{
			;
		}
		
		
		void set(char *newkey, tt_value &newvalue)
		{
			strcpy(key, newkey);
			value = newvalue;
		}


		void set(tt_value &newvalue)
		{
			value = newvalue;
		}
		
};



#endif // TT_TAGGED_ATOM_HEADER
