/* 
 * TTBlue Class for representing Values
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_VALUE_H__
#define __TT_VALUE_H__

#include "TTElement.h"


/** A type that can be used to store a pointer to a message */
typedef TTErr (TTMessageMethod)(TTSymbol& name, TTValue& value);

// macro for converting from one type to another regardless of type
#define	CONVERT switch(*(type+index)){\
			case kTypeFloat32:\
				value = (data+index)->float32;\
				break;\
			case kTypeFloat64:\
				value = (data+index)->float64;\
				break;\
			case kTypeInt32:\
				value = (data+index)->int32;\
				break;\
			case kTypeUInt32:\
				value = (data+index)->uint32;\
				break;\
			case kTypeInt64:\
				value = (data+index)->int64;\
				break;\
			case kTypeUInt64:\
				value = (data+index)->uint64;\
				break;\
			default:\
				value = -1;\
				break;\
		}



/****************************************************************************************************/
// Class Specification

/**	The TTValue class represents a value that can be passed around to functions in TTBlue.  It may be a
 *	single value, or an array of homogenous values.  It maybe one of a number of types defined in the 
 *	DataType enumeration.
 */

class TTValue : TTElement {
public:
	enum DataType{
		kTypeNone = 0,
		kTypeFloat32,
		kTypeFloat64,
		kTypeInt32,
		kTypeUInt32,
		kTypeInt64,
		kTypeUInt64,
		kTypeObject,
		kTypeBoolean,
		kTypeMessage
	};

private:
	union DataValue{
		TTFloat32	float32;
		TTFloat64	float64;
		TTInt32		int32;
		TTUInt32	uint32;
		TTInt64		int64;
		TTUInt64	uint64;
		TTObject	*object;
		TTBoolean	boolean;
		TTMessage	message;
	};
		
	DataType	*type;			///< array of types
	DataValue	*data;			///< array of values
	TTUInt16	numValues;		///< number of values
	

public:
	/** Constructors */
	TTValue();
	TTValue(TTFloat32 initialValue);
	TTValue(TTFloat64 initialValue);
	TTValue(TTInt32 initialValue);
	TTValue(TTUInt32 initialValue);
	TTValue(TTInt64 initialValue);
	TTValue(TTUInt64 initialValue);
	TTValue(TTObject& anObject);
	TTValue(TTBoolean initialValue);

	/** Destructors */
	virtual ~TTValue();

	
	/** Return the type of this value. */
	data_type getType() const;		// trailing const -- this method can be used on const variables
	
	/** Return the number of values of this instance. */
	tt_uint16 getNumValues() const;
	
private:
	/** Internal method for setting the type of a value. */
	void setType(data_type arg);
	
	/** Internal method for setting the number of values, and allocating any needed memory. */	
	void setNumValues(const tt_uint16 arg);
	
public:
	TTValue& operator = (const TTValue &newValue);
	
	// FLOAT32
	TTValue& operator = (TTFloat32 value);
	operator TTFloat32() const;

	// FLOAT64
	TTValue& operator = (TTFloat64 value);
	operator TTFloat64() const;

	// INT32
	TTValue& operator = (TTInt32 value);
	operator TTInt32() const;
	TTValue& operator = (int value);
	operator int() const;

	// UINT32
	TTValue& operator = (tt_uint32 value);
	operator tt_uint32() const;

	// INT64
	TTValue& operator = (int64 value);
	operator tt_int64() const;

	// UINT64
	TTValue& operator = (tt_uint64 value);
	operator TTUInt64() const;


	void set(TTUInt16 index, const TTFloat32 value);
	void set(TTUInt16 index, const TTFloat64 value);
	void set(TTUInt16 index, const TTInt32 value);
	void set(TTUInt16 index, const int value);
	void set(TTUInt16 index, const TTUInt32 value);
	void set(TTUInt16 index, const TTInt64 value);
	void set(TTUInt16 index, const TTUInt64 value);


	// THESE FUNCTIONS CURRENTLY DO NO TYPE OR BOUNDS CHECKING !!!
	// Should an error be returned on failure?
	void get(TTUInt16 index, TTFloat32 &value) const;
	void get(TTUInt16 index, TTFloat64 &value) const;
	void get(TTUInt16 index, TTInt32 &value) const;
	void get(TTUInt16 index, int &value) const;
	void get(TTUInt16 index, TTUInt32 &value) const;
	void get(TTUInt16 index, TTInt64 &value) const;
	void get(TTUInt16 index, TTUInt64 &value) const;


	// make sure this is a friend so that it can access the private members of the other atom
	friend bool operator == (const TTValue &a1, const TTValue &a2);
	
/*
		// This method is the basis of the macro at the top of this file
		// substitute this method for the macro if it needs to be debugged...
		
		void get_converted_value(tt_uint8 &value, tt_uint16 index) const
		{
			switch(*(type+index)){
				case type_int8:
					value = (data+index)->val_int8;
					break;
				case type_int16:
					value = (data+index)->val_int16;
					break;
				case type_int32:
					value = (data+index)->val_int32;
					break;
				case type_uint8:
					value = (data+index)->val_uint8;
					break;
				case type_uint16:
					value = (data+index)->val_uint16;
					break;
				case type_uint32:
					value = (data+index)->val_uint32;
					break;
				case type_float32:
					value = (data+index)->val_float32;
					break;
				case type_float64:
					value = (data+index)->val_float64;
					break;
				// we don't cast the pointer to other types...
				//case type_pointer:
				//	value = (data+index)->val_pointer;
				//	break;
				case type_char:
					value = (data+index)->val_char;
					break;
			}
		}
*/

	
};


#endif // __TT_VALUE_H__

