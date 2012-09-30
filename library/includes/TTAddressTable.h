/*
 * Jamoma Class that maintains a table of addresses
 * Copyright © 2011, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#if !defined( __TT_NODE_ADDRESS_TABLE_H__ ) && !defined ( DISABLE_NODELIB )
#define __TT_NODE_ADDRESS_TABLE_H__

#include "TTBase.h"
#include "TTAddress.h"

/** This macro is defined as a shortcut for doing a lookup in the address table. */
#define TTADRS ttAddressTable->lookup


/****************************************************************************************************/
// Class Specifications

/**
	The TTNodeAddressTable class is hash_map (based on Stroustrup pp 497) that keeps
	commonly used strings in a table so that we can refer to them simply as a pointers for fast comparison.
 */

class TTFOUNDATION_EXPORT TTAddressTable : public TTBase {
private:
	TTPtr	mAddressTable;	///< The address table, mapping strings to pointers

public:
	TTAddressTable();
	virtual	~TTAddressTable();

	/** Look in the address table for this string.  If it exists then return its id.
		If it does not exist then it is created, added to the address table and this new address's id is returned.	*/
	TTAddress* lookup(const char* aString);

	/** Look in the address table for this string.  If it exists then return its id.
		If it does not exist then it is created, added to the address table and this new address's id is returned.	*/
	TTAddress* lookup(const TTString& aString);
	
	/**	Debugging tool to make it easy to examine everything that is in the address table. */
	void dump(TTValue& allNodeAddresss);
};

extern TTFOUNDATION_EXPORT TTAddressTable* ttAddressTable;		///< The global table of addresses


#endif // __TT_NODE_ADDRESS_TABLE_H__

