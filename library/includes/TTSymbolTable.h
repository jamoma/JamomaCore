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

#ifdef TT_PLATFORM_MAC
#include <hash_map.h>
#else
#include <hash_map>
using namespace stdext;	// Visual Studio 2008 puts the hash_map in this namespace
#endif


/** This macro is defined as a shortcut for doing a lookup in the symbol table. */
#define TT ttSymbolTable->lookup


/** A simple helper class used by TTSymbolTable for comparing hash_map keys.  */
#ifdef TT_PLATFORM_WIN
class TTStringCompare : public stdext::hash_compare<const TTCString> {
public:
	bool operator()(const TTCString s1, const TTCString s2) const
	{
		return !strcmp(s1, s2);
	}

	std::size_t operator()(const TTCString s)
	{
		return stdext::hash_value(s);
	}
};
#else
class TTStringCompare {
public:
	bool operator()(const char* s1, const char* s2) const
	{
		return !strcmp(s1, s2);
	}
};
#endif

/** A type that represents the key as a C-String and the value as a pointer to the matching TTSymbol object. */
typedef pair<const char*, TTSymbolPtr>										TTSymbolTablePair;

/** A hash_map type used by TTSymbolTable. */
#ifdef TT_PLATFORM_WIN
typedef hash_map<TTString, TTSymbolPtr>										TTSymbolTableHash;
#else
typedef hash_map<const char*, TTSymbolPtr, hash<char*>, TTStringCompare>	TTSymbolTableHash;
#endif

/** An iterator for the STL hash_map used by TTSymbolTable. */
typedef TTSymbolTableHash::const_iterator									TTSymbolTableIter;


// Forward declarations
class TTValue;


/****************************************************************************************************/
// Class Specifications

/**
	The TTSymbolTable class is hash_map (based on Stroustrup pp 497) that keeps 
	commonly used strings in a table so that we can refer to them simply as a pointers for fast comparison.	
 */

class TTEXPORT TTSymbolTable : public TTElement {
private:
	TTSymbolTableHash*	symbolTable;	///< The symbol table, implemented internally as an STL hash_map.

public:
	TTSymbolTable();
	virtual	~TTSymbolTable();

	/** Look in the symbol table for this string.  If it exists then return its id.  
		If it does not exist then it is created, added to the symbol table and this new symbol's id is returned.	*/
	TTSymbol* lookup(const char* aString);
	
	/** Look in the symbol table for this string.  If it exists then return its id.  
		If it does not exist then it is created, added to the symbol table and this new symbol's id is returned.	*/
	TTSymbol* lookup(const TTString& aString);
	
	/**	Debugging tool to make it easy to examine everything that is in the symbol table. */
	void dump(TTValue& allSymbols);
};


extern TTEXPORT TTSymbolTable* ttSymbolTable;		///< The global table of symbols


#endif // __TT_SYMBOLTABLE_H__

