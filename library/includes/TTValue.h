/* 
 * TTBlue Class for representing Values
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_VALUE_H__
#define __TT_VALUE_H__

#include "TTBase.h"
#include "TTString.h"
#include "TTLimits.h"
#include "TTSymbol.h"
#include "TTSymbolTable.h"

// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef TT_PLATFORM_IOS
#include "TTNodeAddress.h"
#include "TTNodeAddressTable.h"
#endif

class TTObject;
class TTMatrix;


//#define USE_TTInt32				// to -- To easily change for TTInt32 instead of int in order to make test

// macro for converting from one type to another regardless of type
#define	CONVERT(dType) switch(*(type+index)) {\
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

/*	note : isTTFloat32 works only because the TTInt32 case is matched before 
	see in fromString method 
 */
TTBoolean TTFOUNDATION_EXPORT	toTTInt32( const TTString & str, TTInt32 & convertedInt );
TTBoolean TTFOUNDATION_EXPORT	toTTFloat32( const TTString & str, TTFloat32 & convertedFloat );

/****************************************************************************************************/
// Class Specification

/**	The TTValue class represents a value that can be passed around to functions in TTBlue.  It may be a
 *	single value, or an array of homogenous values.  It maybe one of a number of types defined in the 
 *	DataType enumeration.
 */
class TTFOUNDATION_EXPORT TTValue : TTBase {
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
		TTSymbolBase*	sym;		///< can't be a TTSymbolRef because it is in a union and this generates a compiler error
		TTString*		stringPtr;	///< We keep the string as a pointer instead of a direct member so that the size of the union is kept to 64-bits.
		TTObject*		object;
		TTMatrix*		matrix;
		TTPtr			ptr;
	};
		
	TTDataType*	type;			///< array of types
	DataValue*	data;			///< array of values
	TTPtr		reserved;		///< (unused)
	TTUInt16	numValues;		///< number of values
	TTBoolean	stringsPresent;	///< are there any values which are strings?  if so they need special handling when it is time to free them.

public:
	/** Constructors. */
	//	There are a lot of constructors defined with duplication of code being a concern.
	//	Attempts at using C++ templates for the constructor works on Windows but provides
	//	excessive amounts of grief when linking on the Mac.
	TTValue();
	TTValue(const TTFloat32 initialValue);
	TTValue(const TTFloat64 initialValue);
	TTValue(const TTInt8 initialValue);
	TTValue(const TTUInt8 initialValue);
	TTValue(const TTInt16 initialValue);
	TTValue(const TTUInt16 initialValue);
#ifdef USE_TTInt32
	TTValue(const TTInt32 initialValue);
	TTValue(const TTUInt32 initialValue);
#else
	TTValue(const int initialValue);
//	TTValue(const unsigned int initialValue);
	TTValue(const TTUInt32 initialValue);
#endif
	TTValue(const TTInt64 initialValue);
	TTValue(const TTUInt64 initialValue);
	TTValue(const TTBoolean initialValue);
	TTValue(const TTSymbol& initialValue);
	TTValue(const TTString& initialValue);
	TTValue(const TTObject& initialValue);
	TTValue(const TTMatrix& initialValue);
	TTValue(const TTPtr initialValue);
	
	TTValue(const TTFloat64 initialValue1, const TTFloat64 initialValue2);
	
	/** Copy constructor */
	TTValue(const TTValue& obj);

	/** Destructors */
	virtual ~TTValue();

	
	/** Return this value to NULL state (no values) */
	void clear();
	
	/** Return the type of this value. */
	TTDataType getType() const;		// trailing const -- this method can be used on const variables

	/** Return the type of a particular member of this value (assuming it is an array). */
	TTDataType getType(const TTUInt16 index) const;

	
private:
	/** Internal method used by the constructors. */
	void init();

	/** Internal method for setting the type of a value. */
	void setType(const TTDataType arg);
	
	/** Performs a deep copy of the object */
	inline void copy(const TTValue& obj);

public:
	/** Return the number of values of this instance. */
	TTUInt16 getSize() const;
	
	/** Set the number of values, and allocate any needed memory. */	
	void setSize(const TTUInt16 arg);
	
	/** Copy a value starting from an index until another index */
	void copyRange(const TTValue& obj, TTUInt16 startIndex, TTUInt16 endIndex);
	
	/** Copy a value starting at index */
	void copyFrom(const TTValue& obj, TTUInt16 index);
	
	/** Perform a copy of a value before and copy ourself after.
		For example, given a TTValue a <1, 2, 3> and another TTValue b <ga, bu, zo, meu>
		b.prepend(a) will be <1, 2, 3, ga, bu, zo, meu>
	 */
	void prepend(const TTValue& valueToAppend);
	
	TTValue& operator = (const TTValue &newValue);

// TODO: This stuff *really* all needs to be inlined!
	
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
	TTValue& operator = (const TTSymbol& value);
	operator TTSymbol() const;
	
	// STRING
	TTValue& operator = (TTString& value);
	operator TTString&() const;
	
	// OBJECT
	TTValue& operator = (TTObject& value);
	operator TTObject&() const;
	TTValue& operator = (TTObject* value);
	operator TTObject*() const;
	
	// MATRIX
	TTValue& operator = (TTMatrix& value);
	operator TTMatrix&() const;
	TTValue& operator = (TTMatrix* value);
	operator TTMatrix*() const;
	
	// GENERIC POINTER
	TTValue& operator = (TTPtr value);
	operator TTPtr() const;
	
	void set(const TTUInt16 index, const TTFloat32 newValue);
	void set(const TTUInt16 index, const TTFloat64 newValue);
	void set(const TTUInt16 index, const TTInt8 newValue);
	void set(const TTUInt16 index, const TTUInt8 newValue);
	void set(const TTUInt16 index, const TTInt16 newValue);
	void set(const TTUInt16 index, const TTUInt16 value);
#ifdef USE_TTInt32
	void set(const TTUInt16 index, const TTInt32 newValue);
#else
	void set(const TTUInt16 index, const int newValue);
#endif
	void set(const TTUInt16 index, const TTUInt32 newValue);
	void set(const TTUInt16 index, const TTInt64 newValue);
	void set(const TTUInt16 index, const TTUInt64 newValue);
	void set(const TTUInt16 index, const TTBoolean newValue);
	void set(const TTUInt16 index, const TTSymbol& newValue);
	void set(const TTUInt16 index, const TTString& newValue);
	void set(const TTUInt16 index, const TTObject& newValue);
	void set(const TTUInt16 index, const TTMatrix& newValue);
	void set(const TTUInt16 index, const TTPtr newValue);


	// THESE FUNCTIONS CURRENTLY DO NO TYPE OR BOUNDS CHECKING !!!
	// Should an error be returned on failure?
	void get(const TTUInt16 index, TTFloat32 &value) const;
	void get(const TTUInt16 index, TTFloat64 &value) const;
	void get(const TTUInt16 index, TTInt8 &value) const;
	void get(const TTUInt16 index, TTUInt8 &value) const;
	void get(const TTUInt16 index, TTInt16 &value) const;
	void get(const TTUInt16 index, TTUInt16 &value) const;
#if 1 // always use TTInt32 for the get method
	void get(const TTUInt16 index, TTInt32 &value) const;
#else
	void get(const TTUInt16 index, int &value) const;
#endif
	void get(const TTUInt16 index, TTUInt32 &value) const;
	void get(const TTUInt16 index, TTInt64 &value) const;
	void get(const TTUInt16 index, TTUInt64 &value) const;
	void get(const TTUInt16 index, TTBoolean &value) const;
	void get(const TTUInt16 index, TTSymbol& value) const;
	void get(const TTUInt16 index, TTString& value) const;
	void get(const TTUInt16 index, const char* value) const;
	void get(const TTUInt16 index, TTObject& value) const;
	void get(const TTUInt16 index, TTObject** value) const;
	void get(const TTUInt16 index, TTMatrix& value) const;
	void get(const TTUInt16 index, TTMatrix** value) const;
	void get(const TTUInt16 index, TTPtr* value) const;

// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef DISABLE_NODELIB
	void get(const TTUInt16 index, TTNodeAddressPtr* value) const;
#endif
	
	// inlined for speed (e.g. for use in the matrix)
	TTFloat64 getUInt8(TTUInt16 index = 0) const
	{
		if (type[index] == kTypeUInt8)
			return (data+index)->uint8;
		else {
			TTUInt8 value;
			CONVERT(TTUInt8)
			return value;
		}
	}
	
	// inlined for speed (e.g. for use in the matrix)
	TTFloat64 getInt32(TTUInt16 index = 0) const
	{
		if (type[index] == kTypeInt32)
			return (data+index)->int32;
		else {
			TTInt32 value;
			CONVERT(TTInt32)
			return value;
		}
	}
	
	// inlined for speed (e.g. for use in the matrix)
	TTFloat64 getFloat32(TTUInt16 index = 0) const
	{
		if (type[index] == kTypeFloat32)
			return (data+index)->float32;
		else {
			TTFloat32 value;
			CONVERT(TTFloat32)
			return value;
		}
	}
	
	// inlined for speed (e.g. for use in the dataspace lib)
	TTFloat64 getFloat64(TTUInt16 index = 0) const
	{
		if (type[index] == kTypeFloat64)
			return (data+index)->float64;
		else {
			TTFloat64 value;
			CONVERT(TTFloat64)
			return value;
		}
	}

	template <typename T>
	void getIfExists(const TTUInt16 index, T arg)
	{
		if (index < numValues)
			get(index, arg);
	}
	
	
	/**
	 @param	arrayToFill	An already alloc'd array whose values will be filled-in upon return.
	 @param	maxSize		The number of items alloc'd to the #arrayToFill parameter
	 */
	void getArray(TTUInt8* arrayToFill, TTUInt16 maxSize) const
	{
		for (int i=0; i<numValues; i++) {
			if (i == maxSize)
				break;
			*(arrayToFill+i) = getUInt8(i);
		}
	}
	
	
	/**
	 @param	arrayToFill	An already alloc'd array whose values will be filled-in upon return.
	 @param	maxSize		The number of items alloc'd to the #arrayToFill parameter
	 */
	void getArray(TTInt32* arrayToFill, TTUInt16 maxSize) const
	{
		for (int i=0; i<numValues; i++) {
			if (i == maxSize)
				break;
			*(arrayToFill+i) = getInt32(i);
		}
	}
	
	
	/**
	 @param	arrayToFill	An already alloc'd array whose values will be filled-in upon return.
	 @param	maxSize		The number of items alloc'd to the #arrayToFill parameter
	 */
	void getArray(TTFloat32* arrayToFill, TTUInt16 maxSize) const
	{
		for (int i=0; i<numValues; i++) {
			if (i == maxSize)
				break;
			*(arrayToFill+i) = getFloat32(i);
		}
	}
	
	
	/**
	 @param	arrayToFill	An already alloc'd array whose values will be filled-in upon return.
	 @param	maxSize		The number of items alloc'd to the #arrayToFill parameter
	 */
	void getArray(TTFloat64* arrayToFill, TTUInt16 maxSize) const
	{
		for (int i=0; i<numValues; i++) {
			if (i == maxSize)
				break;
			*(arrayToFill+i) = getFloat64(i);
		}
	}
	
	
	

	void append(const TTFloat32 newValue);
	void append(const TTFloat64 newValue);
	void append(const TTInt8 newValue);
	void append(const TTUInt8 newValue);
	void append(const TTInt16 newValue);
	void append(const TTUInt16 value);
#ifdef USE_TTInt32
	void append(const TTInt32 newValue);
#else
	void append(const int newValue);
#endif
	void append(const TTUInt32 newValue);
	void append(const TTInt64 newValue);
	void append(const TTUInt64 newValue);
	void append(const TTBoolean newValue);
	void append(const TTSymbol& newValue);
	void append(const TTString& newValue);
	void append(const TTObject& newValue);
	void append(const TTMatrix& newValue);
	void append(const TTPtr newValue);
	void append(const TTValue* newValue);
	void append(const TTValue& newValue);

	// TODO: implement this!	
	//	TTValue& operator [] (int)

	// make sure this is a friend so that it can access the private members of the other atom
	friend bool operator == (const TTValue &a1, const TTValue &a2)
	{
		short 	i;
		
		if (a1.numValues != a2.numValues)
			return false;

		for (i=0; i < a1.numValues; i++) {
			if (a1.type[i] != a2.type[i])
				return false;
			else {
				switch(a1.type[i]) {
					case kTypeInt8:
						if ( (a1.data+i)->int8 != (a2.data+i)->int8 )
							return false;
						break;
					case kTypeUInt8:
						if ( (a1.data+i)->uint8 != (a2.data+i)->uint8 )
							return false;
						break;
					case kTypeInt16:
						if ( (a1.data+i)->int16 != (a2.data+i)->int16 )
							return false;
						break;
					case kTypeUInt16:
						if ( (a1.data+i)->uint16 != (a2.data+i)->uint16 )
							return false;
						break;
					case kTypeInt32:
						if ( (a1.data+i)->int32 != (a2.data+i)->int32 )
							return false;
						break;
					case kTypeUInt32:
						if ( (a1.data+i)->uint32 != (a2.data+i)->uint32 )
							return false;
						break;
					case kTypeInt64:
						if ( (a1.data+i)->int64 != (a2.data+i)->int64 )
							return false;
						break;
					case kTypeUInt64:
						if ( (a1.data+i)->uint64 != (a2.data+i)->uint64 )
							return false;
						break;
					case kTypeFloat32:
						if ( (a1.data+i)->float32 != (a2.data+i)->float32 )
							return false;
						break;
					case kTypeFloat64:
						if ( (a1.data+i)->float64 != (a2.data+i)->float64 )
							return false;
						break;
					case kTypeBoolean:
						if ( (a1.data+i)->boolean != (a2.data+i)->boolean )
							return false;
						break;
					case kTypeSymbol:
						if ( (a1.data+i)->sym != (a2.data+i)->sym )
							return false;
						break;
					case kTypeString:
						if ( *(a1.data+i)->stringPtr != *(a2.data+i)->stringPtr )
							return false;
						break;
					case kTypeObject:
						if ( (a1.data+i)->object != (a2.data+i)->object )
							return false;
						break;
					case kTypePointer:
						if ( (a1.data+i)->ptr != (a2.data+i)->ptr )
							return false;
						break;
					default:
						return false;
				}
			}
		}
		return true;
	}
	
	/**
		We define the < operator for sorting of linked-list and other STL calls that require sorting ability of TTValue.
	 */
	
	// make sure this is a friend so that it can access the private members of the other atom
	friend bool operator < (const TTValue &a1, const TTValue &a2)
	{
		switch(*a1.type) {
			case kTypeInt8:
				if ( (a1.data)->int8 >= (a2.data)->int8 )
					return false;
				break;
			case kTypeUInt8:
				if ( (a1.data)->uint8 >= (a2.data)->uint8 )
					return false;
				break;
			case kTypeInt16:
				if ( (a1.data)->int16 >= (a2.data)->int16 )
					return false;
				break;
			case kTypeUInt16:
				if ( (a1.data)->uint16 >= (a2.data)->uint16 )
					return false;
				break;
			case kTypeInt32:
				if ( (a1.data)->int32 >= (a2.data)->int32 )
					return false;
				break;
			case kTypeUInt32:
				if ( (a1.data)->uint32 >= (a2.data)->uint32 )
					return false;
				break;
			case kTypeInt64:
				if ( (a1.data)->int64 >= (a2.data)->int64 )
					return false;
				break;
			case kTypeUInt64:
				if ( (a1.data)->uint64 >= (a2.data)->uint64 )
					return false;
				break;
			case kTypeFloat32:
				if ( (a1.data)->float32 >= (a2.data)->float32 )
					return false;
				break;
			case kTypeFloat64:
				if ( (a1.data)->float64 >= (a2.data)->float64 )
					return false;
				break;
			case kTypeBoolean:
				if ( (a1.data)->boolean >= (a2.data)->boolean )
					return false;
				break;
			case kTypeSymbol:
				if ( strcmp( (a1.data)->sym->getCString(), (a2.data)->sym->getCString() ) >= 0 )
					return false;
				break;
			case kTypeString:
				if ( strcmp( (a1.data)->stringPtr->c_str(), (a2.data)->stringPtr->c_str() ) >= 0 )
					return false;
				break;
			case kTypeObject:
				if ( (a1.data)->object >= (a2.data)->object )
					return false;
				break;
			case kTypePointer:
				if ( (a1.data)->ptr >= (a2.data)->ptr )
					return false;
				break;
			default:
				return false;
		}
		return true;
	}		
	
	
	/**	In-place method that converts the internal value, if it is a TTString, from a comma-separated-value string into
		an array of TTSymbols.  */
	TTErr transformCSVStringToSymbolArray();
	
	
	void clip(const TTFloat64& lowBound, const TTFloat64& highBound)
	{
		for (TTUInt16 i=0; i<numValues; i++) {
			if (TTDataInfo::getIsNumerical(type[i])) {
				// TODO: find a way to make this routine faster
				switch(type[i]) {
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
		for (TTUInt16 i=0; i<numValues; i++) {
			if (TTDataInfo::getIsNumerical(type[i])) {
				// TODO: find a way to make this routine faster
				switch(type[i]) {
					case kTypeFloat32:
						TTLimitMin<TTFloat32>(data[i].float32, (TTFloat32)lowBound);
						break;
					case kTypeFloat64:
						TTLimitMin<TTFloat64>(data[i].float64, lowBound);
						break;
					case kTypeInt8:
						TTLimitMin<TTInt8>(data[i].int8, (TTInt8)lowBound);
						break;
					case kTypeUInt8:
						TTLimitMin<TTUInt8>(data[i].uint8, (TTUInt8)lowBound);
						break;
					case kTypeInt16:
						TTLimitMin<TTInt16>(data[i].int16, (TTInt16)lowBound);
						break;
					case kTypeUInt16:
						TTLimitMin<TTUInt16>(data[i].uint16, (TTUInt16)lowBound);
						break;
					case kTypeInt32:
						TTLimitMin<TTInt32>(data[i].int32, (TTInt32)lowBound);
						break;
					case kTypeUInt32:
						TTLimitMin<TTUInt32>(data[i].uint32, (TTUInt32)lowBound);
						break;
					case kTypeInt64:
						TTLimitMin<TTInt64>(data[i].int64, (TTInt64)lowBound);
						break;
					case kTypeUInt64:
						TTLimitMin<TTUInt64>(data[i].uint64, (TTUInt64)lowBound);
						break;
					default:
						break;
				}
			}
		}
	}
	
	
	void cliphigh(const TTFloat64& highBound)
	{
		for (TTUInt16 i=0; i<numValues; i++) {
			if (TTDataInfo::getIsNumerical(type[i])) {
				// TODO: find a way to make this routine faster
				switch(type[i]) {
					case kTypeFloat32:
						TTLimitMax<TTFloat32>(data[i].float32, (TTFloat32)highBound);
						break;
					case kTypeFloat64:
						TTLimitMax<TTFloat64>(data[i].float64, highBound);
						break;
					case kTypeInt8:
						TTLimitMax<TTInt8>(data[i].int8, (TTInt8)highBound);
						break;
					case kTypeUInt8:
						TTLimitMax<TTUInt8>(data[i].uint8, (TTUInt8)highBound);
						break;
					case kTypeInt16:
						TTLimitMax<TTInt16>(data[i].int16, (TTInt16)highBound);
						break;
					case kTypeUInt16:
						TTLimitMax<TTUInt16>(data[i].uint16, (TTUInt16)highBound);
						break;
					case kTypeInt32:
						TTLimitMax<TTInt32>(data[i].int32, (TTInt32)highBound);
						break;
					case kTypeUInt32:
						TTLimitMax<TTUInt32>(data[i].uint32, (TTUInt32)highBound);
						break;
					case kTypeInt64:
						TTLimitMax<TTInt64>(data[i].int64, (TTInt64)highBound);
						break;
					case kTypeUInt64:
						TTLimitMax<TTUInt64>(data[i].uint64, (TTUInt64)highBound);
						break;
					default:
						break;
				}
			}
		}
	}
	
	
	void round()
	{
		for (TTUInt16 i=0; i<numValues; i++) {
			if (TTDataInfo::getIsNumerical(type[i])) {
				// TODO: find a way to make this routine faster
				switch(type[i]) {
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
	
	void truncate()
	{
		for (TTUInt16 i=0; i<numValues; i++) {
			if (TTDataInfo::getIsNumerical(type[i])) {
				// TODO: find a way to make this routine faster
				switch(type[i]) {
					case kTypeFloat32:
						data[i].float32 = (TTInt32)data[i].float32;
						break;
					case kTypeFloat64:
						data[i].float64 = (TTInt32)data[i].float64;
						break;

					default:
						break;
				}
			}
		}
	}
	
	void booleanize()
	{
		for (TTUInt16 i=0; i<numValues; i++) {
			if (TTDataInfo::getIsNumerical(type[i])) {
				// TODO: find a way to make this routine faster
				switch(type[i]) {
					case kTypeFloat32:
						data[i].boolean = data[i].float32 != 0.;
						type[i] = kTypeBoolean;
						break;
					case kTypeFloat64:
						data[i].boolean = data[i].float64 != 0;
						type[i] = kTypeBoolean;
						break;
					case kTypeInt8:
						data[i].boolean = data[i].int8 != 0;
						type[i] = kTypeBoolean;
						break;
					case kTypeUInt8:
						data[i].boolean = data[i].uint8 != 0;
						type[i] = kTypeBoolean;
						break;
					case kTypeInt16:
						data[i].boolean = data[i].int16 != 0;
						type[i] = kTypeBoolean;
						break;
					case kTypeUInt16:
						data[i].boolean = data[i].uint16 != 0;
						type[i] = kTypeBoolean;
						break;
					case kTypeInt32:
						data[i].boolean = data[i].int32 != 0;
						type[i] = kTypeBoolean;
						break;
					case kTypeUInt32:
						data[i].boolean = data[i].uint32 != 0;
						type[i] = kTypeBoolean;
						break;
					case kTypeInt64:
						data[i].boolean = data[i].int64 != 0;
						type[i] = kTypeBoolean;
						break;
					case kTypeUInt64:
						data[i].boolean = data[i].uint64 != 0;
						type[i] = kTypeBoolean;
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
		char*	temp;
		TTBoolean	addQuotes;
		
		for (TTUInt16 i=0; i<numValues; i++) {
			temp = NULL;
			
			switch(type[i]) {
				case kTypeFloat32:
					temp = new char[16];
					snprintf(temp, 16, "%f", data[i].float32);
					break;
				case kTypeFloat64:
					temp = new char[16];
					snprintf(temp, 16, "%lf", data[i].float64);
					break;
				case kTypeInt8:
					temp = new char[16];
					snprintf(temp, 16, "%i", data[i].int8);
					break;
				case kTypeUInt8:
					temp = new char[16];
					snprintf(temp, 16, "%u", data[i].uint8);
					break;
				case kTypeInt16:
					temp = new char[16];
					snprintf(temp, 16, "%i", data[i].int16);
					break;
				case kTypeUInt16:
					temp = new char[16];
					snprintf(temp, 16, "%u", data[i].uint16);
					break;
				case kTypeInt32:
					temp = new char[16];
					snprintf(temp, 16, "%i", (int)data[i].int32);
					break;
				case kTypeUInt32:
					temp = new char[16];
					snprintf(temp, 16, "%iu", (unsigned int)data[i].uint32);
					break;
				case kTypeInt64:
					temp = new char[16];
#ifdef __LP64__ // Mac 64-Bit
					snprintf(temp, 16, "%ld", data[i].int64);
#else
					snprintf(temp, 16, "%lld", data[i].int64);
#endif
					break;
				case kTypeUInt64:
					temp = new char[16];
#ifdef __LP64__ // Mac 64-Bit
					snprintf(temp, 16, "%lu", data[i].int64);
#else
					snprintf(temp, 16, "%llu", data[i].uint64);
#endif
					break;
				case kTypeBoolean:
					if (data[i].boolean)
						str->append("1");
					else
						str->append("0");
					break;
				case kTypeSymbol:
					addQuotes = strchr(data[i].sym->getCString(), ' ') != 0;
					if (addQuotes) str->append("\"");
					str->append(data[i].sym->getCString());
					if (addQuotes) str->append("\"");
					break;
				case kTypeString:
					str->append(*data[i].stringPtr);
					break;
				case kTypeObject:
					temp = new char[16];
					snprintf(temp, 16, "%ld", (TTPtrSizedInt)data[i].object);
					break;
				case kTypePointer:
					temp = new char[16];
					snprintf(temp, 16, "%ld", (TTPtrSizedInt)data[i].ptr);
					break;
				default:
					break;
			}
			
			if (temp) {
				str->append(temp);
				delete temp;
			}
			
			// no space at end
			if (i < (numValues-1))
				str->append(" ");
		}
		
		// now set the value to the string
		clear();
		append(*str);	// CHANGED: If we pass a pointer then this is appended at a generic TTPtr [TAP]
	}
	
	void fromString(TTBoolean numberAsSymbol = NO)
	{
		if (*type == kTypeString) {
			
			TTUInt32 n = 0;
			TTInt32 convertedInt;
			TTFloat32 convertedFloat;
			std::vector<std::string> strList;
			std::string str(data->stringPtr->c_str());
			
			std::istringstream iss(str);
			std::copy(
				 std::istream_iterator<string>( iss ),
				 std::istream_iterator<string>(),
				 back_inserter( strList ) );
			
			if (strList.size() > 0) {
				
				setSize(strList.size());
				
				for (unsigned int i = 0; i < strList.size(); ++i) {
					TTString currentString = strList.at(i).c_str();
					if (toTTInt32(currentString, convertedInt) && !numberAsSymbol) {
						
						data[n].int32 = convertedInt;
						type[n] = kTypeInt32;
						n++;
						
					} else if (toTTFloat32(currentString, convertedFloat) && !numberAsSymbol) {
						
						data[n].float32 = convertedFloat;
						type[n] = kTypeFloat32;
						n++;
						
					}
					else {
						
						if (currentString.c_str()[0] == '"') {
							
							TTString editString = currentString.substr(1, currentString.size());	// don't keep the leading "
							
							while (currentString.c_str()[currentString.size()-1] != '"' && (i != (strList.size() - 1))) {
								i++;
								currentString = strList.at(i);
								
								editString += " ";
								editString += currentString;
							}
							
							data[n].sym = (TTSymbolBase*) TT(editString.substr(0, editString.size()-1)).rawpointer();			// don't keep the last "
							type[n] = kTypeSymbol;
							n++;

						} else {
							TTSymbol editSymbol = TT(currentString.c_str());
							data[n].sym = (TTSymbolBase*) editSymbol.rawpointer();
							type[n] = kTypeSymbol;
							n++;
						}
					}
				}
			}
			
			// resize value
			setSize(n);
		}
		else
			this->clear();
	}
		
	
	static void test();
};


typedef TTValue* TTValuePtr;
typedef TTValue& TTValueRef;
typedef const TTValue& TTValueConstRef;
	
	
#endif // __TT_VALUE_H__

