/* 
 * TTNode
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_NODE_H__
#define __TT_NODE_H__

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"
#include "TTHash.h"
#include "TTList.h"

class TTNode;
typedef TTNode*	TTNodePtr;

#define NO_NAME TT("")
#define NO_INSTANCE TT("")
#define NO_TYPE TT("")
#define NO_PARENT TT("")
#define NO_PROPERTIE TT("")

// OSC2 style address
#define S_SEPARATOR "/"
#define S_INSTANCE "."
#define S_PROPERTIE ":"
#define S_WILDCARD "*"

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

class TTFOUNDATION_EXPORT TTNode : public TTObject			///< we will subclass TTObject in order to gain some functionality -- like observers and notifications
{
protected:

	TTSymbolPtr		name;					///< the name of the TTNode
	TTSymbolPtr		instance;				///< an instance symbol. default to ""

	TTSymbolPtr		type;					///< a type symbol to organized the TTNode of the tree
	void			*object;				///< an object linked to the TTNode (or even NULL for containters)
	TTHashPtr		properties;				///< a hashtab of properties of the TTNode (no data stored yet, just properties as keys)
	
	TTNodePtr		parent;					///< pointer to the parent TTNode in the tree
	TTHashPtr		children;				///< a hashtab of hashtabs:
	 										///< hashed on TTNode::name, and hashtabs because of TTNode::instanceName

	TTHashPtr		directory;				///< a pointer to a global hashtab which reference all osc address of the tree
	
	TTListPtr		observers;
	TTListPtr		lifecycleObservers;		///< for objects that just need to know when we do something critical, like the free the object
	
public:
	/** constructor */
	TTNode(TTSymbolPtr newName, TTSymbolPtr newInstance, TTSymbolPtr newType, void *newObject, TTHashPtr directory);

	/** Destroy the TTNode. */
	virtual ~TTNode();

	/** Get the name of the TTNode */
	TTSymbolPtr		getName();

	/** Set the name of the TTNode. 
		It maintains the tree and the directory
		@param	newName					the name to set
		@param	newInstance				the returned instance if a new have been created
		@param	newInstanceCreated		true if a new instance have been created
		@return							a error code	*/
	TTErr	setName(TTSymbolPtr name, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated);

	/** Get the instance of the TTNode */
	TTSymbolPtr		getInstance();

	/** Set the instance of the TTNode. 
		It maintains the tree and the global hashtab	
		@param	instance				the instance to set
		@param	newInstance				the returned instance if a new have been created
		@param	newInstanceCreated		true if a new instance have been created
		@return							a error code	*/
	TTErr			setInstance(TTSymbolPtr instance, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated);

	/** Get the type of the TTNode */
	TTSymbolPtr		getType();

	/** Get a pointer to the object linked with the TTNode */
	void*			getObject();

	/** Get a pointer to the parent TTNode of the TTNode */
	TTNodePtr		getParent();

	/** Set the parent of the TTNode 
		This method ensure that the path to the TTNode exist
		@param	oscAddress_parent	The OSC address to check
		@param	parent_created		This parameter will be set to true upon return if a new TTNode was created, or false if one was not created - 
									e.g. because a TTNode already existed with this address and instance name.			
		@return						An error code.	*/
	TTErr			setParent(TTSymbolPtr oscAddress_parent, TTBoolean *parent_created);

	/** Get a linklist of children of the TTNode : select them by name and instance (use wilcards to select them all) */
	TTErr			getChildren(TTSymbolPtr name, TTSymbolPtr instance, TTListPtr *returnedChildren);
	
	/** Add a TTNode as a child of the TTNode
		@param child			a TTNodePtr to add as children of the TTNode.
		@return					a kTTErrGeneric if the instance of the given child already exist.
		*/
	TTErr			setChild(TTNodePtr child);

	/** Get the hashtab of all the properties of the TTNode */
	TTHashPtr		getProperties();
	
	/** Add a propertie to the TTNode.
		@param properties		a TTSymbolPtr to store as a key in the hashtable.
		@return					a kTTErrGeneric if the propertie already exists.	*/
	TTErr			setProperties(TTSymbolPtr propertie);

	/** Get the OSC address of the TTNode 
		It is computed dynamicaly by asking to all the ancestor of the TTNode	
		@param	returnedOscAddress		A TTSymbolPtr with the OOSC address is returned in this parameter.	*/
	TTErr			getOscAddress(TTSymbolPtr *returnedOscAddress);

	/** Generate a new instance of a given child
		@param childName		the name of a child.
		@param newInstance		a new instance created (or NULL if not)	.
		@return					a kTTErrGeneric if the child doesn't exist.	*/
	TTErr			generateInstance(TTSymbolPtr childName, TTSymbolPtr *newInstance);

	/** TODO :
			:/catalog?
			:/namespace?
			?				// synonym for :/value?
			:/dump?

	TTErr	getCatalog();
	TTErr	setCatalog();	
	TTErr	getValue();
	TTErr	setValue();
	TTErr	getNamespace();	// how do we return this?  Just a big block of formatted text?
	TTErr	getDump();	// how do we return this?
	**/
};

/**	Given a string with an OSC address, return a pointer to a TTNode.
	@param	oscAddress			The Open Sound Control string for which to find the TTNode.
	@param	returnedNode		The .
	@return						An error code.		*/
TTErr	TTFOUNDATION_EXPORT getNodeForOSC(TTHashPtr directory, const char* oscAddress, TTNodePtr *returnedNode);
	
TTErr	TTFOUNDATION_EXPORT getNodeForOSC(TTHashPtr directory, TTSymbolPtr oscAddress, TTNodePtr *returnedNode);

/**	A factory method 
	@param	oscAddress			The OSC address you wish to find, possibly including wildcards and instance names/numbers.
	@param	returnedTTNodes		If non-null, a pointer will be set to the linked-list of TTNodes at the given OSC address pattern.
	@param	firstReturnedNode	If non-null, the address of the first TTNode object pointer that is found for the given pattern is returned here.  
								The value of the pointer will be set upon return.
	@return						An error code.				*/
TTErr	TTFOUNDATION_EXPORT NodeLookup(TTHashPtr directory, TTSymbolPtr oscAddress, TTListPtr *returnedTTNodes, TTNodePtr *firstReturnedNode);

	/**	Create a new TTNode, at the given location in the tree.
		@param	oscAddress				The OSC address for which you wish to create a TTNode.
										The address may (optionally) include an instance name or number in the address of the terminal TTNode.
						
										If you specify an instance name/number that already exists, then returnedTTNode will be a pointer to
										the already existing TTNode upon return and no new TTNode will be created.
										If you do not specify an instance name/number, then one will be generated for you automatically.

		@param	newType					The type of TTNode to be created.
										For example, one of the following: hub, parameter, message, return, init, in, out, container, etc.

		@param	newObject				The object, if applicable, that is represented by this TTNode.

		@param	returnedNode			A pointer to the TTNode at the given address 
		
		@param	nodeCreated				A boolean : true if a TTNode have been created, else false	*/

TTErr TTFOUNDATION_EXPORT NodeCreate(TTSymbolPtr oscAddress, TTSymbolPtr newType, void *newObject, TTHashPtr directory, TTNodePtr *returnedNode, TTBoolean *nodeCreated);


/**	An OSC parsing tool
	@param	oscAddress					The OSC address to spilt in /parent/TTNode.instance:propertie

	@param	returnedParentOscAdress		A pointer to TTNode parent symbol is returned in this parameter

	@param	returnedNodeName			A pointer to the TTNode name symbol is returned in this parameter

	@param	returnedNodeInstance		A pointer to the TTNode instance symbol is returned in this parameter

	@param	returnedNodePropertie		A pointer to the TTNode propertie symbol is returned in this parameter
						
	@return								An error code.				*/
TTErr TTFOUNDATION_EXPORT splitOSCAddress(TTSymbolPtr oscAddress, TTSymbolPtr* returnedParentOscAdress, TTSymbolPtr* returnedNodeName, TTSymbolPtr* returnedNodeInstance, TTSymbolPtr* returnedNodePropertie);

/**	An OSC merging tool
	@param	oscAddress					A pointer to osc address symbol is returned in this parameter

	@param	parent						A TTNode parent symbol

	@param	name						A TTNode name symbol

	@param	instance					A TTNode instance symbol

	@param	propertie					A pointer to the TTNode propertie symbol
						
	@return								An error code.				*/
TTErr TTFOUNDATION_EXPORT mergeOSCAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr parent, TTSymbolPtr name, TTSymbolPtr instance, TTSymbolPtr propertie);

#endif // __TT_NODE_H__
