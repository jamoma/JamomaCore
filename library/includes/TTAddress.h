/* 
 * Jamoma Class for accessing Addresses
 * Copyright © 2012, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_ADDRESS_H__
#define __TT_ADDRESS_H__

#include "TTAddressBase.h"
#include "TTAddressTable.h"

//extern TTFOUNDATION_EXPORT TTAddressTable	gTTAddressTable;

/** This macro is defined as a shortcut for doing a lookup in the symbol table. */
//#define TT gTTSymbolTable->lookup
//#define TT TTSymbol

/****************************************************************************************************/
// Class Specifications

/**
	The TTAddress class is used to represent a string and efficiently pass and compare that string.
	It is essentially a TTSymbol extended with OSC parsing.
	An address follows the form:
		directory:/parent/name.instance:attribute
 */

class TTFOUNDATION_EXPORT TTAddress : public TTSymbol
{
private:
	TTAddressBase*	mAddressPointer; // This really just duplicates the pointer we inherit, but it makes debugging more convenient to have it typed properly
	
public:
	
	TTAddress()
	{	
		mSymbolPointer = gTTAddressTable.lookup("");
		mAddressPointer = (TTAddressBase*)mSymbolPointer;
	}
	
	
	TTAddress(const char *cstr)
	{
		mSymbolPointer = gTTAddressTable.lookup(cstr);
		mAddressPointer = (TTAddressBase*)mSymbolPointer;
	}
	
	
	TTAddress(const int int_to_convert_to_string)
	{
		TTString s;
		
		s.append(int_to_convert_to_string);
		mSymbolPointer = gTTAddressTable.lookup(s);
		mAddressPointer = (TTAddressBase*)mSymbolPointer;
	}
	
	
	TTAddress(TTPtr do_not_use_this_constructor_unless_you_absolutely_know_what_you_are_doing)
	{
		mSymbolPointer = (TTSymbolBase*)do_not_use_this_constructor_unless_you_absolutely_know_what_you_are_doing;
		mAddressPointer = (TTAddressBase*)mSymbolPointer;
	}

	
	virtual ~TTAddress()
	{;}
	
	
	TTAddressBase* getBasePointer() const
	{
		return static_cast<TTAddressBase*>(mSymbolPointer);
	}
	

	/** Get the directory part */
	TTSymbol getDirectory()
	{
		return mAddressPointer->getDirectory();
	}
	
	/** Get a pointer to the parent address */
	TTAddress getParent()
	{
		return TTAddress(mAddressPointer->getParent());
	}
	
	/** Get the name part */
	TTSymbol getName()
	{
		return mAddressPointer->getName();
	}
	
	/** Get the instance part */
	TTSymbol getInstance()
	{
		return mAddressPointer->getInstance();
	}
	
	/** Get the attribute part */
	TTSymbol getAttribute()
	{
		return mAddressPointer->getAttribute();
	}
	
	/** Get the type */
	TTAddressType getType()
	{
		return mAddressPointer->getType();
	}
	
	/** Get the name.instance part */
	TTSymbol getNameInstance()
	{
		return mAddressPointer->getNameInstance();
	}
	
	/** Normalize an address for lookup and other directory operations
	 This would return an address without directory and attribute	*/
	TTAddress normalize()
	{
		return TTAddress(mAddressPointer->normalize());
	}
	
	/** Return a new TTAddress without attribute part */
	TTAddress removeAttribute()
	{
		return TTAddress(mAddressPointer->removeAttribute());
	}
	
	/** Return a new TTAddress with attribute part */
	TTAddress appendAttribute(TTSymbol anAttribute)
	{
		return TTAddress(mAddressPointer->appendAttribute(anAttribute));
	}
	
	/** Return a new TTAddress with the appended part */
	TTAddress appendAddress(const TTAddress& toAppend)
	{
		return TTAddress(mAddressPointer->appendAddress( (static_cast<TTAddressBase*>(toAppend.mSymbolPointer)) ));
	}
	
	/** Return a new TTAddress with a instance part */
	TTAddress appendInstance(const TTSymbol& anInstance)
	{
		return TTAddress(mAddressPointer->appendInstance(anInstance));
	}
	
	/**	A comparison tool
	 @param	toCompare					An address to compare (it doesn't compare attribute part)
	 @param	depthDifference				Return the number of level separating the compared addresses (> 0 for lower result, < 0 for upper result)
	 @return							An comparison flag */
	TTAddressComparisonFlag compare(const TTAddress& toCompare, TTInt8& depthDifference)
	{
		return mAddressPointer->compare((static_cast<TTAddressBase*>(toCompare.mSymbolPointer)), depthDifference);
	}
	
	/**	A parsing tool : split address in two part from a given '/' position
	 @param whereToSplit				An int to give the '/' id where to split
	 @param	returnedPart1				A pointer to upper part (before the given position) : /part1
	 @param	returnedPart2				A pointer to lower part (after the given position) : /part2
	 @return							kTTValueNotFound if the given '/' id doesn't exist */
	TTErr splitAt(TTUInt32 whereToSplit, TTAddress& returnedPart1, TTAddress& returnedPart2)
	{
		TTAddressBase* returnedPart1Ptr = NULL;
		TTAddressBase* returnedPart2Ptr = NULL;
		TTErr err;
		
		err = mAddressPointer->splitAt(whereToSplit, &returnedPart1Ptr, &returnedPart2Ptr);
		returnedPart1 = TTAddress(returnedPart1Ptr);
		returnedPart1 = TTAddress(returnedPart2Ptr);
		return err;
	}
	
	/**	A parsing tool : count how many C_SEPARATOR there is in the address
	 @return							The number of C_SEPARATOR */
	TTUInt32 countSeparator()
	{
		return mAddressPointer->countSeparator();
	}
	
	/**	A parsing tool : return a list containing all name.instance part (without any S_SEPARATOR)
	 @param								The list of name.instance part to fill */
	TTErr listNameInstance(TTList& nameInstanceList)
	{
		return mAddressPointer->listNameInstance(nameInstanceList);
	}
	
};


#endif // __TT_ADDRESS_H__
