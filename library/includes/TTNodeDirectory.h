/* 
 * TTNodeDirectory
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_NODE_DIRECTORY_H__
#define __TT_NODE_DIRECTORY_H__

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "TTNode.h"
#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"
#include "TTHash.h"
#include "TTList.h"

class TTNodeDirectory;
typedef TTNodeDirectory*	TTNodeDirectoryPtr;
class TTNode;
typedef TTNode*	TTNodePtr;
class TTCallback;
typedef TTCallback* TTCallbackPtr;

// Comparison flags between address returned by compareOSCAddress(address1, address2)
enum TTAddressComparisonFlag{
	kAddressLower = -1,					///< this flag means that address1 refers to a node at a lower level than address2 in the tree structure
	kAddressDifferent = 0,				///< this flag means that address1 an address2 refer to nodes which are in a different branch in the tree structure
	kAddressEqual = 1,					///< this flag means that address1 an address2 refer to the same node in the tree structure
	kAddressUpper = 2					///< this flag means that address1 refers to a node at a upper level than address2 in the tree structure
};

// Notification flags to notify observers of a directory
enum TTAddressNotificationFlag{
	kAddressDestroyed = 0,				///< this flag means that a TTNode have been destroyed in the tree structure
	kAddressCreated = 1,				///< this flag means that a TTNode have been created in the tree structure
	
	kAddressInitialized = 2				///< this flag means that a TTNode have been initialized (this notification is sent by the application)
										/*	TODO -- the last flag makes appears a futur problem : how to allow users of NodeLib to pass specific
											notifications. Maybe we could have two NotifyObservers method : one private that used TTAddressNotificationFlag
											and one public which used just a long but this would be a problem for obervers that received the notification
											because they couln't make difference between TTAddressNotificationFlag and a long... so maybe TTAddressNotificationFlag
											have to be struct with a boolean member that said if this is an internal TTAddressNotificationFlag or a specific application
											notification flag... (?)
										 */
};

/**
	We build a tree of TTNodes, and you can request a pointer for any TTNode, or add an observer to any TTNode, etc.
	
	Every time we create a TTNode (or a string passed to something somewhere?) then this gets added to the tree.  
	If a TTNode is specified, such as /degrade~/audio/mute, 
	and we assume degrade~ has been added to the tree but 'audio' hasn't, then 'audio' is added followed by adding 'mute', 
	so that the tree is properly completed.
	
	When a TTNode is requested, the tree is traversed to find the pointer for the TTNode.  
	After the traversal (assuming no wildcards) the pointer is returned and also stored 
	in a hash table so that future requests for that TTNode are faster.
	
	The case of wildcards is handled, because a request is cached (keyed on the request),
	and the value is a linked list of all of the matches.
	
	ADDITIONAL TTNode:
	
	One tricky part of this design is that observers need to be recursive -- so they need to report all activity for the specific TTNode, 
	but any activity at sub-TTNodes will also need to be propagated upwards to notify any observers at higher levels too

	jcom.receive is then implemented as an observer for a specified TTNode.
	jcom.send registers as a lifecycleObserver, but then otherwise sends messages to the TTNode.
	
*/

class TTFOUNDATION_EXPORT TTNodeDirectory : public TTObject			///< we will subclass TTObject in order to gain some functionality -- like observers and notifications
{
	TTCLASS_SETUP(TTNodeDirectory)

	TTSymbolPtr		mName;					///< the name of the tree
	TTNodePtr		mRoot;					///< the root of the tree
	TTHashPtr		mDirectory;				///< a pointer to a global hashtab which reference all osc address of the tree
	TTHashPtr		mObservers;				///< a pointer to a hashtab which register all life cycle observers below that node
											///< (address/relative/to/this/node, TTList of all observers below that address)

#if THE_NON_TT_WAY_OF_DOING_THINGS
	/** Get the name of the TTNodeDirectory */
	TTSymbolPtr		getName();

	/** Set the name of the TTNodeDirectory. 
		@param	newName				The name to set */
	TTErr			setName(TTSymbolPtr name);

	// Notice that we don't need these at all with the TT way, because the accessors are provided for free
	// via setAttributeValue() and getAttributeValue()
#endif

public:
	
	/** Get the root of the TTNodeDirectory */
	TTNodePtr		getRoot();
	
	/** Get the directory of the TTNodeDirectory */
	TTHashPtr		getDirectory();

	
	/**	Given a string with an OSC address, return a pointer to a TTNode.
	 @param	oscAddress				The Open Sound Control string for which to find the TTNode.
	 @param	returnedTTNode			The .
	 @return						An error code. */
	TTErr			getTTNodeForOSC(const char* oscAddress, TTNodePtr *returnedTTNode);
	
	TTErr			getTTNodeForOSC(TTSymbolPtr oscAddress, TTNodePtr *returnedTTNode);
	
	/**	Find TTNodes by address
	 @param	oscAddress				The OSC address you wish to find, possibly including wildcards and instance names/numbers.
	 @param	returnedTTNodes			If non-null, a pointer will be set to the linked-list of TTNodes at the given OSC address pattern.
	 @param	firstReturnedTTNode		If non-null, the address of the first TTNode object pointer that is found for the given pattern is returned here.  
									The value of the pointer will be set upon return.
	 @return						An error code. */
	TTErr			Lookup(TTSymbolPtr oscAddress, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	
	/**	Find TTNodes by testing each TTNodes below an address 
	 @param	oscAddress				The OSC address from where the research begin, possibly including wildcards and instance names/numbers.
	 @param testFunction			the test function have to take a TTNode as first argument, and a pointer to something as second argument (a structure for example) 
									it have to return a boolean (true means that the node is ok).
	 @param argument				argument for the testFunction
	 @param	returnedTTNodes			If non-null, a pointer will be set to the linked-list of TTNodes at the given OSC address pattern.
	 @param	firstReturnedTTNode		If non-null, the address of the first TTNode object pointer that is found for the given pattern is returned here.
									The value of the pointer will be set upon return.
	 @return						An error code. */
	TTErr			LookingFor(TTListPtr whereToSearch, bool(testFunction)(TTNodePtr node, void*args), void *argument, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	
	/**	Is there is one TTNode or more that respect a test below an address 
	 @param	oscAddress				The OSC address from where the research begin, possibly including wildcards and instance names/numbers.
	 @param testFunction			the test function have to take a TTNode as first argument, and a pointer to something as second argument (a structure for example) 
	 it have to return a boolean (true means that the node is ok).
	 @param argument				argument for the testFunction.
	 @param	isThere					a pointer will be set to true if there is one node that respect the testFunction.
	 @param	firstReturnedTTNode		If non-null, the address of the first TTNode object pointer that is found for the given pattern is returned here.
									The value of the pointer will be set upon return.
	 @return						An error code. */
	TTErr			IsThere(TTListPtr whereToSearch, bool(testFunction)(TTNodePtr node, void*args), void *argument, bool *isThere, TTNodePtr *firstTTNode);
	
	/**	Create a new TTNode, at the given location in the tree.
	 @param	oscAddress				The OSC address for which you wish to create a TTNode.
									The address may (optionally) include an instance name or number in the address of the terminal TTNode.
									If you specify an instance name/number that already exists, then returnedTTNode will be a pointer to
									the already existing TTNode upon return and no new TTNode will be created.
									If you do not specify an instance name/number, then one will be generated for you automatically.
	 @param	newType					The type of TTNode to be created.
									For example, one of the following: hub, parameter, message, return, init, in, out, container, etc.
	 @param	newObject				The object, if applicable, that is represented by this TTNode.
	 @param aContext				The context in which the object is.
	 @param attributesAccess		A TTList containing <attributeName, aGetterCallback, aSetterCallback>
	 @param	returnedTTNode			A pointer to the TTNode at the given address 
	 @param	nodeCreated				A boolean : true if a TTNode have been created, else false
	 @return						An error code. */
	TTErr			TTNodeCreate(TTSymbolPtr oscAddress, TTSymbolPtr newType, void *newObject, void *aContext, TTList& attributesAccess, TTNodePtr *returnedTTNode, TTBoolean *nodeCreated);
	TTErr			TTNodeCreate(TTSymbolPtr oscAddress, TTObjectPtr newObject, void *aContext, TTNodePtr *returnedTTNode, TTBoolean *nodeCreated);
	
	/**	Remove a TTNodefrom the directory.
	 @param	oscAddress				The OSC address for which you wish to remove the TTNode.
									The address may (optionally) include an instance name or number in the address of the terminal TTNode.
	 @return						An error code. */
	TTErr			TTNodeRemove(TTSymbolPtr oscAddress);
	
	/** Add a TTCallback as a life cycle observer of all nodes below this one
	 @param oscAddress				an OSC address
	 @param observer				a TTCallbackPtr to add
	 @return						an error code */
	TTErr			addObserverForNotifications(TTSymbolPtr oscAddress, const TTObject& observer);
	
	/** Remove a TTCallback as a life cycle observer of all nodes below this one
	 @param oscAddress				an OSC address
	 @param observer				a TTCallbackPtr to remove
	 @return						a kTTErrGeneric if there isn't observer */
	TTErr			removeObserverForNotifications(TTSymbolPtr oscAddress, const TTObject& observer);
	
	/** Notify life cycle observers that something appends below this TTNode
	 @param data					an OSC address where something append
	 @param aNode					a TTNodePtr where something append (NULL in case of destruction)
	 @param flag					a flag to notify about creation or destruction (or anything else)
	 @return						a kTTErrGeneric if there isn't observer	*/
	TTErr			notifyObservers(TTSymbolPtr oscAddress, TTNodePtr aNode, TTAddressNotificationFlag flag);
	
	/** TODO :
			:/catalog?
			:/namespace?
			?				// synonym for :/value?
			:/dump?
	TTErr	getCatalog();
	TTErr	setCatalog();	
	TTErr	getNamespace();	// how do we return this?  Just a big block of formatted text?
	TTErr	getDump();	// how do we return this?
	**/
};

TTErr TTFOUNDATION_EXPORT TTObjectGetAttributeCallbackMethod(TTPtr baton, TTValue& data);

TTErr TTFOUNDATION_EXPORT TTObjectSetAttributeCallbackMethod(TTPtr baton, TTValue& data);

/**	An OSC parsing tool : split an OSC address in two part from a given '/' position
 @param	oscAddress					The OSC address to spilt : /part1/part2
 @param whereToSplit				An int to give the '/' id where to split
 @param	returnedPart1				A pointer to upper part (before the given position) : /part1
 @param	returnedPart2				A pointer to lower part (after the given position) : /part2
 @return							kTTValueNotFound if the given '/' id doesn't exist */
TTErr TTFOUNDATION_EXPORT splitAtOSCAddress(TTSymbolPtr oscAddress, int whereToSplit, TTSymbolPtr* returnedPart1, TTSymbolPtr* returnedPart2);

/**	An OSC parsing tool : split an OSC address in four part /parent/node.instance:property
	@param	oscAddress					The OSC address to spilt
	@param	returnedParentOscAddress	A pointer to TTNode parent symbol is returned in this parameter
	@param	returnedTTNodeName			A pointer to the TTNode name symbol is returned in this parameter
	@param	returnedTTNodeInstance		A pointer to the TTNode instance symbol is returned in this parameter
	@param	returnedTTNodeProperty		A pointer to the TTNode property symbol is returned in this parameter
	@return								An error code. */
TTErr TTFOUNDATION_EXPORT splitOSCAddress(TTSymbolPtr oscAddress, TTSymbolPtr* returnedParentOscAddress, TTSymbolPtr* returnedTTNodeName, TTSymbolPtr* returnedTTNodeInstance, TTSymbolPtr* returnedTTNodeProperty);

/**	An OSC merging tool
	@param	oscAddress					A pointer to osc address symbol is returned in this parameter
	@param	parent						A TTNode parent symbol
	@param	name						A TTNode name symbol
	@param	instance					A TTNode instance symbol
	@param	property					A pointer to the TTNode property symbol
	@return								An error code. */
TTErr TTFOUNDATION_EXPORT mergeOSCAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr parent, TTSymbolPtr name, TTSymbolPtr instance, TTSymbolPtr property);

/**	An OSC comparison tool
	@param	oscAddress1					An OSC address to compare
	@param	oscAddress1					An OSC address to compare
	@return								An comparison flag */
TTAddressComparisonFlag TTFOUNDATION_EXPORT compareOSCAddress(TTSymbolPtr oscAddress1, TTSymbolPtr oscAddress2);

/**	An OSC parsing tool : count how many C_SEPARATOR there is in the address
 @param	oscAddress					An OSC address
 @return							The number of C_SEPARATOR */
unsigned int TTFOUNDATION_EXPORT countSeparator(TTSymbolPtr oscAddress);

#endif // __TT_NODE_DIRECTORY_H__
