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
#include "tt_value.h"

/****************************************************************************************************/
// Class Specification

class tt_attribute : tt_base {

	private:
		tt_value		value;
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
		set(tt_value arg&) const
		{
			return default_setter(arg);
		}
		
		tt_value& get()
		{
			return default_getter();
		}

		
		// DEFAULT ACCESSORS
		// trailing const -- this method can be used on const variables
		default_setter(tt_value arg&) const
		{
			value = arg;
		}
		
		tt_value& default_getter()
		{
			return &value;
		}

		

};



#endif // TT_ATTRIBUTE_HEADER
