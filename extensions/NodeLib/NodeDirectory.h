/* 
 * NodeDirectory
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

#include "Node.h"
#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"
#include "TTHash.h"
#include "TTList.h"

class NodeDirectory;
typedef NodeDirectory*	NodeDirectoryPtr;
class Node;
typedef Node*	NodePtr;
class Observer;
typedef Observer* ObserverPtr;

/**
	We build a tree of Nodes, and you can request a pointer for any Node, or add an observer to any Node, etc.
	
	Every time we create a Node (or a string passed to something somewhere?) then this gets added to the tree.  
	If a Node is specified, such as /degrade~/audio/mute, 
	and we assume degrade~ has been added to the tree but 'audio' hasn't, then 'audio' is added followed by adding 'mute', 
	so that the tree is properly completed.
	
	When a Node is requested, the tree is traversed to find the pointer for the Node.  
	After the traversal (assuming no wildcards) the pointer is returned and also stored 
	in a hash table so that future requests for that Node are faster.
	
	The case of wildcards is handled, because a request is cached (keyed on the request),
	and the value is a linked list of all of the matches.
	
	ADDITIONAL Node:
	
	One tricky part of this design is that observers need to be recursive -- so they need to report all activity for the specific Node, 
	but any activity at sub-Nodes will also need to be propagated upwards to notify any observers at higher levels too

	jcom.receive is then implemented as an observer for a specified Node.
	jcom.send registers as a lifecycleObserver, but then otherwise sends messages to the Node.
	
*/

class TTFOUNDATION_EXPORT NodeDirectory : public TTObject			///< we will subclass TTObject in order to gain some functionality -- like observers and notifications
{
protected:

	TTSymbolPtr		name;					///< the name of the tree
	NodePtr			root;					///< the root of the tree

	TTHashPtr		directory;				///< a pointer to a global hashtab which reference all osc address of the tree
	
	TTListPtr		observers;
	TTListPtr		lifecycleObservers;		///< for objects that just need to know when we do something critical, like the free the object
	
public:
	/** constructor */
	NodeDirectory(TTSymbolPtr newName);

	/** Destroy the NodeDirectory. */
	virtual ~NodeDirectory();

	/** Get the name of the NodeDirectory */
	TTSymbolPtr		getName();
	
	/** Get the root of the NodeDirectory */
	NodePtr getRoot();
	
	/** Get the directory of the NodeDirectory */
	TTHashPtr getDirectory();

	/** Set the name of the NodeDirectory. 
		@param	newName				The name to set */
	TTErr	setName(TTSymbolPtr name);
	
	/**	Given a string with an OSC address, return a pointer to a Node.
	 @param	oscAddress				The Open Sound Control string for which to find the Node.
	 @param	returnedNode			The .
	 @return						An error code.		*/
	TTErr	getNodeForOSC(const char* oscAddress, NodePtr *returnedNode);
	
	TTErr	getNodeForOSC(TTSymbolPtr oscAddress, NodePtr *returnedNode);
	
	/**	Find Nodes by address
	 @param	oscAddress				The OSC address you wish to find, possibly including wildcards and instance names/numbers.
	 @param	returnedNodes			If non-null, a pointer will be set to the linked-list of Nodes at the given OSC address pattern.
	 @param	firstReturnedNode		If non-null, the address of the first Node object pointer that is found for the given pattern is returned here.  
									The value of the pointer will be set upon return.
	 @return						An error code.				*/
	TTErr	Lookup(TTSymbolPtr oscAddress, TTListPtr *returnedNodes, NodePtr *firstReturnedNode);
	
	/**	Find Nodes by testing each Nodes below an address 
	 @param	oscAddress				The OSC address from where the research begin, possibly including wildcards and instance names/numbers.
	 @param testFunction			the test function have to take a Node as first argument, and a pointer to something as second argument (a structure for example) 
									it have to return a boolean (true means that the node is ok).
	 @param argument				argument for the testFunction
	 @param	returnedNodes			If non-null, a pointer will be set to the linked-list of Nodes at the given OSC address pattern.
	 @param	firstReturnedNode		If non-null, the address of the first Node object pointer that is found for the given pattern is returned here.
									The value of the pointer will be set upon return.
	 @return						An error code.				*/
	TTErr	LookingFor(TTListPtr whereToSearch, bool(testFunction)(NodePtr node, void*args), void *argument, TTListPtr *returnedNodes, NodePtr *firstReturnedNode);
	
	/**	Create a new Node, at the given location in the tree.
	 @param	oscAddress				The OSC address for which you wish to create a Node.
									The address may (optionally) include an instance name or number in the address of the terminal Node.
	 
									If you specify an instance name/number that already exists, then returnedNode will be a pointer to
									the already existing Node upon return and no new Node will be created.
									If you do not specify an instance name/number, then one will be generated for you automatically.
	 
	 @param	newType					The type of Node to be created.
									For example, one of the following: hub, parameter, message, return, init, in, out, container, etc.
	 
	 @param	newObject				The object, if applicable, that is represented by this Node.
	 
	 @param	returnedNode			A pointer to the Node at the given address 
	 
	 @param	nodeCreated				A boolean : true if a Node have been created, else false
	 
	 @return						An error code.				*/
	TTErr NodeCreate(TTSymbolPtr oscAddress, TTSymbolPtr newType, void *newObject, NodePtr *returnedNode, TTBoolean *nodeCreated);
	
	/**	Remove a Nodefrom the directory.
	 @param	oscAddress				The OSC address for which you wish to remove the Node.
									The address may (optionally) include an instance name or number in the address of the terminal Node.
	 
	 @return						An error code.				*/
	TTErr NodeRemove(TTSymbolPtr oscAddress);
	
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

	@param	returnedParentOscAdress		A pointer to Node parent symbol is returned in this parameter

	@param	returnedNodeName			A pointer to the Node name symbol is returned in this parameter

	@param	returnedNodeInstance		A pointer to the Node instance symbol is returned in this parameter

	@param	returnedNodePropertie		A pointer to the Node propertie symbol is returned in this parameter
						
	@return								An error code.				*/
TTErr TTFOUNDATION_EXPORT splitOSCAddress(TTSymbolPtr oscAddress, TTSymbolPtr* returnedParentOscAdress, TTSymbolPtr* returnedNodeName, TTSymbolPtr* returnedNodeInstance, TTSymbolPtr* returnedNodePropertie);

/**	An OSC merging tool
	@param	oscAddress					A pointer to osc address symbol is returned in this parameter

	@param	parent						A Node parent symbol

	@param	name						A Node name symbol

	@param	instance					A Node instance symbol

	@param	propertie					A pointer to the Node propertie symbol
						
	@return								An error code.				*/
TTErr TTFOUNDATION_EXPORT mergeOSCAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr parent, TTSymbolPtr name, TTSymbolPtr instance, TTSymbolPtr propertie);

#endif // __TT_NODE_DIRECTORY_H__
