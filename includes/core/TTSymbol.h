/* 
 * TTBlue Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SYMBOL_H__
#define __TT_SYMBOL_H__

#include "TTElement.h"


/****************************************************************************************************/
// Class Specification

/**
	The TTSymbol class is used to represent a string and efficiently pass and compare that string.
	At the moment the implementation is somewhat crude and really slow and it should be improved in the future.
 
	Note that generally speaking you should not directly create a TTSymbol!
	Instead, TTSymbol objects should only by created by the TTSymbolTable that you are using.  
	Because of this we *always* pass TTSymbols as pointers (#TTSymbolPtr) into the symbol table rather than as references or copies.
 
	Also, if you don't need the fast lookup capabilities of the symbol table (such as for message or attribute lookup)
	then consider passing a #TTString instead.
*/
class TTEXPORT TTSymbol : public TTElement {
private:
	TTString				theString;			///< the actual string represented by this symbol
	TTUInt32				id;					///< a unique identifier for the given string

	/** used by the constructors to create the new symbol */
	void init(const TTString& newString, TTInt32 newId);

public:
	/** The constructor is intended only for use by the TTSymbolTable object when creating new symbols
		in the table.  Perhaps this could be made private and then the class made a friend... */
	TTSymbol(const TTString& newString, TTInt32 newId);

	virtual	~TTSymbol();
	
	/** Copy Constructor */
	TTSymbol(const TTSymbol& oldSymbol);

	/**	Return a pointer to the internal string. */
	const TTString getString();

	/**	Return a pointer to the internal string as a C-string. */
	const char* getCString();
	
	/**	Return this symbol's unique id. */
	const TTUInt32 getId();
	
	// make sure this is a friend so that it can access the private members of the other
	/** Compare two symbols for equality. */
	inline friend bool operator == (const TTSymbol& symbol1, const TTSymbol& symbol2)
	{
		if(symbol1.id == symbol2.id)
			return true;
		else
			return false;
	}
	
	/** Cast a symbol to a C-string. */
	operator const char*() const
	{
		return theString.c_str();
	}
	
	/** Cast a symbol to a std::string. */
	operator TTString() const
	{
		return theString;
	}
};


/**	A pointer to a symbol.  This is the way symbols are typically communicated throughout the environment. */
typedef TTSymbol*  TTSymbolPtr;


#endif // __TT_SYMBOL_H__
