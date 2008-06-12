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
 
	Note that generally speaking you should not create a TTSymbol.  Instead, TTSymbol objects should only
	by created by the TTSymbolTable that you are using.  Because of this we *always* pass TTSymbols as
	pointers into the symbol table rather than as references or copies.
*/
class TTEXPORT TTSymbol : public TTElement {
private:
	TTString				string;				///< the actual string represented by this symbol
	TTUInt32				id;					///< a unique identifier for the given string
	TTUInt32				size;				///< how many chars in the string
	TTBoolean				locallyOwned;		///< is the string allocated or just a pointer that we don't own?

	/** used by the constructors to create the new symbol */
	void init(const char* newString, TTInt32 newId);

public:
	TTSymbol();
	TTSymbol(const char* newString);
	
	/** This constructor is intended only for use by the TTSymbolTable object when creating new symbols
		in the table.  Perhaps this could be made private and then the class made a friend... */
	TTSymbol(const char*, TTInt32 newId);

	virtual	~TTSymbol();
	
	/** Copy Constructor */
	TTSymbol(const TTSymbol& oldSymbol);

	const TTString getString();
	const TTUInt32 getId();
	TTBoolean compare(TTSymbol& anotherSymbol);
	
	// make sure this is a friend so that it can access the private members of the other
	inline friend bool operator == (const TTSymbol& symbol1, const TTSymbol& symbol2)
	{
		if(symbol1.id == symbol2.id)
			return true;
		else
			return false;
	}
	
	operator TTString() const
	{
		return string;
	}
};


#endif // __TT_SYMBOL_H__
