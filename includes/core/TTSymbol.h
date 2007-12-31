/* 
 * TTBlue Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SYMBOL_H__
#define __TT_SYMBOL_H__

#include "TTBase.h"

/****************************************************************************************************/
// Class Specification

class TTSymbol : TTBase {
private:
	char		*string;	///< the actual string represented by this symbol
	TTUInt32	id;			///< a unique identifier for the given string
//	static 					// TODO: This will be the shared symbol table for the class

public:
	TTSymbol(char *newString);
	virtual ~TTSymbol();

	const char*				getString();
	const TTUInt32			getId();
	TTBoolean				compare(TTString &anotherString);

	/** Look in the symbol table for this string.  If it exists then return its id.  
	 *	If it does not exist then it is created, added to the symbol table and this new symbol's id is returned. */
	static const TTUInt32	lookup(char *string);
};


#endif // __TT_SYMBOL_H__

