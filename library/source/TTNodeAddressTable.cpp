/*
 * Jamoma Class that maintains a table of addresses
 * Copyright © 2011, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTNodeAddressTable.h"
#include "TTMutex.h"
#include "TTValue.h"

#ifdef TT_PLATFORM_WIN
#include <hash_map>
using namespace stdext;	// Visual Studio 2008 puts the hash_map in this namespace

/** A simple helper class used by TTNodeAddressTable for comparing hash_map keys.  */
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

typedef hash_map<TTString, TTNodeAddressPtr>     TTNodeAddressTableHash;

#else
#if OLD
	#include "boost/unordered_map.hpp"
	using namespace boost;
#else
	#include <unordered_map>
#endif
	typedef unordered_map<std::string, TTNodeAddressPtr>		TTNodeAddressTableHash;
#endif



/** A type that represents the key as a C-String and the value as a pointer to the matching TTNodeAddress object. */
typedef pair<const char*, TTNodeAddressPtr>				TTNodeAddressTablePair;


/** An iterator for the STL hash_map used by TTNodeAddressTable. */
typedef TTNodeAddressTableHash::const_iterator			TTNodeAddressTableIter;



static TTMutex*				aMutex = NULL;
TTFOUNDATION_EXPORT TTNodeAddressTable* ttNodeAddressTable = NULL;

#define mNODEADDRESSTABLE ((TTNodeAddressTableHash*)(mNodeAddressTable))

/****************************************************************************************************/

TTNodeAddressTable::TTNodeAddressTable()
{
	if (!aMutex)
		aMutex = new TTMutex(true);
	mNodeAddressTable = (TTPtr) new TTNodeAddressTableHash;
	mNODEADDRESSTABLE->insert(TTNodeAddressTablePair("", new TTNodeAddress("", 0)));
}


TTNodeAddressTable::~TTNodeAddressTable()
{
	TTNodeAddressTableIter	iter;
	
	for (iter = mNODEADDRESSTABLE->begin(); iter != mNODEADDRESSTABLE->end(); iter++)
		delete TTNodeAddressPtr(iter->second);
	mNODEADDRESSTABLE->clear();
	delete mNODEADDRESSTABLE;
	// TODO: we should reference count symbol tables and then free the mutex here, yes?
}

TTNodeAddress* TTNodeAddressTable::lookup(const char* aString)
{
#ifdef TT_PLATFORM_WIN
	TTNodeAddressTableIter	iter;

	aMutex->lock();

	iter = mNODEADDRESSTABLE->find(aString);
	if (iter == mNODEADDRESSTABLE->end()) {
		// The symbol wasn't found in the table, so we need to create and add it.
		// TTLogMessage("Adding node address: %s  With Address: %x", aString, aString);
		TTNodeAddressPtr	newNodeAddress = new TTNodeAddress(aString, mNODEADDRESSTABLE->size());
		mNODEADDRESSTABLE->insert(TTNodeAddressTablePair(newNodeAddress->getCString(), newNodeAddress));
		aMutex->unlock();
		return newNodeAddress;
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


TTNodeAddress* TTNodeAddressTable::lookup(const TTString& aString)
{
#ifdef TT_PLATFORM_WIN
	return lookup(aString.c_str());
#else
	TTNodeAddressTableIter	iter;

	aMutex->lock();

	iter = mNODEADDRESSTABLE->find(aString);
	if (iter == mNODEADDRESSTABLE->end()) {
		// The symbol wasn't found in the table, so we need to create and add it.
		// TTLogMessage("Adding node address: %s  With Address: %x", aString, aString);
		TTNodeAddressPtr	newNodeAddress = new TTNodeAddress(aString, mNODEADDRESSTABLE->size());
		mNODEADDRESSTABLE->insert(TTNodeAddressTablePair(newNodeAddress->getCString(), newNodeAddress));
		aMutex->unlock();
		return newNodeAddress;
	}
	else {
		// The symbol was found, so we return it.
		aMutex->unlock();
		return iter->second;
	}
#endif
}

void TTNodeAddressTable::dump(TTValue& allNodeAddresss)
{
	TTNodeAddressTableIter	iter;
	
	//TTLogMessage("---- DUMPING SYMBOL TABLE -- BEGIN ----\n");
	allNodeAddresss.clear();
	for (iter = mNODEADDRESSTABLE->begin(); iter != mNODEADDRESSTABLE->end(); iter++) {
		allNodeAddresss.append(TTNodeAddressPtr(iter->second));
		//TTLogMessage("KEY:%s   VALUE:%s\n", iter->first, TTNodeAddressPtr(iter->second)->getCString());
	}
	//TTLogMessage("---- DUMPING SYMBOL TABLE -- END ----\n");
}
