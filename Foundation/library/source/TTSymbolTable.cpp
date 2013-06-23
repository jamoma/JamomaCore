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

#include<iostream>
#include<unordered_map>


typedef std::unordered_map<TTString, TTSymbolBase*>		TTSymbolTableHash;


/** A type that represents the key as a C-String and the value as a pointer to the matching TTSymbol object. */
typedef std::pair<TTString, TTSymbolBase*>				TTSymbolTablePair;


/** An iterator for the STL hash_map used by TTSymbolTable. */
typedef TTSymbolTableHash::const_iterator			TTSymbolTableIter;



static TTMutex*				sMutex = NULL;


#define mSYMBOLTABLE ((TTSymbolTableHash*)(mSymbolTable))


/****************************************************************************************************/

TTSymbolTable::TTSymbolTable(TTBoolean createEmptyTable)
{
	if (!sMutex)
		sMutex = new TTMutex(true);
	mSymbolTable = (TTPtr) new TTSymbolTableHash;
	
	// subclasses of the symbol table will want to initialize this themselves
	if (!createEmptyTable)
		mSYMBOLTABLE->insert(TTSymbolTablePair(TTString(""), createEntry(TTString(""), 0)) );
}


TTSymbolTable::~TTSymbolTable()
{
	TTSymbolTableIter	iter;

	for (iter = mSYMBOLTABLE->begin(); iter != mSYMBOLTABLE->end(); iter++)
		delete (TTSymbolBase*)(iter->second);
	mSYMBOLTABLE->clear();
	delete mSYMBOLTABLE;
	// TODO: we should reference count symbol tables and then free the mutex here, yes?
}


TTSymbolBase* TTSymbolTable::createEntry(const TTString& aString, TTInt32 newSymbolId)
{
	return new TTSymbolBase(aString, TTPtrSizedInt(this), newSymbolId);
}


TTSymbolBase* TTSymbolTable::lookup(const char* aString)
{
#if defined( TT_PLATFORM_WIN ) && OLD
	TTSymbolTableIter	iter;

	sMutex->lock();

	iter = mSYMBOLTABLE->find(aString);
	if (iter == mSYMBOLTABLE->end()) {
		// The symbol wasn't found in the table, so we need to create and add it.
		// TTLogMessage("Adding symbol: %s  With Address: %x", aString, aString);
		TTSymbolBase*	newSymbol = createEntry(aString, mSYMBOLTABLE->size());
		mSYMBOLTABLE->insert(TTSymbolTablePair(newSymbol->string(), newSymbol));
		sMutex->unlock();
		return *newSymbol;
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


TTSymbolBase* TTSymbolTable::lookup(const TTString& aString)
{
//	if (!gTTSymbolTable)					// symbol table hasn't been created yet!
//		gTTSymbolTable = new TTSymbolTable;
//
//	TTSymbolTable *self = gTTSymbolTable; // can't rely on 'this' in the case where we just created the table!
//TTSymbolTable *self = &gTTSymbolTable;
#if defined( TT_PLATFORM_WIN ) && OLD
	return self->lookup(aString.c_str());
#else
	TTSymbolTableIter	iter;

	sMutex->lock();

	iter = ((TTSymbolTableHash*)(mSymbolTable))->find(aString);
	if (iter == ((TTSymbolTableHash*)(mSymbolTable))->end()) {
		// The symbol wasn't found in the table, so we need to create and add it.
		// TTLogMessage("Adding symbol: %s  With Address: %x", aString, aString);
		TTSymbolBase*	newSymbol = createEntry(aString, ((TTSymbolTableHash*)(mSymbolTable))->size());
		((TTSymbolTableHash*)(mSymbolTable))->insert(TTSymbolTablePair(newSymbol->string(), newSymbol));
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


TTSymbolBase* TTSymbolTable::lookup(const int& aNumberToBeConvertedToAString)
{
#if defined( TT_PLATFORM_WIN ) && OLD
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


void TTSymbolTable::dump(/*TTValue& allSymbols*/)
{
	TTSymbolTableIter	iter;

	TTLogMessage("---- DUMPING SYMBOL TABLE -- BEGIN ----\n");
	//allSymbols.clear();
	for (iter = mSYMBOLTABLE->begin(); iter != mSYMBOLTABLE->end(); iter++) {
		//allSymbols.append(TTSymbolRef(iter->second));
		TTLogMessage("KEY:%s   VALUE:%s\n", (iter->first).c_str(), ((TTSymbolBase*)(iter->second))->getCString());
	}
	TTLogMessage("---- DUMPING SYMBOL TABLE -- END ----\n");
}
