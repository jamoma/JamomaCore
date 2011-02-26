/* 
 * TTBlue Class that maintains a table of symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SYMBOLTABLE_H__
#define __TT_SYMBOLTABLE_H__

#include "TTBase.h"
#include "TTSymbol.h"


/** This macro is defined as a shortcut for doing a lookup in the symbol table. */
#define TT ttSymbolTable->lookup



/****************************************************************************************************/
// Class Specifications

/**
	The TTSymbolTable class is hash_map (based on Stroustrup pp 497) that keeps 
	commonly used strings in a table so that we can refer to them simply as a pointers for fast comparison.	
 */

class TTFOUNDATION_EXPORT TTSymbolTable : public TTBase {
private:
	//TTSymbolTableHash*	symbolTable;	///< The symbol table, implemented internally as an STL hash_map.
	TTPtr	mSymbolTable;
	
public:
	TTSymbolTable();
	virtual	~TTSymbolTable();

	/** Look in the symbol table for this string.  If it exists then return its id.  
		If it does not exist then it is created, added to the symbol table and this new symbol's id is returned.	*/
	TTSymbol* lookup(const char* aString);
	
	/** Look in the symbol table for this string.  If it exists then return its id.  
		If it does not exist then it is created, added to the symbol table and this new symbol's id is returned.	*/
	TTSymbol* lookup(const TTString& aString);

	/** Look in the symbol table for a string with this number as its content.
		If it exists then return its id.  
		If it does not exist then it is created, added to the symbol table and this new symbol's id is returned.	*/
	TTSymbol* lookup(const int& aNumberToBeConvertedToAString);

	/**	Debugging tool to make it easy to examine everything that is in the symbol table. */
	void dump(TTValue& allSymbols);
};


extern TTFOUNDATION_EXPORT TTSymbolTable* ttSymbolTable;		///< The global table of symbols


#endif // __TT_SYMBOLTABLE_H__

