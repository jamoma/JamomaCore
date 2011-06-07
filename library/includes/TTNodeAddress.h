/* 
 * TTNodeAddress
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_NODE_ADDRESS_H__
#define __TT_NODE_ADDRESS_H__

#ifdef WIN_VERSION
#pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "TTSymbol.h"

class TTNodeAddress;
typedef TTNodeAddress*	TTNodeAddressPtr;

#define NO_DEVICE		kTTSymEmpty
#define NO_PARENT		kTTAdrsEmpty
#define NO_NAME			kTTSymEmpty
#define NO_INSTANCE		kTTSymEmpty
#define NO_ATTRIBUTE	kTTSymEmpty

#define C_SEPARATOR		'/'
#define C_INSTANCE		'.'
#define C_ATTRIBUTE		':'
#define C_WILDCARD		'*'

#define S_SEPARATOR		kTTSymSlash
#define S_INSTANCE		kTTSymDot
#define S_ATTRIBUTE		kTTSymColon
#define S_WILDCARD		kTTSymStar

#define S_DEVICE		TT(":/")


// Comparison flags between address returned by address1->compare(address2)
// The comparison function doesn't compare attribute part
enum TTNodeAddressComparisonFlag {
	kAddressLower = -1,					///< this flag means that address1 refers to a node at a lower level than address2 in the tree structure
	kAddressDifferent = 0,				///< this flag means that address1 an address2 refer to nodes which are in a different branch in the tree structure
	kAddressEqual = 1,					///< this flag means that address1 an address2 refer to the same node in the tree structure
	kAddressUpper = 2					///< this flag means that address1 refers to a node at a upper level than address2 in the tree structure
};

// Notification flags to notify observers of a directory
enum TTNodeAddressNotificationFlag {
	kAddressDestroyed = 0,				///< this flag means that a TTNode have been destroyed in the tree structure
	kAddressCreated = 1					///< this flag means that a TTNode have been created in the tree structure
};

// Type flags to state about absolute or relative address
enum TTNodeAddressType {
	kAddressRelative = 0,				///< this flag means that an address have no leading slash
	kAddressAbsolute = 1,				///< this flag means that an address have a leading slash
};

/****************************************************************************************************/
// Class Specifications

/**
 
 An address could be
 
 device:/parent/name.instance:attribute
 
 */

class TTFOUNDATION_EXPORT TTNodeAddress : public TTSymbol
{
private:
	
	TTSymbolPtr					device;					///< the device part if exists
	
	TTNodeAddressPtr			parent;					///< the parent address pointer
	
	TTSymbolPtr					name;					///< the name part
	TTSymbolPtr					instance;				///< the instance part
	
	TTSymbolPtr					attribute;				///< the attribute part if exists
	
	TTNodeAddressType			type;					///< is the address relative or absolute
	
	TTBoolean					parsed;					///< is the address has been parsed ?
	
public:
	
	/** Constructor */
	TTNodeAddress();
	TTNodeAddress(const TTString& newAddressString, TTInt32 newId);
	TTNodeAddress(const TTSymbolPtr newDevice, const TTNodeAddressPtr newParent, const TTSymbolPtr newName, const TTSymbolPtr newInstance, const TTSymbolPtr newAttribute);

	/** Destructor */
	virtual ~TTNodeAddress();
	
	/** Get the device part */
	TTSymbolPtr					getDevice();
	
	/** Get a pointer to the parent address */
	TTNodeAddressPtr			getParent();
	
	/** Get the name part */
	TTSymbolPtr					getName();
	
	/** Get the instance part */
	TTSymbolPtr					getInstance();
	
	/** Get the attribute part */
	TTSymbolPtr					getAttribute();
	
	/** Get the type */
	TTNodeAddressType			getType();
	
	/** Return a new TTNodeAddress without attribute part */
	TTNodeAddressPtr			removeAttribute();
	
	/** Return a new TTNodeAddress with attribute part */
	TTNodeAddressPtr			appendAttribute(TTSymbolPtr anAttribute);
	
	/** Return a new TTNodeAddress with the appended part */
	TTNodeAddressPtr			appendAddress(const TTNodeAddressPtr toAppend);

	/**	A comparison tool
	 @param	toCompare					An address to compare (it doesn't compare attribute part)
	 @return							An comparison flag */
	TTNodeAddressComparisonFlag compare(const TTNodeAddressPtr toCompare);
	
	/**	A parsing tool : split address in two part from a given '/' position
	 @param whereToSplit				An int to give the '/' id where to split
	 @param	returnedPart1				A pointer to upper part (before the given position) : /part1
	 @param	returnedPart2				A pointer to lower part (after the given position) : /part2
	 @return							kTTValueNotFound if the given '/' id doesn't exist */
	TTErr						splitAt(TTUInt32 whereToSplit, TTNodeAddressPtr* returnedPart1, TTNodeAddressPtr* returnedPart2);
	
	/**	A parsing tool : count how many C_SEPARATOR there is in the address
	 @param	oscAddress					An address
	 @return							The number of C_SEPARATOR */
	TTUInt32					countSeparator();
	
	
private:
	/** Parse the address to get device, parent, name, instance and attribute part 
	 @return							An error code if the parsing failed */
	TTErr						parse();
	
	/** Edit address from device, parent, name, instance and attribute part 
	 @return							A new TTNodeAddressPtr */
	TTNodeAddressPtr			edit(const TTSymbolPtr newDevice, const TTNodeAddressPtr newParent, const TTSymbolPtr newName, const TTSymbolPtr newInstance, const TTSymbolPtr newAttribute);
	
};

/**	Make a "public/name" symbol from "PublicName" symbol
 @param	oscAddress					"PublicName" symbol
 @return							"public/name" symbol */
TTNodeAddressPtr TTFOUNDATION_EXPORT	convertTTNameInAddress(TTSymbolPtr ttName);


#endif // __TT_NODE_ADDRESS_H__
