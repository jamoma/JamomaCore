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

/** This macro is defined as a shortcut for doing a lookup in the symbol table. */
#define TT *TTSymbol::lookup

/****************************************************************************************************/
// Class Specification


/**
	The TTSymbol class is used to represent a string and efficiently pass and compare that string.
	At the moment the implementation is somewhat crude and really slow and it should be improved in the future.

	This current implementation has an internal table that is implemented as a fixed array.
	Each symbol is identified by its index in this array.
*/
class TTSymbol : public TTElement {
private:
	TTString				string;				///< the actual string represented by this symbol
	TTUInt32				id;					///< a unique identifier for the given string
	static TTSymbol**		symbolTable;		///< The shared symbol table for the class
	static TTUInt32			symbolTableSize;	///< The size of the symbol table

public:
	TTSymbol();
	TTSymbol(TTString newString);
	virtual	~TTSymbol();
	
	/** Copy Constructor */
	TTSymbol(const TTSymbol& oldSymbol);

	const TTString			getString();
	const TTUInt32			getId();
	TTBoolean				compare(TTSymbol& anotherSymbol);
	
	// make sure this is a friend so that it can access the private members of the other atom
	friend bool operator == (const TTSymbol& symbol1, const TTSymbol& symbol2)
	{
		if(symbol1.id == symbol2.id)
			return true;
		else
			return false;
	}

	//friend bool operator == (const TTValue& a1, const TTValue& a2);

	/** Look in the symbol table for this string.  If it exists then return its id.  
	 *	If it does not exist then it is created, added to the symbol table and this new symbol's id is returned. */
	static const TTSymbol*	lookup(const TTString string);
};


#endif // __TT_SYMBOL_H__

