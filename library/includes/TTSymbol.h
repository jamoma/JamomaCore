/* 
 * TTBlue Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SYMBOL_H__
#define __TT_SYMBOL_H__

#include "TTBase.h"
#include "TTString.h"

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
class TTFOUNDATION_EXPORT TTSymbol : public TTBase {
protected:

// Microsoft's compiler complains because TTString (std::string) does not have a DLL-Interface
// In this case, we never pass TTSymbols or reference them directly -- we always use TTSymbolPtrs,
// So it's okay that this class's struct may be of an undetermined size depending on compiler or compiler settings.
#if defined(_MSC_VER)
__pragma(warning(push))
__pragma(warning(disable:4251))
#endif

	TTUInt32		id;					///< a unique identifier for the given string
	TTString		theString;			///< the actual string represented by this symbol

#if defined(_MSC_VER)
__pragma(warning(pop))
#endif

	/** used by the constructors to create the new symbol */
	void init(const TTString& newString, TTInt32 newId);

public:
	
	/** To authorize inheritance */
	TTSymbol();
	
	/** The constructor is intended only for use by the TTSymbolTable object when creating new symbols
		in the table.  Perhaps this could be made private and then the class made a friend... */
	TTSymbol(const TTString& newString, TTInt32 newId);

	virtual	~TTSymbol();
	
	/** Copy Constructor */
	TTSymbol(const TTSymbol& oldSymbol);

#ifdef LIVE_DANGEROUSLY
	/**	Return a pointer to the internal string. */
	const TTString getString();
#endif
	
	/**	Return a pointer to the internal string as a C-string. */
	const char* getCString();
	
	/**	Return this symbol's unique id. */
	/*const*/ TTUInt32 getId();
	
	// make sure this is a friend so that it can access the private members of the other
	/** Compare two symbols for equality. */
	inline friend bool operator == (const TTSymbol& symbol1, const TTSymbol& symbol2)
	{
		if (symbol1.id == symbol2.id)
			return true;
		else
			return false;
	}
	
	/** Cast a symbol to a C-string. */
	operator const char*() const
	{
		return theString.c_str();
	}
	
#ifdef LIVE_DANGEROUSLY
	/** Cast a symbol to a std::string. */
	operator TTString() const
	{
		return theString;
	}
#endif
	
	
	/** Generate a pseudo-random symbol */
	static TTSymbol* random();
	
};


/**	A pointer to a symbol.  This is the way symbols are typically communicated throughout the environment. */
typedef TTSymbol*  TTSymbolPtr;


#endif // __TT_SYMBOL_H__
