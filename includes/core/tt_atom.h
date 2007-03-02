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
		enum data_type{
			type_pointer = 0,
			type_char,
			type_string,
			type_int8,
			type_int16,
			type_int32,
			type_int64,
			type_uint8,
			type_uint16,
			type_uint32,
			type_uint64,
			type_float32,
			type_float64
		};

	private:
		union data_value{
			tt_ptr		val_pointer;
			tt_char		val_char;
			tt_string	val_string;
			tt_int8		val_int8;
			tt_int16	val_int16;
			tt_int32	val_int32;
			tt_int64	val_int64;
			tt_uint8	val_uint8;
			tt_uint16	val_uint16;
			tt_uint32	val_uint32;
			tt_uint64	val_uint64;
			tt_float32	val_float32;
			tt_float64	val_float64;
		};

		data_type	*type;			// array of types
		data_value	*data;			// array of values
		tt_uint16	num_values;		// number of values

	public:
		
		// LIFE CYCLE
		// Note: a single atom can be statically allocated, but an array must be dynamically allocated
		//	An array is perhaps a linked list?  Or is it a genuine array?  
		tt_atom()
		{
			data = new data_value;
			data->val_float32 = 0;
			type = new data_type;
			*type = type_float32;
			num_values = 1;
		}
		
		tt_atom(tt_char value)
		{
			data = new data_value;
			data->val_char = value;
			type = new data_type;
			*type = type_char;
			num_values = 1;
		}

		tt_atom(tt_int8 value)
		{
			data = new data_value;
			data->val_int8 = value;
			type = new data_type;
			*type = type_int8;
			num_values = 1;
		}

		tt_atom(tt_int16 value)
		{
			data = new data_value;
			data->val_int16 = value;
			type = new data_type;
			*type = type_int16;
			num_values = 1;
		}

		tt_atom(tt_int32 value)
		{
			data = new data_value;
			data->val_int32 = value;
			type = new data_type;
			*type = type_int32;
			num_values = 1;
		}
		tt_atom(int value)				// WARNING -- THIS SHOULD BE DONE DIFFERENTLY???
		{
			data = new data_value;
			data->val_int32 = value;
			type = new data_type;
			*type = type_int32;
			num_values = 1;
		}
		
		tt_atom(tt_int64 value)
		{
			data = new data_value;
			data->val_int64 = value;
			type = new data_type;
			*type = type_int64;
			num_values = 1;
		}
		
		
		tt_atom(tt_uint8 value)
		{
			data = new data_value;
			data->val_uint8 = value;
			type = new data_type;
			*type = type_uint8;
			num_values = 1;
		}

		tt_atom(tt_uint16 value)
		{
			data = new data_value;
			data->val_uint16 = value;
			type = new data_type;
			*type = type_uint16;
			num_values = 1;
		}

		tt_atom(tt_uint32 value)
		{
			data = new data_value;
			data->val_uint32 = value;
			type = new data_type;
			*type = type_uint32;
			num_values = 1;
		}
		
		tt_atom(tt_uint64 value)
		{
			data = new data_value;
			data->val_uint64 = value;
			type = new data_type;
			*type = type_uint64;
			num_values = 1;
		}
		

		tt_atom(tt_float32 value)
		{
			data = new data_value;
			data->val_float32 = value;
			type = new data_type;
			*type = type_float32;
			num_values = 1;
		}
		
		tt_atom(tt_float64 value)
		{
			data = new data_value;
			data->val_float64 = value;
			type = new data_type;
			*type = type_float64;
			num_values = 1;
		}
		
		
		~tt_atom()
		{
			delete type;
			delete data;
		}
		
		
		
		// TYPE ACCESSORS
		// trailing const -- this method can be used on const variables
		data_type get_type() const
		{
			return *type;
		}
		
		void set_type(data_type arg)	// this should never be needed
		{
			*type = arg;
		}
		
		
		tt_uint16 get_num_values() const
		{
			return num_values;
		}
		
		void set_num_values(const tt_uint16 arg)	// this should never be needed
		{
			if(arg > num_values){
				delete type;
				delete data;
				type = new data_type[arg];
				data = new data_value[arg];
			}
			num_values = arg;
		}
		



		tt_atom& operator = (const tt_atom &a){
			type = a.type;
			data = a.data;
			return *this;
		}
		


		#pragma mark -
		#pragma mark VALUE ACCESSORS

		#pragma mark -
		#pragma mark Methods for assignment using =

		// INT8
		tt_atom& operator = (tt_int8 value)
		{
			*type = type_int8;
			data->val_int8 = value;
			return *this;
		}

		operator tt_int8() const
		{
			if(*type == type_int8)
				return data->val_int8;
			else{
				// call method for converting data
				return 0;
			}
		}

		// INT16
		tt_atom& operator = (tt_int16 value)
		{
			*type = type_int16;
			data->val_int16 = value;
			return *this;
		}

		operator tt_int16() const
		{
			if(*type == type_int16)
				return data->val_int16;
			else{
				// call method for converting data
				return 0;
			}
		}
		
		// INT32
		tt_atom& operator = (tt_int32 value)
		{
			*type = type_int32;
			data->val_int32 = value;
			return *this;
		}

		operator tt_int32() const
		{
			if(*type == type_int32)
				return data->val_int32;
			else{
				// call method for converting data
				return 0;
			}
		}

		tt_atom& operator = (int value)
		{
			*type = type_int32;
			data->val_int32 = value;
			return *this;
		}

		operator int() const
		{
			if(*type == type_int32)
				return data->val_int32;
			else{
				// call method for converting data
				return 0;
			}
		}

		// INT64
		tt_atom& operator = (tt_int64 value)
		{
			*type = type_int64;
			data->val_int64 = value;
			return *this;
		}

		operator tt_int64() const
		{
			if(*type == type_int64)
				return data->val_int64;
			else{
				// call method for converting data
				return 0;
			}
		}

		// UINT8
		tt_atom& operator = (tt_uint8 value)
		{
			*type = type_uint8;
			data->val_uint8 = value;
			return *this;
		}

		operator tt_uint8() const
		{
			if(*type == type_uint8)
				return data->val_uint8;
			else{
				// call method for converting data
				return 0;
			}
		}

		tt_atom& operator = (bool value)
		{
			*type = type_uint8;
			data->val_uint8 = value;
			return *this;
		}

		operator bool() const
		{
			if(*type == type_uint8)
				return data->val_uint8;
			else{
				// call method for converting data
				return 0;
			}
		}

		// UINT16
		tt_atom& operator = (tt_uint16 value)
		{
			*type = type_uint16;
			data->val_uint16 = value;
			return *this;
		}

		operator tt_uint16() const
		{
			if(*type == type_uint16)
				return data->val_uint16;
			else{
				// call method for converting data
				return 0;
			}
		}

		// UINT32
		tt_atom& operator = (tt_uint32 value)
		{
			*type = type_uint32;
			data->val_uint32 = value;
			return *this;
		}

		operator tt_uint32() const
		{
			if(*type == type_uint32)
				return data->val_uint32;
			else{
				// call method for converting data
				return 0;
			}
		}

		// UINT64
		tt_atom& operator = (tt_uint64 value)
		{
			*type = type_uint64;
			data->val_uint64 = value;
			return *this;
		}

		operator tt_uint64() const
		{
			if(*type == type_uint64)
				return data->val_uint64;
			else{
				// call method for converting data
				return 0;
			}
		}

		// FLOAT32
		tt_atom& operator = (tt_float32 value) 
		{
			*type = type_float32;
			data->val_float32 = value;
			return *this;
		}

		operator tt_float32() const
		{
			if(*type == type_float32)
				return data->val_float32;
			else{
				// call method for converting data
				return 0;
			}
		}

		// FLOAT64
		tt_atom& operator = (tt_float64 value)
		{
			*type = type_float64;
			data->val_float64 = value;
			return *this;
		}

		operator tt_float64() const
		{
			if(*type == type_float64)
				return data->val_float64;
			else{
				// call method for converting data
				return 0;
			}
		}


		#pragma mark -
		#pragma mark set() methods
		// Should we automatically size to the correct number of values if a higher index comes in?
		void set(tt_uint16 index, const tt_int8 value)
		{
			*type = type_int8;
			data->val_int8 = value;
		}

		void set(tt_uint16 index, const tt_int16 value)
		{
			*type = type_int16;
			data->val_int16 = value;
		}

		void set(tt_uint16 index, const tt_int32 value)
		{
			*type = type_int32;
			data->val_int32 = value;
		}
		void set(tt_uint16 index, const int value)
		{
			*type = type_int32;
			data->val_int32 = value;
		}

		void set(tt_uint16 index, const tt_int64 value)
		{
			*type = type_int64;
			data->val_int64 = value;
		}

		void set(tt_uint16 index, const tt_uint8 value)
		{
			*type = type_uint8;
			data->val_uint8 = value;
		}

		void set(tt_uint16 index, const tt_uint16 value)
		{
			*type = type_uint16;
			data->val_uint16 = value;
		}

		void set(tt_uint16 index, const tt_uint32 value)
		{
			*type = type_uint32;
			data->val_uint32 = value;
		}

		void set(tt_uint16 index, const tt_uint64 value)
		{
			*type = type_uint64;
			data->val_uint64 = value;
		}

		void set(tt_uint16 index, const tt_float32 value)
		{
			*type = type_float32;
			data->val_float32 = value;
		}

		void set(tt_uint16 index, const tt_float64 value)
		{
			*type = type_float64;
			data->val_float64 = value;
		}



		#pragma mark -
		#pragma mark set() methods
		// THESE FUNCTIONS CURRENTLY DO NO TYPE OR BOUNDS CHECKING !!!
		// Should an error be returned on failure?
		void get(tt_uint16 index, tt_int8 &value) const
		{
			if(*type == type_int8)
				value = (data+index)->val_int8;
			else
				value = 0;
		}

		void get(tt_uint16 index, tt_int16 &value) const
		{
			if(*type == type_int16)
				value = (data+index)->val_int16;
			else
				value = 0;
		}

		void get(tt_uint16 index, tt_int32 &value) const
		{
			if(*type == type_int32)
				value = (data+index)->val_int32;
			else
				value = 0;
		}
		void get(tt_uint16 index, int &value) const
		{
			if(*type == type_int32)
				value = (data+index)->val_int32;
			else
				value = 0;
		}

		void get(tt_uint16 index, tt_int64 &value) const
		{
			if(*type == type_int64)
				value = (data+index)->val_int64;
			else
				value = 0;
		}

		void get(tt_uint16 index, tt_uint8 &value) const
		{
			if(*type == type_uint8)
				value = (data+index)->val_uint8;
			else
				value = 0;
		}

		void get(tt_uint16 index, tt_uint16 &value) const
		{
			if(*type == type_uint16)
				value = (data+index)->val_uint16;
			else
				value = 0;
		}

		void get(tt_uint16 index, tt_uint32 &value) const
		{
			if(*type == type_uint32)
				value = (data+index)->val_uint32;
			else
				value = 0;
		}

		void get(tt_uint16 index, tt_uint64 &value) const
		{
			if(*type == type_uint64)
				value = (data+index)->val_uint64;
			else
				value = 0;
		}

		void get(tt_uint16 index, tt_float32 &value) const
		{
			if(*type == type_float32)
				value = (data+index)->val_float32;
			else
				value =  0;
		}

		void get(tt_uint16 index, tt_float64 &value) const
		{
			if(*type == type_float64)
				value = (data+index)->val_float64;
			else
				value = 0;
		}






		// make sure this is a friend so that it can access the private members of the other atom
		friend bool operator == (const tt_atom &a1, const tt_atom &a2){
			// NEEDS PROPER IMPLEMENTATION STILL
			return false;
		}

};



#endif // TT_ATOM_HEADER
