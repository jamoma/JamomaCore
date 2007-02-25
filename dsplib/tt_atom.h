/* tt_atom
 *
 * A class that represents a data element
 * The atom can be a container that holds other atoms, and thus atoms may form trees
 * 
 * This datatype is used for passing values in other TT classes
 * Copyright © 2007 by Timothy Place
 */

#ifndef TT_ATOM_HEADER
#define TT_ATOM_HEADER

#include "tt_base.h"

/****************************************************************************************************/
// Class Specification

class tt_atom : tt_base {
	public:
		enum types{
			pointer = 0,
			char,
			string,
			int8,
			int16,
			int32,
			int64
			uint8,
			uint16,
			uint32,
			uint64,
			float32,
			float64,
			array
		};

	private:
		union data{
			tt_pointer	d_pointer;
			tt_char		d_char;
			tt_string,
			int8,
			int16,
			int32,
			int64
			uint8,
			uint16,
			uint32,
			uint64,
			float32,
			float64,
			tt_pointer	d_array;
		};

		types		type;			// what kind of data is in this tt_atom?
		tt_uint16	num_atoms;		// if this contains an array of other tt_atoms, the number of tt_atoms

	public:
		
		// LIFE CYCLE
		// Note: a single atom can be statically allocated, but an array must be dynamically allocated
		//	An array is perhaps a linked list?  Or is it a genuine array?  
		tt_atom()
		{
			;
		}
		
		~tt_atom()
		{
			;
		}
		
		// TYPE ACCESSORS
		types get_type()
		{
			return type;
		}
		
		void set_type(types arg)
		{
			type = arg;
		}
		
		// DATA ACCESSORS
		// When the type is an array, how do we access individual members?  how do we insert, push, and pop?
/*		tt_float32 get_float32()
		{
			;
		}
		
		void set_float32(tt_float32)
		{
			;
		}
*/	
	// !!! Can these just be set automatically using assignments?

		tt_int32 operator = (const tt_atom& a){
			if(type == int32)
				return data.int32;
			else{
				// call method for converting data
			}
		}
		
		tt_atom& operator = (tt_int32 value){
			type = int32;
			data.int32 = value;
			return *this;
		}

		
		tt_float32 operator = (const tt_atom& a){
			if(type == float32)
				return data.float32;
			else{
				// call method for converting data
			}
		}
		
		tt_atom& operator = (tt_float32 value){
			type = float32;
			data.float32 = value;
			return *this;
		}

};



#endif // TT_ATOM_HEADER
