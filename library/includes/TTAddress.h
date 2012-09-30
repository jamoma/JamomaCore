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

extern TTFOUNDATION_EXPORT TTAddressTable	gTTAddressTable;

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

class TTFOUNDATION_EXPORT TTAddress : public TTSymbolBase
{	
public:
	
	TTAddress()
	{
		mSymbolPointer = gTTAddressTable.lookup("");
	}
	
	
	TTAddress(const char *cstr)
	{
		mSymbolPointer = gTTAddressTable.lookup(cstr);
	}
	
	
	TTAddress(const int int_to_convert_to_string)
	{
		TTString s;
		
		s.append(int_to_convert_to_string);
		mSymbolPointer = gTTAddressTable.lookup(s);
	}
	
	virtual ~TTAddress()
	{;}
	
};


#endif // __TT_ADDRESS_H__
