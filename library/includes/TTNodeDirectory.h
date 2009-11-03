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

	TTSymbolPtr		name;					///< the name of the tree
	TTNodePtr		root;					///< the root of the tree

	TTHashPtr		directory;				///< a pointer to a global hashtab which reference all osc address of the tree
		
public:
	/** Get the name of the TTNodeDirectory */
	TTSymbolPtr		getName();
	
	/** Get the root of the TTNodeDirectory */
	TTNodePtr		getRoot();
	
	/** Get the directory of the TTNodeDirectory */
	TTHashPtr		getDirectory();

	/** Set the name of the TTNodeDirectory. 
		@param	newName				The name to set */
	TTErr			setName(TTSymbolPtr name);
	
	/**	Given a string with an OSC address, return a pointer to a TTNode.
	 @param	oscAddress				The Open Sound Control string for which to find the TTNode.
	 @param	returnedTTNode			The .
	 @return						An error code.		*/
	TTErr			getTTNodeForOSC(const char* oscAddress, TTNodePtr *returnedTTNode);
	
	TTErr			getTTNodeForOSC(TTSymbolPtr oscAddress, TTNodePtr *returnedTTNode);
	
	/**	Find TTNodes by address
	 @param	oscAddress				The OSC address you wish to find, possibly including wildcards and instance names/numbers.
	 @param	returnedTTNodes			If non-null, a pointer will be set to the linked-list of TTNodes at the given OSC address pattern.
	 @param	firstReturnedTTNode		If non-null, the address of the first TTNode object pointer that is found for the given pattern is returned here.  
									The value of the pointer will be set upon return.
	 @return						An error code.				*/
	TTErr			Lookup(TTSymbolPtr oscAddress, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	
	/**	Find TTNodes by testing each TTNodes below an address 
	 @param	oscAddress				The OSC address from where the research begin, possibly including wildcards and instance names/numbers.
	 @param testFunction			the test function have to take a TTNode as first argument, and a pointer to something as second argument (a structure for example) 
									it have to return a boolean (true means that the node is ok).
	 @param argument				argument for the testFunction
	 @param	returnedTTNodes			If non-null, a pointer will be set to the linked-list of TTNodes at the given OSC address pattern.
	 @param	firstReturnedTTNode		If non-null, the address of the first TTNode object pointer that is found for the given pattern is returned here.
									The value of the pointer will be set upon return.
	 @return						An error code.				*/
	TTErr			LookingFor(TTListPtr whereToSearch, bool(testFunction)(TTNodePtr node, void*args), void *argument, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	
	/**	Is there is one TTNode or more that respect a test below an address 
	 @param	oscAddress				The OSC address from where the research begin, possibly including wildcards and instance names/numbers.
	 @param testFunction			the test function have to take a TTNode as first argument, and a pointer to something as second argument (a structure for example) 
	 it have to return a boolean (true means that the node is ok).
	 @param argument				argument for the testFunction.
	 @param	isThere					a pointer will be set to true if there is one node that respect the testFunction.
	 @param	firstReturnedTTNode		If non-null, the address of the first TTNode object pointer that is found for the given pattern is returned here.
									The value of the pointer will be set upon return.
	 @return						An error code.				*/
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
	 
	 @param	returnedTTNode			A pointer to the TTNode at the given address 
	 
	 @param	nodeCreated				A boolean : true if a TTNode have been created, else false
	 
	 @return						An error code.				*/
	TTErr			TTNodeCreate(TTSymbolPtr oscAddress, TTSymbolPtr newType, void *newObject, TTNodePtr *returnedTTNode, TTBoolean *nodeCreated);
	
	/**	Remove a TTNodefrom the directory.
	 @param	oscAddress				The OSC address for which you wish to remove the TTNode.
									The address may (optionally) include an instance name or number in the address of the terminal TTNode.
	 
	 @return						An error code.				*/
	TTErr			TTNodeRemove(TTSymbolPtr oscAddress);
	
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

/**	An OSC parsing tool
	@param	oscAddress					The OSC address to spilt in /parent/node.instance:propertie

	@param	returnedParentOscAdress		A pointer to TTNode parent symbol is returned in this parameter

	@param	returnedTTNodeName			A pointer to the TTNode name symbol is returned in this parameter

	@param	returnedTTNodeInstance		A pointer to the TTNode instance symbol is returned in this parameter

	@param	returnedTTNodePropertie		A pointer to the TTNode propertie symbol is returned in this parameter
						
	@return								An error code.				*/
TTErr TTFOUNDATION_EXPORT splitOSCAddress(TTSymbolPtr oscAddress, TTSymbolPtr* returnedParentOscAdress, TTSymbolPtr* returnedTTNodeName, TTSymbolPtr* returnedTTNodeInstance, TTSymbolPtr* returnedTTNodePropertie);

/**	An OSC merging tool
	@param	oscAddress					A pointer to osc address symbol is returned in this parameter

	@param	parent						A TTNode parent symbol

	@param	name						A TTNode name symbol

	@param	instance					A TTNode instance symbol

	@param	propertie					A pointer to the TTNode propertie symbol
						
	@return								An error code.				*/
TTErr TTFOUNDATION_EXPORT mergeOSCAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr parent, TTSymbolPtr name, TTSymbolPtr instance, TTSymbolPtr propertie);

#endif // __TT_NODE_DIRECTORY_H__
