/* tt_attribute
 *
 * A class that represents an attribute
 * 
 * 
 * 
 * Copyright © 2007 by Timothy Place
 */

#ifndef TT_ATTRIBUTE_HEADER
#define TT_ATTRIBUTE_HEADER

#include "tt_base.h"
#include "tt_atom.h"

/****************************************************************************************************/
// Class Specification

class tt_attribute : tt_base {

	private:
		tt_atom		value;
		//			setter;	// pointer to setter
		//			getter; // pointer to getter

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

		

};



#endif // TT_ATTRIBUTE_HEADER
