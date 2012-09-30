/* 
 * TTAddress
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_ADDRESS_H__
#define __TT_ADDRESS_H__

#ifdef WIN_VERSION
#pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "TTSymbol.h"

class TTAddress;
typedef TTAddress*	TTAddressPtr;

class TTRegex;
typedef TTRegex*	TTRegexPtr;

class TTList;
typedef TTList*		TTListPtr;


#define NO_DIRECTORY	kTTSymEmpty
#define NO_PARENT		kTTAdrsEmpty
#define NO_NAME			kTTSymEmpty
#define NO_INSTANCE		kTTSymEmpty
#define NO_ATTRIBUTE	kTTSymEmpty

#define C_SEPARATOR		'/'
//#define C_INSTANCE	'.'
const char C_INSTANCE = '.';
#define C_ATTRIBUTE		':'
#define C_WILDCARD		'*'
#define C_ZERO			'0'

#define S_SEPARATOR		kTTSymSlash
#define S_INSTANCE		kTTSymDot
#define S_ATTRIBUTE		kTTSymColon
#define S_WILDCARD		kTTSymStar

#define S_DIRECTORY		TT(":/")
#define S_ZERO			TT("0")


// Comparison flags between address returned by address1->compare(address2)
// The comparison function doesn't compare attribute part
enum TTAddressComparisonFlag {
	kAddressLower = -1,					///< this flag means that address1 refers to a node at a lower level than address2 in the tree structure
	kAddressDifferent = 0,				///< this flag means that address1 an address2 refer to nodes which are in a different branch in the tree structure
	kAddressEqual = 1,					///< this flag means that address1 an address2 refer to the same node in the tree structure
	kAddressUpper = 2					///< this flag means that address1 refers to a node at a upper level than address2 in the tree structure
};

// Notification flags to notify observers of a directory
enum TTAddressNotificationFlag {
	kAddressDestroyed = 0,				///< this flag means that a TTNode have been destroyed in the tree structure
	kAddressCreated = 1					///< this flag means that a TTNode have been created in the tree structure
};

// Type flags to state about absolute or relative address
enum TTAddressType {
	kAddressRelative = 0,				///< this flag means that an address have no leading slash
	kAddressAbsolute = 1,				///< this flag means that an address have a leading slash
};

extern TTFOUNDATION_EXPORT TTRegex* ttRegexForDirectory;	///< The global regex to parse directory part
extern TTFOUNDATION_EXPORT TTRegex* ttRegexForAttribute;	///< The global regex to parse attribute part
extern TTFOUNDATION_EXPORT TTRegex* ttRegexForParent;		///< The global regex to parse parent part
extern TTFOUNDATION_EXPORT TTRegex* ttRegexForInstance;		///< The global regex to parse instance part
extern TTFOUNDATION_EXPORT TTRegex* ttRegexForInstanceZero;	///< The global regex to parse instance .0

/****************************************************************************************************/
// Class Specifications

/**
 
 An address could be
 
 directory:/parent/name.instance:attribute
 
 */

class TTFOUNDATION_EXPORT TTAddress : public TTSymbolBase
{
private:
	
	TTSymbol					directory;				///< the directory part (optional)
	
	TTAddressPtr			parent;					///< the parent address pointer (optional)
	
	TTSymbol					name;					///< the name part
	TTSymbol					instance;				///< the instance part (optional)
	
	TTSymbol					attribute;				///< the attribute part (optional)
	
	TTAddressType			type;					///< is the address relative or absolute
	
	TTBoolean					parsed;					///< is the address has been parsed ?
	
public:
	
	/** Constructor */
	TTAddress();
	TTAddress(const TTString& newAddressString, TTInt32 newId);

	/** Destructor */
	virtual ~TTAddress();
	
	/** Get the directory part */
	TTSymbol					getDirectory();
	
	/** Get a pointer to the parent address */
	TTAddressPtr			getParent();
	
	/** Get the name part */
	TTSymbol					getName();
	
	/** Get the instance part */
	TTSymbol					getInstance();
	
	/** Get the attribute part */
	TTSymbol					getAttribute();
	
	/** Get the type */
	TTAddressType			getType();
	
	/** Get the name.instance part */
	TTSymbol					getNameInstance();
	
	/** Normalize an address for lookup and other directory operations
		This would return an address without directory and attribute	*/
	TTAddressPtr			normalize();
	
	/** Return a new TTAddress without attribute part */
	TTAddressPtr			removeAttribute();
	
	/** Return a new TTAddress with attribute part */
	TTAddressPtr			appendAttribute(TTSymbol anAttribute);
	
	/** Return a new TTAddress with the appended part */
	TTAddressPtr			appendAddress(const TTAddressPtr toAppend);
	
	/** Return a new TTAddress with a instance part */
	TTAddressPtr			appendInstance(TTSymbol anInstance);

	/**	A comparison tool
	 @param	toCompare					An address to compare (it doesn't compare attribute part)
	 @param	depthDifference				Return the number of level separating the compared addresses (> 0 for lower result, < 0 for upper result)
	 @return							An comparison flag */
	TTAddressComparisonFlag compare(const TTAddressPtr toCompare, TTInt8& depthDifference);
	
	/**	A parsing tool : split address in two part from a given '/' position
	 @param whereToSplit				An int to give the '/' id where to split
	 @param	returnedPart1				A pointer to upper part (before the given position) : /part1
	 @param	returnedPart2				A pointer to lower part (after the given position) : /part2
	 @return							kTTValueNotFound if the given '/' id doesn't exist */
	TTErr						splitAt(TTUInt32 whereToSplit, TTAddressPtr* returnedPart1, TTAddressPtr* returnedPart2);
	
	/**	A parsing tool : count how many C_SEPARATOR there is in the address
	 @return							The number of C_SEPARATOR */
	TTUInt32					countSeparator();
	
	/**	A parsing tool : return a list containing all name.instance part (without any S_SEPARATOR)
	 @param								The list of name.instance part to fill */
	TTErr						listNameInstance(TTList& nameInstanceList);
	
	
private:
	/** Parse ".0"
	 @return							An error code if the parsing failed */
	TTErr						parseInstanceZero(const TTString& toParse, TTString& parsed);
	
	/** Parse the address to get directory, parent, name, instance and attribute part 
	 @return							An error code if the parsing failed */
	TTErr						parse();
	
	/** Edit address from directory, parent, name, instance and attribute part 
	 @return							A new TTAddressPtr */
	TTAddressPtr			edit(const TTSymbol newDirectory, const TTAddressPtr newParent, const TTSymbol newName, const TTSymbol newInstance, const TTSymbol newAttribute);


	friend TTAddressPtr TTFOUNDATION_EXPORT	makeTTAddress(const TTSymbol newDirectory, const TTAddressPtr newParent, const TTSymbol newName, const TTSymbol newInstance, const TTSymbol newAttribute);
};

/**	Make a "public/name" symbol from "PublicName" symbol
 @param	ttName							"PublicName" symbol
 @return								"public/name" symbol */
TTAddressPtr TTFOUNDATION_EXPORT	convertTTNameInTTAddress(TTSymbol ttName);

/**	Make an address from directory, parent, name, instance and attribute part
@param	newDirectory						directory symbol
@param	newParent						parent address
@param	newName							name symbol
@param	newInstance						instance symbol
@param	newAttribute					attribute symbol
@return									directory:/parent/name.instance:attribute address */
TTAddressPtr TTFOUNDATION_EXPORT	makeTTAddress(const TTSymbol newDirectory, const TTAddressPtr newParent, const TTSymbol newName, const TTSymbol newInstance, const TTSymbol newAttribute);


#endif // __TT_ADDRESS_H__
