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
#include "TTSymbol.h"


class TTObject;


// macro for converting from one type to another regardless of type
#define	CONVERT(dType) switch(*(type+index)){\
			case kTypeInt8:\
				value = (dType)(data+index)->int8;\
				break;\
			case kTypeUInt8:\
				value = (dType)(data+index)->uint8;\
				break;\
			case kTypeInt16:\
				value = (dType)(data+index)->int16;\
				break;\
			case kTypeUInt16:\
				value = (dType)(data+index)->uint16;\
				break;\
			case kTypeFloat32:\
				value = (dType)(data+index)->float32;\
				break;\
			case kTypeFloat64:\
				value = (dType)(data+index)->float64;\
				break;\
			case kTypeInt32:\
				value = (dType)(data+index)->int32;\
				break;\
			case kTypeUInt32:\
				value = (dType)(data+index)->uint32;\
				break;\
			case kTypeInt64:\
				value = (dType)(data+index)->int64;\
				break;\
			case kTypeUInt64:\
				value = (dType)(data+index)->uint64;\
				break;\
			case kTypeBoolean:\
				value = (dType)(data+index)->boolean;\
				break;\
			default:\
				value = (dType)-1;\
				break;\
		}



/****************************************************************************************************/
// Class Specification

/**	The TTValue class represents a value that can be passed around to functions in TTBlue.  It may be a
 *	single value, or an array of homogenous values.  It maybe one of a number of types defined in the 
 *	DataType enumeration.
 */
class TTEXPORT TTValue : TTElement {
private:
	union DataValue{
		TTFloat32		float32;
		TTFloat64		float64;
		TTInt8			int8;
		TTUInt8			uint8;
		TTInt16			int16;
		TTUInt16		uint16;
		TTInt32			int32;
		TTUInt32		uint32;
		TTInt64			int64;
		TTUInt64		uint64;
		TTBoolean		boolean;
		TTSymbolPtr		sym;
		TTString*		stringPtr;	///< We keep the string as a pointer instead of a direct member so that the size of the union is kept to 64-bits.
		TTObject*		object;
		TTPtr			ptr;
	};
		
	TTDataType*	type;			///< array of types
	DataValue*	data;			///< array of values
	TTBoolean*	numerical;		///< array of indicators for whether or not the type is numerical
	TTUInt16	numValues;		///< number of values
	TTBoolean	stringsPresent;	///< are there any values which are strings?  if so they need special handling when it is time to free them.

public:
	/** Constructors. */
	//	There are a lot of constructors defined with duplication of code being a concern.
	//	Attempts at using C++ templates for the constructor works on Windows but provides
	//	excessive amounts of grief when linking on the Mac.
	TTValue();
	TTValue(TTFloat32 initialValue);
	TTValue(TTFloat64 initialValue);
	TTValue(TTInt8 initialValue);
	TTValue(TTUInt8 initialValue);
	TTValue(TTInt16 initialValue);
	TTValue(TTUInt16 initialValue);
	TTValue(TTInt32 initialValue);
	TTValue(TTUInt32 initialValue);
	TTValue(TTInt64 initialValue);
	TTValue(TTUInt64 initialValue);
	TTValue(TTBoolean initialValue);
	TTValue(TTSymbolPtr initialValue);
	TTValue(TTString& initialValue);
	TTValue(const TTObject& initialValue);
	TTValue(TTPtr initialValue);
	
	TTValue(TTFloat64 initialValue1, TTFloat64 initialValue2);
	
	/** Copy constructor */
	TTValue(const TTValue& obj);

	/** Destructors */
	virtual ~TTValue();

	
	/** Return this value to NULL state (no values) */
	void clear();
	
	/** Return the type of this value. */
	TTDataType getType() const;		// trailing const -- this method can be used on const variables

	/** Return the type of a particular member of this value (assuming it is an array). */
	TTDataType getType(TTUInt16 index) const;

private:
	/** Internal method used by the constructors. */
	void init();

	/** Internal method for setting the type of a value. */
	void setType(TTDataType arg);
	
	/** Performs a deep copy of the object */
	inline void copy(const TTValue& obj);
	
public:
	/** Return the number of values of this instance. */
	TTUInt16 getSize() const;
	
	/** Set the number of values, and allocate any needed memory. */	
	void setSize(const TTUInt16 arg);
	
	TTValue& operator = (const TTValue &newValue);
	
	// FLOAT32
	TTValue& operator = (TTFloat32 value);
	operator TTFloat32() const;

	// FLOAT64
	TTValue& operator = (TTFloat64 value);
	operator TTFloat64() const;

	// INT8
	TTValue& operator = (TTInt8 value);
	operator TTInt8() const;

	// UINT8
	TTValue& operator = (TTUInt8 value);
	operator TTUInt8() const;

	// INT16
	TTValue& operator = (TTInt16 value);
	operator TTInt16() const;

	// UINT16
	TTValue& operator = (TTUInt16 value);
	operator TTUInt16() const;

	// INT32
	TTValue& operator = (TTInt32 value);
	operator TTInt32() const;

	// UINT32
	TTValue& operator = (TTUInt32 value);
	operator TTUInt32() const;

	// INT64
	TTValue& operator = (TTInt64 value);
	operator TTInt64() const;

	// UINT64
	TTValue& operator = (TTUInt64 value);
	operator TTUInt64() const;

	// BOOLEAN
	TTValue& operator = (TTBoolean value);
	operator TTBoolean() const;

	// SYMBOL
	TTValue& operator = (TTSymbol* value);
	operator TTSymbol*() const;
	
	// STRING
	TTValue& operator = (TTString& value);
	operator TTString&() const;
	
	// OBJECT
	TTValue& operator = (TTObject& value);
	operator TTObject&() const;
	TTValue& operator = (TTObject* value);
	operator TTObject*() const;

	// GENERIC POINTER
	TTValue& operator = (TTPtr value);
	operator TTPtr() const;
	
	void set(TTUInt16 index, const TTFloat32 newValue);
	void set(TTUInt16 index, const TTFloat64 newValue);
	void set(TTUInt16 index, const TTInt8 newValue);
	void set(TTUInt16 index, const TTUInt8 newValue);
	void set(TTUInt16 index, const TTInt16 newValue);
	void set(TTUInt16 index, const TTUInt16 value);
	void set(TTUInt16 index, const TTInt32 newValue);
	void set(TTUInt16 index, const TTUInt32 newValue);
	void set(TTUInt16 index, const TTInt64 newValue);
	void set(TTUInt16 index, const TTUInt64 newValue);
	void set(TTUInt16 index, const TTBoolean newValue);
	void set(TTUInt16 index, const TTSymbol* newValue);
	void set(TTUInt16 index, const TTString& newValue);
	void set(TTUInt16 index, const TTObject& newValue);
	void set(TTUInt16 index, const TTPtr newValue);


	// THESE FUNCTIONS CURRENTLY DO NO TYPE OR BOUNDS CHECKING !!!
	// Should an error be returned on failure?
	void get(TTUInt16 index, TTFloat32 &value) const;
	void get(TTUInt16 index, TTFloat64 &value) const;
	void get(TTUInt16 index, TTInt8 &value) const;
	void get(TTUInt16 index, TTUInt8 &value) const;
	void get(TTUInt16 index, TTInt16 &value) const;
	void get(TTUInt16 index, TTUInt16 &value) const;
	void get(TTUInt16 index, TTInt32 &value) const;
	void get(TTUInt16 index, TTUInt32 &value) const;
	void get(TTUInt16 index, TTInt64 &value) const;
	void get(TTUInt16 index, TTUInt64 &value) const;
	void get(TTUInt16 index, TTBoolean &value) const;
	void get(TTUInt16 index, TTSymbol** value) const;
	void get(TTUInt16 index, TTString& value) const;
	void get(TTUInt16 index, TTObject& value) const;
	void get(TTUInt16 index, TTObject** value) const;
	void get(TTUInt16 index, TTPtr* value) const;


	void append(const TTFloat32 newValue);
	void append(const TTFloat64 newValue);
	void append(const TTInt8 newValue);
	void append(const TTUInt8 newValue);
	void append(const TTInt16 newValue);
	void append(const TTUInt16 value);
	void append(const TTInt32 newValue);
	void append(const TTUInt32 newValue);
	void append(const TTInt64 newValue);
	void append(const TTUInt64 newValue);
	void append(const TTBoolean newValue);
	void append(const TTSymbol* newValue);
	void append(const TTString& newValue);
	void append(const TTObject& newValue);
	void append(const TTPtr newValue);
	void append(const TTValue* newValue);


// TODO: implement this!	
//	TTValue& operator [] (int)

	// make sure this is a friend so that it can access the private members of the other atom
	friend bool operator == (const TTValue &a1, const TTValue &a2)
	{
		short 	i;

		if(a1.numValues != a2.numValues)
			return false;

		for(i=0; i < a1.numValues; i++){
			if(a1.type[i] != a2.type[i])
				return false;
			else{
				switch(a1.type[i]){
					case kTypeInt8:
						if( (a1.data+i)->int8 != (a1.data+i)->int8 )
							return false;
						break;
					case kTypeUInt8:
						if( (a1.data+i)->uint8 != (a1.data+i)->uint8 )
							return false;
						break;
					case kTypeInt16:
						if( (a1.data+i)->int16 != (a1.data+i)->int16 )
							return false;
						break;
					case kTypeUInt16:
						if( (a1.data+i)->uint16 != (a1.data+i)->uint16 )
							return false;
						break;
					case kTypeInt32:
						if( (a1.data+i)->int32 != (a1.data+i)->int32 )
							return false;
						break;
					case kTypeUInt32:
						if( (a1.data+i)->uint32 != (a1.data+i)->uint32 )
							return false;
						break;
					case kTypeInt64:
						if( (a1.data+i)->int64 != (a1.data+i)->int64 )
							return false;
						break;
					case kTypeUInt64:
						if( (a1.data+i)->uint64 != (a1.data+i)->uint64 )
							return false;
						break;
					case kTypeFloat32:
						if( (a1.data+i)->float32 != (a1.data+i)->float32 )
							return false;
						break;
					case kTypeFloat64:
						if( (a1.data+i)->float64 != (a1.data+i)->float64 )
							return false;
						break;
					case kTypeBoolean:
						if( (a1.data+i)->boolean != (a1.data+i)->boolean )
							return false;
						break;
					case kTypeSymbol:
						if( (a1.data+i)->sym != (a1.data+i)->sym )
							return false;
						break;
					case kTypeString:
						if( *(a1.data+i)->stringPtr != *(a1.data+i)->stringPtr )
							return false;
						break;
					case kTypeObject:
						if( (a1.data+i)->object != (a1.data+i)->object )
							return false;
						break;
					case kTypePointer:
						if( (a1.data+i)->ptr != (a1.data+i)->ptr )
							return false;
						break;
					default:
						return false;
						break;
				}
			}
		}
		return true;
	}
	
	
	/**	In-place method that converts the internal value, if it is a TTString, from a comma-separated-value string into
		an array of TTSymbols.  */
	TTErr transformCSVStringToSymbolArray();
	
	
	void clip(const TTFloat64& lowBound, const TTFloat64& highBound)
	{
		for(TTUInt16 i=0; i<numValues; i++){
			if(TTDataInfo::getIsNumerical(type[i])){
				// TODO: find a way to make this routine faster
				switch(type[i]){
					case kTypeFloat32:
						data[i].float32 = TTClip<TTFloat32>(data[i].float32, (TTFloat32)lowBound, (TTFloat32)highBound);
						break;
					case kTypeFloat64:
						data[i].float64 = TTClip<TTFloat64>(data[i].float64, lowBound, highBound);
						break;
					case kTypeInt8:
						data[i].int8 = TTClip<TTInt8>(data[i].int8, (TTInt8)lowBound, (TTInt8)highBound);
						break;
					case kTypeUInt8:
						data[i].uint8 = TTClip<TTUInt8>(data[i].uint8, (TTUInt8)lowBound, (TTUInt8)highBound);
						break;
					case kTypeInt16:
						data[i].int16 = TTClip<TTInt16>(data[i].int16, (TTInt16)lowBound, (TTInt16)highBound);
						break;
					case kTypeUInt16:
						data[i].uint16 = TTClip<TTUInt16>(data[i].uint16, (TTUInt16)lowBound, (TTUInt16)highBound);
						break;
					case kTypeInt32:
						data[i].int32 = TTClip<TTInt32>(data[i].int32, (TTInt32)lowBound, (TTInt32)highBound);
						break;
					case kTypeUInt32:
						data[i].uint32 = TTClip<TTUInt32>(data[i].uint32, (TTUInt32)lowBound, (TTUInt32)highBound);
						break;
					case kTypeInt64:
						data[i].int64 = TTClip<TTInt64>(data[i].int64, (TTInt64)lowBound, (TTInt64)highBound);
						break;
					case kTypeUInt64:
						data[i].uint64 = TTClip<TTUInt64>(data[i].uint64, (TTUInt64)lowBound, (TTUInt64)highBound);
						break;
					default:
						break;
				}
			}
		}
	}
	
	void cliplow(const TTFloat64& lowBound)
	{
		for(TTUInt16 i=0; i<numValues; i++){
			if(TTDataInfo::getIsNumerical(type[i])){
				// TODO: find a way to make this routine faster
				switch(type[i]){
					case kTypeFloat32:
						data[i].float32 = TTLimitMin<TTFloat32>(data[i].float32, (TTFloat32)lowBound);
						break;
					case kTypeFloat64:
						data[i].float64 = TTLimitMin<TTFloat64>(data[i].float64, lowBound);
						break;
					case kTypeInt8:
						data[i].int8 = TTLimitMin<TTInt8>(data[i].int8, (TTInt8)lowBound);
						break;
					case kTypeUInt8:
						data[i].uint8 = TTLimitMin<TTUInt8>(data[i].uint8, (TTUInt8)lowBound);
						break;
					case kTypeInt16:
						data[i].int16 = TTLimitMin<TTInt16>(data[i].int16, (TTInt16)lowBound);
						break;
					case kTypeUInt16:
						data[i].uint16 = TTLimitMin<TTUInt16>(data[i].uint16, (TTUInt16)lowBound);
						break;
					case kTypeInt32:
						data[i].int32 = TTLimitMin<TTInt32>(data[i].int32, (TTInt32)lowBound);
						break;
					case kTypeUInt32:
						data[i].uint32 = TTLimitMin<TTUInt32>(data[i].uint32, (TTUInt32)lowBound);
						break;
					case kTypeInt64:
						data[i].int64 = TTLimitMin<TTInt64>(data[i].int64, (TTInt64)lowBound);
						break;
					case kTypeUInt64:
						data[i].uint64 = TTLimitMin<TTUInt64>(data[i].uint64, (TTUInt64)lowBound);
						break;
					default:
						break;
				}
			}
		}
	}
	
	void cliphigh(const TTFloat64& highBound)
	{
		for(TTUInt16 i=0; i<numValues; i++){
			if(TTDataInfo::getIsNumerical(type[i])){
				// TODO: find a way to make this routine faster
				switch(type[i]){
					case kTypeFloat32:
						data[i].float32 = TTLimitMax<TTFloat32>(data[i].float32, (TTFloat32)highBound);
						break;
					case kTypeFloat64:
						data[i].float64 = TTLimitMax<TTFloat64>(data[i].float64, highBound);
						break;
					case kTypeInt8:
						data[i].int8 = TTLimitMax<TTInt8>(data[i].int8, (TTInt8)highBound);
						break;
					case kTypeUInt8:
						data[i].uint8 = TTLimitMax<TTUInt8>(data[i].uint8, (TTUInt8)highBound);
						break;
					case kTypeInt16:
						data[i].int16 = TTLimitMax<TTInt16>(data[i].int16, (TTInt16)highBound);
						break;
					case kTypeUInt16:
						data[i].uint16 = TTLimitMax<TTUInt16>(data[i].uint16, (TTUInt16)highBound);
						break;
					case kTypeInt32:
						data[i].int32 = TTLimitMax<TTInt32>(data[i].int32, (TTInt32)highBound);
						break;
					case kTypeUInt32:
						data[i].uint32 = TTLimitMax<TTUInt32>(data[i].uint32, (TTUInt32)highBound);
						break;
					case kTypeInt64:
						data[i].int64 = TTLimitMax<TTInt64>(data[i].int64, (TTInt64)highBound);
						break;
					case kTypeUInt64:
						data[i].uint64 = TTLimitMax<TTUInt64>(data[i].uint64, (TTUInt64)highBound);
						break;
					default:
						break;
				}
			}
		}
	}
	
	void round()
	{
		for(TTUInt16 i=0; i<numValues; i++){
			if(TTDataInfo::getIsNumerical(type[i])){
				// TODO: find a way to make this routine faster
				switch(type[i]){
					case kTypeFloat32:
						data[i].float32 = (TTFloat32)TTRound(data[i].float32);
						break;
					case kTypeFloat64:
						data[i].float64 = TTRound(data[i].float64);
						break;
					case kTypeInt8:
						data[i].int8 = (TTInt8)TTRound(data[i].int8);
						break;
					case kTypeUInt8:
						data[i].uint8 = (TTUInt8)TTRound(data[i].uint8);
						break;
					case kTypeInt16:
						data[i].int16 = (TTInt16)TTRound(data[i].int16);
						break;
					case kTypeUInt16:
						data[i].uint16 = (TTUInt16)TTRound(data[i].uint16);
						break;
					case kTypeInt32:
						data[i].int32 = TTRound(data[i].int32);
						break;
					case kTypeUInt32:
						data[i].uint32 = TTRound(data[i].uint32);
						break;
					case kTypeInt64:
						data[i].int64 = TTRound(data[i].int64);
						break;
					case kTypeUInt64:
						data[i].uint64 = TTRound(data[i].uint64);
						break;
					default:
						break;
				}
			}
		}
	}
	
	void toString()
	{
		TTString*	str = new TTString;
		TTCString	temp;
		
		for(TTUInt16 i=0; i<numValues; i++){
			temp = NULL;
			
			switch(type[i]){
				case kTypeFloat32:
					temp = new char[16];
					snprintf(temp, 16, "%f ", data[i].float32);
					break;
				case kTypeFloat64:
					temp = new char[16];
					snprintf(temp, 16, "%lf ", data[i].float64);
					break;
				case kTypeInt8:
					temp = new char[16];
					snprintf(temp, 16, "%i ", data[i].int8);
					break;
				case kTypeUInt8:
					temp = new char[16];
					snprintf(temp, 16, "%u ", data[i].uint8);
					break;
				case kTypeInt16:
					temp = new char[16];
					snprintf(temp, 16, "%i ", data[i].int16);
					break;
				case kTypeUInt16:
					temp = new char[16];
					snprintf(temp, 16, "%u ", data[i].uint16);
					break;
				case kTypeInt32:
					temp = new char[16];
					snprintf(temp, 16, "%ld ", data[i].int32);
					break;
				case kTypeUInt32:
					temp = new char[16];
					snprintf(temp, 16, "%lu ", data[i].uint32);
					break;
				case kTypeInt64:
					temp = new char[16];
					snprintf(temp, 16, "%lld ", data[i].int64);
					break;
				case kTypeUInt64:
					temp = new char[16];
					snprintf(temp, 16, "%llu ", data[i].uint64);
					break;
				case kTypeBoolean:
					if(data[i].boolean)
						str->append("1 ");
					else
						str->append("0 ");
					break;
				case kTypeSymbol:
					str->append(data[i].sym->getString());
					str->append(" ");
					break;
				case kTypeString:
					str->append(*data[i].stringPtr);
					str->append(" ");
					break;
				case kTypeObject:
					temp = new char[16];
					snprintf(temp, 16, "%x ", (unsigned int)data[i].object);
					break;
				case kTypePointer:
					temp = new char[16];
					snprintf(temp, 16, "%x ", (unsigned int)data[i].ptr);
					break;
				default:
					str->append(" ");
					break;
			}
			
			if(temp){
				str->append(temp);
				delete temp;
			}
		}
		
		str->erase(str->end());	// strip the trailing space
		// now set the value to the string
		clear();
		append(str);
	}
	
};


typedef TTValue* TTValuePtr;


#endif // __TT_VALUE_H__

