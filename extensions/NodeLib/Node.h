/* 
 * Node
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_NODE_H__
#define __TT_NODE_H__

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "NodeDirectory.h"
#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"
#include "TTHash.h"
#include "TTList.h"

class Node;
typedef Node*	NodePtr;
class NodeDirectory;
typedef NodeDirectory*	NodeDirectoryPtr;
class Observer;
typedef Observer* ObserverPtr;

#define NO_NAME TT("")
#define NO_INSTANCE TT("")
#define NO_TYPE TT("")
#define NO_PARENT TT("")
#define NO_PROPERTIE TT("")

// OSC2 style address
#define C_SEPARATOR '/'
#define C_INSTANCE '.'
#define C_PROPERTIE ':'
#define C_WILDCARD '*'

#define S_SEPARATOR TT("/")
#define S_INSTANCE TT(".")
#define S_PROPERTIE TT(":")
#define S_WILDCARD TT("*")

/**
	We build a directory of Nodes, and you can request a pointer for any Node, or add an observer to any Node, etc.
	
	Every time we create a Node (or a string passed to something somewhere?) then this gets added to the directory.  
	If a Node is specified, such as /degrade~/audio/mute, 
	and we assume degrade~ has been added to the directory but 'audio' hasn't, then 'audio' is added followed by adding 'mute', 
	so that the directory is properly completed.
	
	When a Node is requested, the directory is traversed to find the pointer for the Node.  
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

class TTFOUNDATION_EXPORT Node : public TTObject			///< we will subclass TTObject in order to gain some functionality -- like observers and notifications
{
protected:

	TTSymbolPtr			name;					///< the name of the Node
	TTSymbolPtr			instance;				///< an instance symbol. default to ""

	TTSymbolPtr			type;					///< a type symbol to organized the Node of the directory
	void				*object;				///< an object linked to the Node (or even NULL for containters)
	TTHashPtr			properties;				///< a hashtab of properties of the Node (no data stored yet, just properties as keys)
	
	NodePtr				parent;					///< pointer to the parent Node in the directory
	TTHashPtr			children;				///< a hashtab of hashtabs:
												///< hashed on Node::name, and hashtabs because of Node::instanceName

	NodeDirectoryPtr	directory;				///< a pointer to the directory
	
	TTListPtr			observers;
	TTListPtr			lifecycleObservers;		///< for objects that just need to know when we do something critical, like the free the object
	
public:
	/** constructor */
	Node(TTSymbolPtr newName, TTSymbolPtr newInstance, TTSymbolPtr newType, void *newObject, NodeDirectoryPtr directory);

	/** Destroy the Node. */
	virtual ~Node();

	/** Get the name of the Node */
	TTSymbolPtr		getName();

	/** Set the name of the Node. 
		It maintains the directory and the directory
		@param	newName					the name to set
		@param	newInstance				the returned instance if a new have been created
		@param	newInstanceCreated		true if a new instance have been created
		@return							a error code	*/
	TTErr			setName(TTSymbolPtr name, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated);

	/** Get the instance of the Node */
	TTSymbolPtr		getInstance();

	/** Set the instance of the Node. 
		It maintains the directory and the global hashtab	
		@param	instance				the instance to set
		@param	newInstance				the returned instance if a new have been created
		@param	newInstanceCreated		true if a new instance have been created
		@return							a error code	*/
	TTErr			setInstance(TTSymbolPtr instance, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated);

	/** Get the type of the Node */
	TTSymbolPtr		getType();

	/** Get a pointer to the object linked with the Node */
	void*			getObject();

	/** Get a pointer to the parent Node of the Node */
	NodePtr			getParent();

	/** Set the parent of the Node 
		This method ensure that the path to the Node exist
		@param	oscAddress_parent	The OSC address to check
		@param	parent_created		This parameter will be set to true upon return if a new Node was created, or false if one was not created - 
									e.g. because a Node already existed with this address and instance name.			
		@return						An error code.	*/
	TTErr			setParent(TTSymbolPtr oscAddress_parent, TTBoolean *parent_created);

	/** Get a linklist of children of the Node : select them by name and instance (use wilcards to select them all) */
	TTErr			getChildren(TTSymbolPtr name, TTSymbolPtr instance, TTListPtr *returnedChildren);
	
	/** Add a Node as a child of the Node
		@param child			a NodePtr to add as children of the Node.
		@return					a kTTErrGeneric if the instance of the given child already exist.
		*/
	TTErr			setChild(NodePtr child);

	/** Get the hashtab of all the properties of the Node */
	TTHashPtr		getProperties();
	
	/** Add a propertie to the Node.
		@param propertie			a TTSymbolPtr to store as a key in the hashtable.
		@param getPropertieMethod	a pointer to a specific method to get the propertie value.
		@param setPropertieMethod	a pointer to a specific method to set the propertie value.
		@return						a kTTErrGeneric if the propertie already exists.	*/
	TTErr			addPropertie(TTSymbolPtr propertie, void(*getPropertieMethod)(NodePtr node, TTSymbolPtr propertie, TTValuePtr *returnedValue), void(*setPropertieMethod)(NodePtr node, TTSymbolPtr propertie, TTValuePtr value));

	/** Get a propertie value of a Node (using a specific method to get the propertie : see addPropertie).
	 @param propertie		a TTSymbolPtr to store as a key in the hashtable.
	 @param returnedValue	a pointer to get the value.
	 @return				a kTTErrGeneric if the propertie already exists.	*/
	TTErr			getPropertie(TTSymbolPtr propertie, TTValuePtr *returnedValue);
	
	/** Set a propertie value of a Node (using a specific method to set the propertie : see addPropertie).
	 @param propertie		a TTSymbolPtr to store as a key in the hashtable.
	 @param value			a pointer on the value to set.
	 @return				a kTTErrGeneric if the propertie already exists.	*/
	TTErr			setPropertie(TTSymbolPtr propertie, TTValuePtr value);
	
	/** Get the Observers list */
	TTListPtr		getObserver();
	
	/** Add an Observer to the TTnode */
	void			addObserver(ObserverPtr observer);
	
	/** Remove an Observer to the TTnode */
	void			removeObserver(ObserverPtr observer);

	/** Get the OSC address of the Node 
		It is computed dynamicaly by asking to all the ancestor of the Node	
		@param	returnedOscAddress		A TTSymbolPtr with the OOSC address is returned in this parameter.	*/
	TTErr			getOscAddress(TTSymbolPtr *returnedOscAddress);

	/** Generate a new instance of a given child
		@param childName		the name of a child.
		@param newInstance		a new instance created (or NULL if not)	.
		@return					a kTTErrGeneric if the child doesn't exist.	*/
	TTErr			generateInstance(TTSymbolPtr childName, TTSymbolPtr *newInstance);

};

/** This class is used to create a backward communication
	to notify a client that something changed in the TTnode
	TODO : use the TTObject class fonctionnality besause Node is also a TTObject */

class TTFOUNDATION_EXPORT Observer {
public:	
	void (*m_callBack)(void *, char *address, long argc, void *argv);
	void *m_callBackArgument;
	
	void addCallback(void(*pt2Func)(void *, char *address, long argc, void *argv), void *arg){
		m_callBack = pt2Func;
		m_callBackArgument = arg;
	};
};
	
	
#endif // __TT_NODE_H__
