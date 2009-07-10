/* 
 * NodeLib
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __NODELIB_H__
#define __NODELIB_H__

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "TTBlueAPI.h"
#include "JamomaMaxTypes.h"
//#include "JamomaTypes.h"

class Node;
typedef Node*	NodePtr;
typedef TTHash* TTHashPtr;
typedef TTList* TTListPtr;

// this a structure called as args 
// in a linklist_funall process
// in JamomaNodeLookup
typedef struct _strwild
{
	TTSymbolPtr	name;
	TTSymbolPtr	instance;
	LinkedListPtr selectedNodes;
}t_strwild;

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
	We build a tree of nodes, and you can request a pointer for any node, or add an observer to any node, etc.
	
	Every time we create a node (or a string passed to something somewhere?) then this gets added to the tree.  
	If a node is specified, such as /degrade~/audio/mute, 
	and we assume degrade~ has been added to the tree but 'audio' hasn't, then 'audio' is added followed by adding 'mute', 
	so that the tree is properly completed.
	
	When a node is requested, the tree is traversed to find the pointer for the node.  
	After the traversal (assuming no wildcards) the pointer is returned and also stored 
	in a hash table so that future requests for that node are faster.
	
	The case of wildcards is handled, because a request is cached (keyed on the request),
	and the value is a linked list of all of the matches.
	
	ADDITIONAL NODES:
	
	One tricky part of this design is that observers need to be recursive -- so they need to report all activity for the specific node, 
	but any activity at sub-nodes will also need to be propagated upwards to notify any observers at higher levels too

	jcom.receive is then implemented as an observer for a specified node.
	jcom.send registers as a lifecycleObserver, but then otherwise sends messages to the nodeObject.
	
*/

class Node : public TTObject			///< we will subclass TTObject in order to gain some functionality -- like observers and notifications
{
protected:

	TTSymbolPtr		name;					///< the name of the node
	TTSymbolPtr		instance;				///< an instance symbol. default to ""

	TTSymbolPtr		type;					///< a type symbol to organized the node of the tree
	void			*object;				///< an object linked to the node (or even NULL for containters)
	TTHashPtr		properties;				///< a hashtab of properties of the node (no data stored yet, just properties as keys)
	
	NodePtr	parent;							///< pointer to the parent node in the tree
	TTHashPtr		children;				///< a hashtab of hashtabs:
	 										///< hashed on Node::name, and hashtabs because of Node::instanceName

	TTHashPtr		directory;				///< a pointer to a global hashtab which reference all osc address of the tree
	
	TTListPtr		observers;
	TTListPtr		lifecycleObservers;		///< for objects that just need to know when we do something critical, like the free the object
	
public:
	/** constructor */
	Node(TTSymbolPtr newName, TTSymbolPtr newInstance, TTSymbolPtr newType, void *newObject, TTHashPtr directory);

	/** Destroy of the node. */
	virtual ~Node();

	/** Get the name of the node */
	TTSymbolPtr		getName();

	/** Set the name of the node. 
		It maintains the tree and the global hashtab
		@param	newName					the name to set
		@param	newInstance				the returned instance if a new have been created
		@param	newInstanceCreated		true if a new instance have been created
		@return							a error code	*/
	TTErr Node::setName(TTSymbolPtr name, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated);

	/** Get the instance of the node */
	TTSymbolPtr		getInstance();

	/** Set the instance of the node. 
		It maintains the tree and the global hashtab	
		@param	instance				the instance to set
		@param	newInstance				the returned instance if a new have been created
		@param	newInstanceCreated		true if a new instance have been created
		@return							a error code	*/
	TTErr			setInstance(TTSymbolPtr instance, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated);

	/** Get the type of the node */
	TTSymbolPtr		getType();

	/** Get a pointer to the object linked with the node */
	void*			getObject();

	/** Get a pointer to the parent node of the node */
	NodePtr			getParent();

	/** Set the parent of the node 
		This method ensure that the path to the node exist
		@param	oscAddress_parent	The OSC address to check
		@param	parent_created		This parameter will be set to true upon return if a new node was created, or false if one was not created - 
									e.g. because a node already existed with this address and instance name.			
		@return						An error code.	*/
	TTErr			setParent(TTSymbolPtr oscAddress_parent, TTBoolean *parent_created);

	/** Get a linklist of children of the node : select them by name and instance (use wilcards to select them all) */
	TTErr			getChildren(TTSymbolPtr name, TTSymbolPtr instance, LinkedListPtr *lk_children);
	
	/** Add a node as a child of the node
		@param child			a NodePtr to add as children of the node.
		@return					a kTTErrGeneric if the instance of the given child already exist.
		*/
	TTErr			setChild(NodePtr child);

	/** Get the hashtab of all the properties of the node */
	TTHashPtr		getProperties();
	
	/** Add a propertie to the node.
		@param properties		a TTSymbolPtr to store as a key in the hashtable.
		@return					a kTTErrGeneric if the propertie already exists.	*/
	TTErr			setProperties(TTSymbolPtr propertie);

	/** Get the OSC address of the node 
		It is computed dynamicaly by asking to all the ancestor of the node	
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

/**	Given a string with an OSC address, return a pointer to a JamomaNode.
	@param	oscAddress			The Open Sound Control string for which to find the JamomaNode.
	@param	returnedNode		The .
	@return						An error code.		*/
TTErr getNodeForOSC(TTHashPtr directory, const char* oscAddress, NodePtr* returnedNode);
	
TTErr getNodeForOSC(TTHashPtr directory, TTSymbolPtr oscAddress, NodePtr* returnedNode);

/**	A factory method 
	@param	oscAddress			The OSC address you wish to find, possibly including wildcards and instance names/numbers.
	@param	returnedNodes		If non-null, a pointer will be set to the linked-list of nodes at the given OSC address pattern.
	@param	firstReturnedNode	If non-null, the address of the first JamomaNode object pointer that is found for the given pattern is returned here.  
								The value of the pointer will be set upon return.
	@return						An error code.				*/
TTErr NodeLookup(TTHashPtr directory, TTSymbolPtr oscAddress, LinkedListPtr* returnedNodes, NodePtr* firstReturnedNode);
void NodeWilcard(NodePtr node, t_strwild *args);
void Node_linklist_merge(NodePtr toappend, LinkedListPtr result);

	/**	Create a new node, at the given location in the tree.
		@param	oscAddress				The OSC address for which you wish to create a node.
										The address may (optionally) include an instance name or number in the address of the terminal node.
						
										If you specify an instance name/number that already exists, then returnedNode will be a pointer to
										the already existing node upon return and no new node will be created.
										If you do not specify an instance name/number, then one will be generated for you automatically.

		@param	newType					The type of node to be created.
										For example, one of the following: hub, parameter, message, return, init, in, out, container, etc.

		@param	newObject				The object, if applicable, that is represented by this node.

		@param	returnedNode			A pointer to the node at the given address 
		
		@param	nodeCreated				A boolean : true if a node have been created, else false	*/

TTErr NodeCreate(TTSymbolPtr oscAddress, TTSymbolPtr newType, void *newObject, TTHashPtr directory, NodePtr *returnedNode, TTBoolean *nodeCreated);


/**	An OSC parsing tool
	@param	oscAddress					The OSC address to spilt in /parent/node.instance:propertie

	@param	returnedParentOscAdress		A pointer to node parent symbol is returned in this parameter

	@param	returnedNodeName			A pointer to the node name symbol is returned in this parameter

	@param	returnedNodeInstance		A pointer to the node instance symbol is returned in this parameter

	@param	returnedNodePropertie		A pointer to the node propertie symbol is returned in this parameter
						
	@return								An error code.				*/
TTErr splitOSCAddress(TTSymbolPtr oscAddress, TTSymbolPtr* returnedParentOscAdress, TTSymbolPtr* returnedNodeName, TTSymbolPtr* returnedNodeInstance, TTSymbolPtr* returnedNodePropertie);

/**	An OSC merging tool
	@param	oscAddress					A pointer to osc address symbol is returned in this parameter

	@param	parent						A node parent symbol

	@param	name						A node name symbol

	@param	instance					A node instance symbol

	@param	propertie					A pointer to the node propertie symbol
						
	@return								An error code.				*/
TTErr mergeOSCAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr parent, TTSymbolPtr name, TTSymbolPtr instance, TTSymbolPtr propertie);

#endif // __NODELIB_H__
