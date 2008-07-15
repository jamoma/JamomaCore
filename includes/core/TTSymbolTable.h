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
#include <hash_map.h>
using namespace std;
#include "TTValue.h"

/** This macro is defined as a shortcut for doing a lookup in the symbol table. */
#define TT ttSymbolTable->lookup


/** A simple helper class used by TTSymbolTable for comparing hash_map keys.  */
class TTStringCompare {
public:
	bool operator()(const char* s1, const char* s2) const
	{
		return !strcmp(s1, s2);
	}
};


/** A type that represents the key as a C-String and the value as a pointer to the matching TTSymbol object. */
typedef pair<const char*, TTSymbolPtr>														TTSymbolTablePair;

/** An iterator for the STL hash_map used by TTSymbolTable. */
typedef hash_map<const char*, TTSymbolPtr, hash<char*>, TTStringCompare>::const_iterator	TTSymbolTableIter;


/****************************************************************************************************/
// Class Specifications


/**
	The TTSymbolTable class is hash_map (based on Stroustrup pp 497) that keeps 
	commonly used strings in a table so that we can refer to them simply as a pointers for fast comparison.
*/
class TTEXPORT TTSymbolTable : public TTElement {
private:
	hash_map<const char*, TTSymbolPtr, hash<char*>, TTStringCompare>	symbolTable;	///< The symbol table, implemented internally as an STL hash_map.

public:
	TTSymbolTable();
	virtual	~TTSymbolTable();

	/** Look in the symbol table for this string.  If it exists then return its id.  
		If it does not exist then it is created, added to the symbol table and this new symbol's id is returned.	*/
	TTSymbol* lookup(const char* aString);
	
	/** Look in the symbol table for this string.  If it exists then return its id.  
		If it does not exist then it is created, added to the symbol table and this new symbol's id is returned.	*/
	TTSymbol* lookup(string& aString);
	
	/**	Debugging tool to make it easy to examine everything that is in the symbol table. */
	void dump(TTValue& allSymbols);
};

extern TTEXPORT TTSymbolTable* ttSymbolTable;		///< The global table of symbols

#endif // __TT_SYMBOLTABLE_H__

