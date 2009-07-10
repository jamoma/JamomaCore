/* 
 * Jamoma NodeLib
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
#include "JamomaTypes.h"

class JamomaNode;
typedef JamomaNode*	JamomaNodePtr;
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

// statics and globals
/**	The Jamoma node tree's root node - e.g. the container at the '/' address				*/
static JamomaNodePtr		jamoma_node_root = NULL;
/**	A fast lookup table that maps an entire address quickly and directly to a JamomaNode.	*/
static TTHashPtr			jamoma_node_hashtab = NULL;

#define NO_NAME TT("")
#define NO_INSTANCE TT("")
#define NO_TYPE TT("")
#define NO_PARENT TT("")
#define NO_ATTRIBUTE TT("")

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


class JamomaNode : public TTObject			///< we will subclass TTObject in order to gain some functionality -- like observers and notifications
{
protected:

	TTSymbolPtr		name;					///< the name of the node
	TTSymbolPtr		instance;				///< currently instances are only numbers, but they might be symbols in the future. default to "0" or to "unnamed" ?

	TTSymbolPtr		type;					///< hub, parameter, message, return, init, in, out, container, etc.
	ObjectPtr		maxObject;				///< a jcom.hub, jcom.parameter, jcom.message (or even NULL for containters)
	TTHashPtr		properties;				///< a hashtab of properties of the node (no data stored yet, just properties as keys)
	
	JamomaNodePtr	parent;					///< pointer to the parent node in the tree
	TTHashPtr		children;				///< a hashtab of hashtabs:
	 										///< hashed on JamomaNode::name, and hashtabs because of JamomaNode::instanceName
	
	TTListPtr		observers;
	TTListPtr		lifecycleObservers;		///< for objects that just need to know when we do something critical, like the free the object
	
public:
	/** constructor */
	JamomaNode(TTSymbolPtr newName, TTSymbolPtr newInstance, TTSymbolPtr newType, ObjectPtr newObject);

	/** Destroy of the node. */
	virtual ~JamomaNode();

	/** Get the name of the node */
	TTSymbolPtr		getName();

	/** Set the name of the node. 
		It maintains the tree and the global hashtab
		@param	newName					the name to set
		@param	newInstance				the returned instance if a new have been created
		@param	newInstanceCreated		true if a new instance have been created
		@return							a error code	*/
	TTErr JamomaNode::setName(TTSymbolPtr name, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated);

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

	/** Get a pointer to the MaxOject linked with the node */
	ObjectPtr		getMaxObject();

	/** Get a pointer to the parent node of the node */
	JamomaNodePtr	getParent();

	/** Set the parent of the node 
		This method ensure that the path to the node exist
		@param	oscAddress_parent	The OSC address to check
		@param	parent_created		This parameter will be set to true upon return if a new node was created, or false if one was not created - 
									e.g. because a node already existed with this address and instance name.			
		@return						An error code.	*/
	TTErr			setParent(TTSymbolPtr oscAddress_parent, TTBoolean *parent_created);

	/** Get a linklist of children of the node : select them by name and instance (use wilcards to select them all) */
	TTErr getChildren(TTSymbolPtr name, TTSymbolPtr instance, LinkedListPtr *lk_children);
	
	/** Add a node as a child of the node
		@param child			a JamomaNodePtr to add as children of the node.
		@return					a kTTErrGeneric if the instance of the given child already exist.
		*/
	TTErr			setChild(JamomaNodePtr child);

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
TTErr getNodeForOSC(const char* oscAddress, JamomaNodePtr* returnedNode);
	
TTErr getNodeForOSC(TTSymbolPtr oscAddress, JamomaNodePtr* returnedNode);

/**	A factory method 
	@param	oscAddress			The OSC address you wish to find, possibly including wildcards and instance names/numbers.
	@param	returnedNodes		If non-null, a pointer will be set to the linked-list of nodes at the given OSC address pattern.
	@param	firstReturnedNode	If non-null, the address of the first JamomaNode object pointer that is found for the given pattern is returned here.  
								The value of the pointer will be set upon return.
	@return						An error code.				*/
TTErr JamomaNodeLookup(TTSymbolPtr oscAddress, LinkedListPtr* returnedNodes, JamomaNodePtr* firstReturnedNode);
void JamomaNodeWilcard(JamomaNodePtr node, t_strwild *args);
void JamomaNode_linklist_merge(JamomaNodePtr toappend, LinkedListPtr result);

	/**	Create a new node, at the given location in the tree.
		@param	oscAddress				The OSC address for which you wish to create a node.
										The address may (optionally) include an instance name or number in the address of the terminal node.
						
										If you specify an instance name/number that already exists, then returnedNode will be a pointer to
										the already existing node upon return and no new node will be created.
										If you do not specify an instance name/number, then one will be generated for you automatically.

		@param	newType					The type of node to be created.
										For example, one of the following: hub, parameter, message, return, init, in, out, container, etc.

		@param	newObject				The object, if applicable, that is represented by this node - such as a jcom.parameter object.

		@param	returnedNode			A pointer to the node at the given address 
		
		@param	nodeCreated				A boolean : true if a node have been created, else false	*/

TTErr JamomaNodeCreate(TTSymbolPtr oscAddress, TTSymbolPtr newType, ObjectPtr newObject, JamomaNodePtr *returnedNode, TTBoolean *nodeCreated);


/**	An OSC parsing tool
	@param	oscAddress					The OSC address to spilt in /parent/node.instance:attribute

	@param	returnedParentOscAdress		A pointer to node parent symbol is returned in this parameter

	@param	returnedNodeName			A pointer to the node name symbol is returned in this parameter

	@param	returnedNodeInstance		A pointer to the node instance symbol is returned in this parameter

	@param	returnedNodeAttribute		A pointer to the node attribute symbol is returned in this parameter
						
	@return								An error code.				*/
TTErr splitOSCAddress(TTSymbolPtr oscAddress, TTSymbolPtr* returnedParentOscAdress, TTSymbolPtr* returnedNodeName, TTSymbolPtr* returnedNodeInstance, TTSymbolPtr* returnedNodeAttribute);

/**	An OSC merging tool
	@param	oscAddress					A pointer to osc address symbol is returned in this parameter

	@param	parent						A node parent symbol

	@param	name						A node name symbol

	@param	instance					A node instance symbol

	@param	attribute					A pointer to the node attribute symbol
						
	@return								An error code.				*/
TTErr mergeOSCAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr parent, TTSymbolPtr name, TTSymbolPtr instance, TTSymbolPtr attribute);

#ifdef __cplusplus
extern "C" {
#endif

	/** Create a the root of the tree and/or return a pointer to the root */
	JamomaNodePtr	jamoma_node_init(void);

	/** Dump all the OSC address of the global hashtab in the max window */
	JamomaError		jamoma_node_dump(void);

	/** Register an osc address in the tree

		Note : this is called 
				> in "hub_attr_setname" (in jcom.hub.cpp) to register the hub
				> in "hub_subscribe" (in jcom.hub.cpp) to register a param	*/
	JamomaError		jamoma_node_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, JamomaNodePtr *newNode, bool *newInstanceCreated);

	/** Unregister an osc address in the tree */
	JamomaError		jamoma_node_unregister(t_symbol *OSCaddress);

	/** Get the node(s) at the given address (with wildcard too) */
	JamomaError jamoma_node_get(t_symbol *address, LinkedListPtr *returnedNodes, JamomaNodePtr *firstReturnedNode);

	/** Return the name of a node */
	t_symbol *		jamoma_node_name(JamomaNodePtr node);

	/** Set the name of a node
		@return		a new instance created (or NULL if not)	*/
	t_symbol *		jamoma_node_set_name(JamomaNodePtr node, t_symbol *name);

	/** Return the instance of a node*/
	t_symbol *		jamoma_node_instance(JamomaNodePtr node);

	/** Set the instance of a node
		@return		a new instance created (or NULL if not)	*/
	t_symbol *		jamoma_node_set_instance(JamomaNodePtr node, t_symbol *instance);

	/** Return the type of a node*/
	t_symbol *		jamoma_node_type(JamomaNodePtr node);

	/** Return all children of a node */
	LinkedListPtr	jamoma_node_children(JamomaNodePtr node);

	/** Return the Max object of a node */
	t_object*		jamoma_node_max_object(JamomaNodePtr node);

	/** Return all properties of a node */
	LinkedListPtr	jamoma_node_properties(JamomaNodePtr node);

	/** Add a propertie to a node as a key in the hashtab (without value) */
	JamomaError		jamoma_node_set_properties(JamomaNodePtr node, t_symbol *propertie);

	/** Free the root of the tree and all the tree */
	JamomaError		jamoma_node_free(void);

#ifdef __cplusplus
}
#endif


#endif // __NODELIB_H__
