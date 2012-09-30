/*
 * Jamoma Class that maintains a table of addresses
 * Copyright © 2011, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef DISABLE_NODELIB

#include "TTAddressTable.h"
#include "TTMutex.h"
#include "TTValue.h"

#ifdef TT_PLATFORM_WIN
#include <hash_map>
using namespace stdext;	// Visual Studio 2008 puts the hash_map in this namespace

/** A simple helper class used by TTAddressTable for comparing hash_map keys.  */
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

typedef hash_map<TTString, TTAddressPtr>     TTAddressTableHash;

#else
#if OLD
	#include "boost/unordered_map.hpp"
	using namespace boost;
#else
	#include <unordered_map>
#endif
	typedef unordered_map<std::string, TTAddressPtr>		TTAddressTableHash;
#endif



/** A type that represents the key as a C-String and the value as a pointer to the matching TTAddress object. */
typedef pair<const char*, TTAddressPtr>				TTAddressTablePair;


/** An iterator for the STL hash_map used by TTAddressTable. */
typedef TTAddressTableHash::const_iterator			TTAddressTableIter;



static TTMutex*				aMutex = NULL;
TTFOUNDATION_EXPORT TTAddressTable* ttAddressTable = NULL;

#define mNODEADDRESSTABLE ((TTAddressTableHash*)(mAddressTable))

/****************************************************************************************************/

TTAddressTable::TTAddressTable()
{
	if (!aMutex)
		aMutex = new TTMutex(true);
	mAddressTable = (TTPtr) new TTAddressTableHash;
	mNODEADDRESSTABLE->insert(TTAddressTablePair("", new TTAddress("", 0)));
}


TTAddressTable::~TTAddressTable()
{
	TTAddressTableIter	iter;
	
	for (iter = mNODEADDRESSTABLE->begin(); iter != mNODEADDRESSTABLE->end(); iter++)
		delete TTAddressPtr(iter->second);
	mNODEADDRESSTABLE->clear();
	delete mNODEADDRESSTABLE;
	// TODO: we should reference count symbol tables and then free the mutex here, yes?
}

TTAddress* TTAddressTable::lookup(const char* aString)
{
#ifdef TT_PLATFORM_WIN
	TTAddressTableIter	iter;

	aMutex->lock();

	iter = mNODEADDRESSTABLE->find(aString);
	if (iter == mNODEADDRESSTABLE->end()) {
		// The symbol wasn't found in the table, so we need to create and add it.
		// TTLogMessage("Adding node address: %s  With Address: %x", aString, aString);
		TTAddressPtr	newAddress = new TTAddress(aString, mNODEADDRESSTABLE->size());
		mNODEADDRESSTABLE->insert(TTAddressTablePair(newAddress->getCString(), newAddress));
		aMutex->unlock();
		return newAddress;
	}
	else {
		// The symbol was found, so we return it.
		aMutex->unlock();
		return iter->second;
	}
#else
	const TTString s(aString);
	return lookup(s);
#endif
}


TTAddress* TTAddressTable::lookup(const TTString& aString)
{
#ifdef TT_PLATFORM_WIN
	return lookup(aString.c_str());
#else
	TTAddressTableIter	iter;

	aMutex->lock();

	iter = mNODEADDRESSTABLE->find(aString.c_str());
	if (iter == mNODEADDRESSTABLE->end()) {
		// The symbol wasn't found in the table, so we need to create and add it.
		// TTLogMessage("Adding node address: %s  With Address: %x", aString, aString);
		TTAddressPtr	newAddress = new TTAddress(aString, mNODEADDRESSTABLE->size());
		mNODEADDRESSTABLE->insert(TTAddressTablePair(newAddress->getCString(), newAddress));
		aMutex->unlock();
		return newAddress;
	}
	else {
		// The symbol was found, so we return it.
		aMutex->unlock();
		return iter->second;
	}
#endif
}

void TTAddressTable::dump(TTValue& allAddresss)
{
	TTAddressTableIter	iter;
	
	//TTLogMessage("---- DUMPING SYMBOL TABLE -- BEGIN ----\n");
	allAddresss.clear();
	for (iter = mNODEADDRESSTABLE->begin(); iter != mNODEADDRESSTABLE->end(); iter++) {
		allAddresss.append(TTAddressPtr(iter->second));
		//TTLogMessage("KEY:%s   VALUE:%s\n", iter->first, TTAddressPtr(iter->second)->getCString());
	}
	//TTLogMessage("---- DUMPING SYMBOL TABLE -- END ----\n");
}

#endif
