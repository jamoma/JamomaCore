/*
 * Jamoma Class that maintains a table of symbols
 * Copyright © 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSymbolTable.h"
#include "TTMutex.h"
#include "TTValue.h"

#ifdef TT_PLATFORM_WIN
    #include <hash_map>
    using namespace stdext;	// Visual Studio 2008 puts the hash_map in this namespace

    /** A simple helper class used by TTSymbolTable for comparing hash_map keys.  */
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

    typedef hash_map<TTString, TTSymbolPtr>     TTSymbolTableHash;

#else
	#include <unordered_map>
	typedef unordered_map<TTString, TTSymbolPtr>		TTSymbolTableHash;
#endif



/** A type that represents the key as a C-String and the value as a pointer to the matching TTSymbol object. */
typedef pair<TTString, TTSymbolPtr>				TTSymbolTablePair;


/** An iterator for the STL hash_map used by TTSymbolTable. */
typedef TTSymbolTableHash::const_iterator			TTSymbolTableIter;



static TTMutex*				sMutex = NULL;
TTFOUNDATION_EXPORT TTSymbolTable*		ttSymbolTable = NULL;


#define mSYMBOLTABLE ((TTSymbolTableHash*)(mSymbolTable))


/****************************************************************************************************/

TTSymbolTable::TTSymbolTable()
{
	if (!sMutex)
		sMutex = new TTMutex(true);
	mSymbolTable = (TTPtr) new TTSymbolTableHash;
	mSYMBOLTABLE->insert(TTSymbolTablePair("", new TTSymbol("", 0)));
}


TTSymbolTable::~TTSymbolTable()
{
	TTSymbolTableIter	iter;

	for (iter = mSYMBOLTABLE->begin(); iter != mSYMBOLTABLE->end(); iter++)
		delete TTSymbolPtr(iter->second);
	mSYMBOLTABLE->clear();
	delete mSYMBOLTABLE;
	// TODO: we should reference count symbol tables and then free the mutex here, yes?
}


TTSymbol* TTSymbolTable::lookup(const char* aString)
{
#ifdef TT_PLATFORM_WIN
	TTSymbolTableIter	iter;

	sMutex->lock();

	iter = mSYMBOLTABLE->find(aString);
	if (iter == mSYMBOLTABLE->end()) {
		// The symbol wasn't found in the table, so we need to create and add it.
		// TTLogMessage("Adding symbol: %s  With Address: %x", aString, aString);
		TTSymbolPtr	newSymbol = new TTSymbol(aString, mSYMBOLTABLE->size());
		mSYMBOLTABLE->insert(TTSymbolTablePair(newSymbol->getCString(), newSymbol));
		sMutex->unlock();
		return newSymbol;
	}
	else {
		// The symbol was found, so we return it.
		sMutex->unlock();
		return iter->second;
	}
#else
	const TTString s(aString);
	return lookup(s);
#endif
}


TTSymbol* TTSymbolTable::lookup(const TTString& aString)
{
#ifdef TT_PLATFORM_WIN
	return lookup(aString.c_str());
#else
	TTSymbolTableIter	iter;

	sMutex->lock();

	iter = mSYMBOLTABLE->find(aString);
	if (iter == mSYMBOLTABLE->end()) {
		// The symbol wasn't found in the table, so we need to create and add it.
		// TTLogMessage("Adding symbol: %s  With Address: %x", aString, aString);
		TTSymbolPtr	newSymbol = new TTSymbol(aString, mSYMBOLTABLE->size());
		mSYMBOLTABLE->insert(TTSymbolTablePair(newSymbol->getCString(), newSymbol));
		sMutex->unlock();
		return newSymbol;
	}
	else {
		// The symbol was found, so we return it.
		sMutex->unlock();
		return iter->second;
	}
#endif
}


TTSymbol* TTSymbolTable::lookup(const int& aNumberToBeConvertedToAString)
{
#ifdef TT_PLATFORM_WIN
	char	cString[16];

	snprintf(cString, 16, "%d", aNumberToBeConvertedToAString);
	return lookup(cString);
#else
	char	cString[16];

	snprintf(cString, 16, "%d", aNumberToBeConvertedToAString);

	TTString s(cString);
	return lookup(s);
#endif
}


void TTSymbolTable::dump(TTValue& allSymbols)
{
	TTSymbolTableIter	iter;

	//TTLogMessage("---- DUMPING SYMBOL TABLE -- BEGIN ----\n");
	allSymbols.clear();
	for (iter = mSYMBOLTABLE->begin(); iter != mSYMBOLTABLE->end(); iter++) {
		allSymbols.append(TTSymbolPtr(iter->second));
		//TTLogMessage("KEY:%s   VALUE:%s\n", iter->first, TTSymbolPtr(iter->second)->getCString());
	}
	//TTLogMessage("---- DUMPING SYMBOL TABLE -- END ----\n");
}
