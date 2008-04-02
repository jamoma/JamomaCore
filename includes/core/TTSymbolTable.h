/* 
 * TTBlue Class that maintains a table of symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SYMBOLTABLE_H__
#define __TT_SYMBOLTABLE_H__

#include "TTElement.h"
#include "TTSymbol.h"

class TTSymbolTable;
extern TTSymbolTable ttSymbolTable;		///< The global table of symbols

/** This macro is defined as a shortcut for doing a lookup in the symbol table. */
#define TT ttSymbolTable.lookup

/****************************************************************************************************/
// Class Specification


/**
	The current implementation of this TTSymbolTable class is somewhat crude and really slow 
	and it should be improved in the future.
	It has an internal table that is implemented as a fixed array.
	Each symbol is identified by its index in this array.
*/
class TTSymbolTable : public TTElement {
private:
	TTSymbol**	symbolTable;
	TTUInt32	symbolTableLength;	///< Number of symbols stored in the table
	TTUInt32	symbolTableSize;	///< Maximum number of symbols for which there is room in the table

public:
	TTSymbolTable();
	virtual	~TTSymbolTable();

	/** Look in the symbol table for this string.  If it exists then return its id.  
	 *	If it does not exist then it is created, added to the symbol table and this new symbol's id is returned. 
	 * 
	 * This lookup is called directly, but also from the TTSymbol constructor, which allows 
	 * us to call methods expecting a TTSymbol by passing them simple c strings.
	 */
	TTSymbol& lookup(const char* string);
};


#endif // __TT_SYMBOLTABLE_H__

