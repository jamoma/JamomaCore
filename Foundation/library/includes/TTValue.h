/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Jamoma Foundation class for representing values
 *
 * @details
 *
 * @authors Tim Place, Théo de la Hogue, Nathan Wolek, Julien Rabin, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_VALUE_H__
#define __TT_VALUE_H__

#include "TTElement.h"
#include <functional>


/**	The TTValue class represents a composite value that can be passed around to methods in Jamoma.
	It may be composed of a single element or many elements.  
	The types of the elements are defined in the TTDataType enumeration.
*/
class TTValue : public TTElementVector {
private:
	TTBoolean	stringsPresent;	///< are there any values which are strings?  if so they need special handling when it is time to free them.

public:

	/** Constructor for an empty value */
	TTValue()
	: stringsPresent(NO)
	{
		reserve(1);
	}
	
	/** Constructor with a single initial element. */
	template<class T>
	TTValue(const T& anInitialValue)
	: stringsPresent(NO)
	{
		resize(1);
		at(0) = anInitialValue;
	}
		
	/** Constructor with two initial elements. */
	template <class T, class U>
	TTValue(const T& aFirstElementInitialValue, const U& aSecondElementInitialValue)
	: stringsPresent(NO)
	{
		resize(2);
		at(0) = aFirstElementInitialValue;
		at(1) = aSecondElementInitialValue;
	}
	
	/** Constructor with three initial elements. */
	template <class T, class U, class V>
	TTValue(const T& aFirstElementInitialValue, const U& aSecondElementInitialValue, const V& aThirdElementInitialValue)
	: stringsPresent(NO)
	{
		resize(3);
		at(0) = aFirstElementInitialValue;
		at(1) = aSecondElementInitialValue;
		at(2) = aThirdElementInitialValue;
	}

	/** Constructor with four initial elements. */
	template <class T, class U, class V, class W>
	TTValue(const T& aFirstElementInitialValue, const U& aSecondElementInitialValue, const V& aThirdElementInitialValue, const W& aFourthElementInitialValue)
	: stringsPresent(NO)
	{
		resize(4);
		at(0) = aFirstElementInitialValue;
		at(1) = aSecondElementInitialValue;
		at(2) = aThirdElementInitialValue;
		at(3) = aFourthElementInitialValue;
	}

	// force the destructor to be non-virtual
	// we don't want subclasses of TTValue so it won't be a problem, and this solves linking snafus in some edge cases
	~TTValue()
	{;}
	
	
private:
	/** Internal method used by the constructors. */
	void init();
	
	/** Performs a deep copy of the object */
	inline void copy(const TTValue& obj);

public:

	void clear() {
		TTElementVector::clear();
	}
	
	/** Return the number of values of this instance. 
		DEPRECATED -- now just call size() instead.
	 */
	TT_DEPRECATED( TTUInt16 getSize() const )
	{
		return size();
	}
	
	/** Set the number of values, and allocate any needed memory. 
		DEPRECATED -- now just call resize() instead.
	 */
	TT_DEPRECATED( void setSize(const TTUInt16 arg) )
	{
		resize(arg);
	}
	
	
	/** Get the type of an element.
		DEPRECATED -- now call type() on the element itself, e.g.
		TTValue v(1,2,3);
		TTDataType thetype = v[1].type();
	 */
	TT_DEPRECATED( TTDataType getType(const TTUInt16 index=0) const )
	{
		return at(index).type();
	}
	
	
	
	/** Copy a value starting from an index until another index */
	void copyRange(const TTValue& obj, TTUInt16 startIndex, TTUInt16 endIndex)
	{
#ifdef OLD_WAY
		TTUInt16 s = endIndex - startIndex;
		TTPtr t = (obj.type)+startIndex;
		TTPtr d = (obj.data)+startIndex;
		
		setSize(s);
		memcpy(type, t, sizeof(TTDataType) * s);
		memcpy(data, d, sizeof(DataValue) * s);
		
		reserved = obj.reserved;
		stringsPresent = obj.stringsPresent;
#else
		resize(endIndex - startIndex);
		for (size_t i=0; i<size(); i++)
			at(i) = obj[startIndex+i];
//		stringsPresent = obj.stringsPresent;
#endif
	}
	
	
	/** Copy a value starting at index */
	void copyFrom(const TTValue& obj, TTUInt16 index)
	{
		copyRange(obj, index, obj.size());
	}
	
	
	/** Perform a copy of a value before and copy ourself after.
		For example, given a TTValue a <1, 2, 3> and another TTValue b <ga, bu, zo, meu>
		b.prepend(a) will be <1, 2, 3, ga, bu, zo, meu>
	 */
	void prepend(const TTValue& aValueToPrepend)
	{
		TTValue v = aValueToPrepend;

		v.append(*this);
		*this = v;
	}

	
	//
//	TTValue& operator = (const TTValue &newValue)
//	{
	//
//	}

	
	/**	Assign a value to TTValue
	 */
	template<class T>
	TTValue& operator = (T value)
	{
		resize(1);
		at(0) = value;
		return *this;
	}
	
	
	friend bool operator == (const TTValue& a, const TTValue& b)
	{
		if (a.size() == b.size()) {
			for (int i=0; i<a.size(); i++) {
				if (a.at(i) != b.at(i)) {
					return false;
				}
			}
			return true;
		}
		return false;
	}

	template<class T>
	friend bool operator == (const TTValue& a, const T b)
	{
		if (a.size() == 1 && a[0] == b)
			return true;
		else
			return false;
	}


	/** Get a value from TTValue
	 */
	template<class T>
	operator T() const
	{
		if (size())
			return T(at(0));
		else
			return T(0);
	}

	// TTSymbol needs to be manually wrapped to avoid ambiguity as interpretted by the clang compiler
	operator TTSymbol() const
	{
		if (size())
			return at(0);
		else
			return kTTSymEmpty;
	}
	
	/** DEPRECATED / OLD
		To make an assignment you now use standard C array syntax.  For example, instead of:
		TTValue v;
		v.set(0, 3.14);
		you now do:
		TTValue v;
		v[0] = 3.14;
	 */
	template<class T>
	TT_DEPRECATED ( void set(const TTUInt16 index, const T& anElementValue) )
	{
		at(index) = anElementValue;
	}

	/** DEPRECATED / OLD
	 To fetch the value of an element you now use standard C array syntax.  For example, instead of:
	 TTValue	v(3.14);
	 TTFloat64	mypi;
	 v.get(0, mypi);
	 you now do:
	 TTValue v(3.14);
	 TTFloat64	mypi;
	 mypi = v[0];
	 */
	template<class T>
	TT_DEPRECATED ( void get(const TTUInt16 index, T& returnedElementValue) const )
	{
		returnedElementValue = at(index);
	}

	TT_DEPRECATED ( void get(const TTUInt16 index, TTObjectBase** value) const )
	{
		if (at(index).type() == kTypeObject)
			*value = at(index);
	}

	TT_DEPRECATED ( void get(const TTUInt16 index, TTPtr* value) const )
	{
		if (at(index).type() == kTypePointer)
			*value = at(index);
	}

	TT_DEPRECATED ( void get(const TTUInt16 index, TTString& value) const )
	{
		value = (TTString)at(index);
	}

	
	template<class T>
	void append(const T& anElementValueToAppend)
	{
		TTElement e(anElementValueToAppend);
		
		push_back(e);
	}
	
	void append(const TTValue& aValueToAppend)
	{
		TTUInt32 appendingElementCount = aValueToAppend.size();
		TTUInt32 oldElementCount = size();
		TTUInt32 newElementCount = oldElementCount + appendingElementCount;
		
		resize(newElementCount);
		
		for (TTUInt32 i=0; i<appendingElementCount; i++) {
			TTElement e = aValueToAppend[i];
			
			at(oldElementCount+i) = e;
		}
	}

	
	// inlined for speed (e.g. for use in the matrix)
	TT_DEPRECATED( TTFloat64 getUInt8(TTUInt16 index = 0) const )
	{
		return TTUInt8(at(index));
	}
	
	// inlined for speed (e.g. for use in the matrix)
	TT_DEPRECATED( TTFloat64 getInt32(TTUInt16 index = 0) const )
	{
		return TTInt32(at(index));
	}
	
	// inlined for speed (e.g. for use in the matrix)
	TT_DEPRECATED( TTFloat64 getFloat32(TTUInt16 index = 0) const )
	{
		return TTFloat32(at(index));
	}
	
	// inlined for speed (e.g. for use in the dataspace lib)
	TT_DEPRECATED( TTFloat64 getFloat64(TTUInt16 index = 0) const )
	{
		return TTFloat64(at(index));
	}

	
#ifdef NOT_SURE_IF_WE_CAN_CUT_THESE
	template <typename T>
	void getIfExists(const TTUInt16 index, T arg)
	{
		if (index < numValues)
			get(index, arg);
	}
#endif 


	/**
	 @param	arrayToFill	An already alloc'd array whose values will be filled-in upon return.
	 @param	maxSize		The number of items alloc'd to the #arrayToFill parameter
	 */
	TT_DEPRECATED( void getArray(TTUInt8* arrayToFill, TTUInt16 maxSize) const )
	{
		for (size_t i=0; i<size(); i++) {
			if (i == maxSize)
				break;
			*(arrayToFill+i) = TTUInt8(at(i));
		}
	}
	
	
	/**
	 @param	arrayToFill	An already alloc'd array whose values will be filled-in upon return.
	 @param	maxSize		The number of items alloc'd to the #arrayToFill parameter
	 */
	TT_DEPRECATED( void getArray(TTInt32* arrayToFill, TTUInt16 maxSize) const )
	{
		for (size_t i=0; i<size(); i++) {
			if (i == maxSize)
				break;
			*(arrayToFill+i) = TTInt32(at(i));
		}
	}
	
	
	/**
	 @param	arrayToFill	An already alloc'd array whose values will be filled-in upon return.
	 @param	maxSize		The number of items alloc'd to the #arrayToFill parameter
	 */
	TT_DEPRECATED( void getArray(TTFloat32* arrayToFill, TTUInt16 maxSize) const )
	{
		for (size_t i=0; i<size(); i++) {
			if (i == maxSize)
				break;
			*(arrayToFill+i) = TTFloat32(at(i));
		}
	}
	
	
	/**
	 @param	arrayToFill	An already alloc'd array whose values will be filled-in upon return.
	 @param	maxSize		The number of items alloc'd to the #arrayToFill parameter
	 */
	TT_DEPRECATED( void getArray(TTFloat64* arrayToFill, TTUInt16 maxSize) const )
	{
		for (size_t i=0; i<size(); i++) {
			if (i == maxSize)
				break;
			*(arrayToFill+i) = TTFloat64(at(i));
		}
	}
	
	
	void clip(const TTFloat64& aLowBound, const TTFloat64& aHighBound)
	{
		for (TTElementIter i = this->begin(); i != this->end(); i++)
			i->clip(aLowBound, aHighBound);
	}
	
	
	void cliplow(const TTFloat64& aLowBound)
	{
		for (TTElementIter i = this->begin(); i != this->end(); i++)
			i->cliplow(aLowBound);
	}
	
	
	void cliphigh(const TTFloat64& aHighBound)
	{
		for (TTElementIter i = this->begin(); i != this->end(); i++)
			i->cliphigh(aHighBound);
	}
	
	
	void round()
	{
		for_each(this->begin(), this->end(), std::mem_fun_ref(&TTElement::round));
	}

	
	void truncate()
	{
		for_each(this->begin(), this->end(), std::mem_fun_ref(&TTElement::truncate));
	}
	
	
	void booleanize()
	{
		for_each(this->begin(), this->end(), std::mem_fun_ref(&TTElement::booleanize));
	}
	
	
	void toString()
	{
		TTString	temp;
	
		for (size_t i=0; i<size(); i++) {
			at(i).string(temp);		// get a string for each item
			if (i < (size()-1))		// add a space between each item, but no space at the end
				temp.append(" ");
		}
		
		// now set the value to the new string
		clear();
		append(temp);
	}
	
	
	void fromString(TTBoolean numberAsSymbol = NO)
	{
		if (at(0).type() != kTypeString) {
			clear();
			return;
		}
					
		TTUInt32					n = 0;
		TTInt32						convertedInt;
        TTUInt32					convertedUInt;
		TTFloat32					convertedFloat;
		std::vector<std::string>	strList;
		std::string					str(TTString(at(0)));
		std::istringstream			iss(str);
		
		std::copy(
				  std::istream_iterator<std::string>( iss ),
				  std::istream_iterator<std::string>(),
				  back_inserter( strList ) );
		
		if (strList.size() < 1) {
			clear();
			return;
		}

		resize(strList.size());
		
		for (unsigned int i = 0; i < strList.size(); ++i) {
			TTString	currentString = strList.at(i).c_str();
			
			if (currentString.toTTInt32(convertedInt) && !numberAsSymbol) {
                
				at(n) = int(convertedInt);
				n++;
			}
            else if (currentString.toTTUInt32(convertedUInt) && !numberAsSymbol) {
                
				at(n) = TTUInt32(convertedUInt);
				n++;
			}
			else if (currentString.toTTFloat32(convertedFloat) && !numberAsSymbol) {
                
				at(n) = TTFloat64(convertedFloat);  // cast float32 into float64
				n++;
			}
			else {
				if (currentString.c_str()[0] == '"') {
					TTString	editString = currentString.substr(1, currentString.size());	// don't keep the leading "
					
					while (currentString.c_str()[currentString.size()-1] != '"' && (i != (strList.size() - 1))) {
						i++;
						currentString = strList.at(i);
						
						editString += " ";
						editString += currentString;
					}

					at(n) = TTSymbol(editString.substr(0, editString.size()-1));
					n++;

				}
				else {
					
					at(n) = TTSymbol(currentString.c_str());
					n++;
				}
			}
		}
		
		// resize value
		resize(n);
	}
		

	/**	In-place method that converts the internal value, if it is a TTString, 
		from a comma-separated-value string into an array of TTSymbols.  
	 */
	TTErr transformCSVStringToSymbolArray()
	{
		if (at(0).type() != kTypeString)
			return kTTErrInvalidType;
		
		const TTString&	str = at(0);
		char*			cStr;
		char*			current;

		clear();
		
		cStr = new char[str.size()+1];
		strncpy(cStr, str.c_str(), str.size()+1);
		
		current = strrchr(cStr, ',');
		while (current) {
			*current = 0;
			current++;
			
			// Do some basic whitespace stripping from the ends
			while (*current == ' ')
				current++;
			while (current[strlen(current)-1] == ' ')
				current[strlen(current)-1] = 0;
			
			append(TTSymbol(current));
			current = strrchr(cStr, ',');
		}
		append(TTSymbol(cStr));
		delete[] cStr;
		return kTTErrNone;
	}
	

};


typedef TTValue* TTValuePtr;
typedef TTValue& TTValueRef;
typedef const TTValue& TTValueConstRef;

// dumb global which is an empty / uninitialized symbol -- you shouldn't use it.
// it's only here for backwards compatibility reasons.
typedef void* TTNoValue;
#define kTTValNONE (TTNoValue(0))

#endif // __TT_VALUE_H__

