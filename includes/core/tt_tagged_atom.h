/* tt_tagged_atom
 *
 * A class that represents a named data element as a key-value pair
 * Copyright © 2007 by Timothy Place
 */

#ifndef TT_TAGGED_ATOM_HEADER
#define TT_TAGGED_ATOM_HEADER

#include "tt_base.h"
#include "tt_atom.h"


/****************************************************************************************************/
// Class Specification

class tt_tagged_atom : tt_base {

	private:
	public:
		tt_char		key[64];
		tt_atom		value;

		
		// LIFE CYCLE
		tt_tagged_atom()
		{
			key[0] = 0;
			value = 0;
		}
		
		tt_tagged_atom(tt_string initial_key)
		{
			strcpy(key, initial_key);
			value = 0;
		}


		tt_tagged_atom(tt_string initial_key, tt_atom initial_value)
		{
			strcpy(key, initial_key);
			value = initial_value;
		}


		~tt_tagged_atom()
		{
			;
		}
		
		
		void set(char *newkey, tt_atom &newvalue)
		{
			strcpy(key, newkey);
			value = newvalue;
		}


		void set(tt_atom &newvalue)
		{
			value = newvalue;
		}
		
};



#endif // TT_TAGGED_ATOM_HEADER
