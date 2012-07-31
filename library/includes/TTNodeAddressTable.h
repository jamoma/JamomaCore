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
#include "TTNodeAddress.h"

/** This macro is defined as a shortcut for doing a lookup in the address table. */
#define TTADRS ttNodeAddressTable->lookup


/****************************************************************************************************/
// Class Specifications

/**
	The TTNodeAddressTable class is hash_map (based on Stroustrup pp 497) that keeps
	commonly used strings in a table so that we can refer to them simply as a pointers for fast comparison.
 */

class TTFOUNDATION_EXPORT TTNodeAddressTable : public TTBase {
private:
	TTPtr	mNodeAddressTable;	///< The address table, mapping strings to pointers

public:
	TTNodeAddressTable();
	virtual	~TTNodeAddressTable();

	/** Look in the address table for this string.  If it exists then return its id.
		If it does not exist then it is created, added to the address table and this new address's id is returned.	*/
	TTNodeAddress* lookup(const char* aString);

	/** Look in the address table for this string.  If it exists then return its id.
		If it does not exist then it is created, added to the address table and this new address's id is returned.	*/
	TTNodeAddress* lookup(const TTString& aString);
	
	/**	Debugging tool to make it easy to examine everything that is in the address table. */
	void dump(TTValue& allNodeAddresss);
};

extern TTFOUNDATION_EXPORT TTNodeAddressTable* ttNodeAddressTable;		///< The global table of addresses


#endif // __TT_NODE_ADDRESS_TABLE_H__

