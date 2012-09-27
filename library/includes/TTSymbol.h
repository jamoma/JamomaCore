/* 
 * Jamoma Class for accessing Symbols
 * Copyright © 2012, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SYMBOL_H__
#define __TT_SYMBOL_H__

#include "TTSymbolBase.h"
#include "TTSymbolTable.h"


/** This macro is defined as a shortcut for doing a lookup in the symbol table. */
//#define TT gTTSymbolTable->lookup
#define TT TTSymbol

/****************************************************************************************************/
// Class Specification

/**
	The TTSymbol class is used to represent a string and efficiently pass and compare that string.
	At the moment the implementation is somewhat crude and really slow and it should be improved in the future.
 
	Note that generally speaking you should not directly create a TTSymbol!
	Instead, TTSymbol objects should only by created by the TTSymbolTable that you are using.  
	Because of this we *always* pass TTSymbols as references (#TTSymbolRef) into the symbol table rather than as pointers or copies.
 
	Also, if you don't need the fast lookup capabilities of the symbol table (such as for message or attribute lookup)
	then consider passing a #TTString instead.
*/
class TTFOUNDATION_EXPORT TTSymbol {

protected:

	TTSymbolBase*	mSymbolPointer;		///< pointer to the symbol that we represent
	
public:
	
	TTSymbol()
	{
		mSymbolPointer = gTTSymbolTable->lookup("");
	}
	
	
	TTSymbol(const char *cstr)
	{
		mSymbolPointer = gTTSymbolTable->lookup(cstr);
	}
	
	
	TTSymbol(const int int_to_convert_to_string)
	{
		TTString s;
		
		s.append(int_to_convert_to_string);
		mSymbolPointer = gTTSymbolTable->lookup(s);
	}
	
	TTSymbol(TTPtr do_not_use_this_constructor_unless_you_absolutely_know_what_you_are_doing)
	{
		mSymbolPointer = (TTSymbolBase*)do_not_use_this_constructor_unless_you_absolutely_know_what_you_are_doing;
	}

	
	virtual ~TTSymbol()
	{;}
	
	
	/**	Return a pointer to the internal string as a C-string. */
	const char* c_str() const
	{
		return mSymbolPointer->getCString();
	}
	
	
	const TTString& string() const
	{
		return mSymbolPointer->string();
	}
	
	
	/**	Return this symbol's unique id. */
	/*const*/ TTUInt32 getSymbolId() const
	{
		return mSymbolPointer->getSymbolId();
	}
	
	
	/** Compare two symbols for equality. */
	inline friend bool operator == (const TTSymbol& symbol1, const TTSymbol& symbol2)
	{
		return (*symbol1.mSymbolPointer == *symbol2.mSymbolPointer);
	}
	
	
	/** Cast a symbol to a C-string. */
	operator const char*() const
	{
		return mSymbolPointer->getCString();
	}

	
	/** Cast a symbol to a TTStringRef. */
	operator const TTString&() const
	{
		return mSymbolPointer->string();
	}

	
	/** Get the value of the raw pointer into the symbol table. 
		Do not use this unless you absolutely know what you are doing.
	 */
	TTPtr rawpointer() const
	{
		return TTPtr(mSymbolPointer);
	}
	
	
	/** Generate a pseudo-random symbol */
	static TTSymbol random()
	{
		TTString s;
		
		s.random();
		return TTSymbol(s);
	}

};


#endif // __TT_SYMBOL_H__
