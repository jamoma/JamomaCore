/* 
 * TTNode
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

#include "TTFoundationAPI.h"
#include "TTCallback.h"

class TTNode;
class TTNodeDirectory;
class TTCallback;

typedef TTNode*	TTNodePtr;
typedef TTNodeDirectory* TTNodeDirectoryPtr;
typedef TTCallback* TTCallbackPtr;

#define NO_NAME			kTTSymEmpty
#define NO_INSTANCE		kTTSymEmpty
#define NO_TYPE			kTTSymEmpty
#define NO_PARENT		kTTSymEmpty
#define NO_PROPERTY		kTTSymEmpty

// OSC2 style address
#define C_SEPARATOR		'/'
#define C_INSTANCE		'.'
#define C_PROPERTY		':'
#define C_WILDCARD		'*'

#define S_SEPARATOR		kTTSymSlash
#define S_INSTANCE		kTTSymDot
#define S_PROPERTY		kTTSymColon
#define S_WILDCARD		kTTSymStar

/**
	We build a directory of TTNodes, and you can request a pointer for any TTNode, or add an observer to any TTNode, etc.
	
	Every time we create a TTNode (or a string passed to something somewhere?) then this gets added to the directory.  
	If a TTNode is specified, such as /degrade~/audio/mute, 
	and we assume degrade~ has been added to the directory but 'audio' hasn't, then 'audio' is added followed by adding 'mute', 
	so that the directory is properly completed.
	
	When a TTNode is requested, the directory is traversed to find the pointer for the TTNode.  
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
	TTCLASS_SETUP(TTNode)

	TTSymbolPtr			name;					///< the name of the TTNode
	TTSymbolPtr			instance;				///< an instance symbol. default to ""

	TTSymbolPtr			type;					///< a type symbol to organized the TTNode of the directory
	TTPtr				object;					///< an object linked to the TTNode (or even NULL for containters)
	TTHashPtr			properties;				///< a hashtab of properties of the TTNode (no data stored, just properties as keys and gette and setter callbacks)
												// TODO : use the TTObject class fonctionnality besause TTNode is also a TTObject
	
	TTNodePtr			parent;					///< pointer to the parent TTNode in the directory
	TTHashPtr			children;				///< a hashtab of hashtabs:
												///< hashed on TTNode::name, and hashtabs because of TTNode::instanceName

	TTNodeDirectoryPtr	directory;				///< a pointer to the directory
	
public:

	/** Get the name of the TTNode */
	TTSymbolPtr		getName();

	/** Set the name of the TTNode. 
		It maintains the directory and the directory
		@param	newName					the name to set
		@param	newInstance				the returned instance if a new have been created
		@param	newInstanceCreated		true if a new instance have been created
		@return							a error code	*/
	TTErr			setName(TTSymbolPtr name, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated);

	/** Get the instance of the TTNode */
	TTSymbolPtr		getInstance();

	/** Set the instance of the TTNode. 
		It maintains the directory and the global hashtab	
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
	TTErr			getChildren(TTSymbolPtr name, TTSymbolPtr instance, TTList& returnedChildren);
	
	/** Add a TTNode as a child of the TTNode
		@param child			a TTNodePtr to add as children of the TTNode.
		@return					a kTTErrGeneric if the instance of the given child already exist.
		*/
	TTErr			setChild(TTNodePtr child);
	
	/** Add a property to the TTNode.
		TODO : use the TTObject class fonctionnality besause TTNode is also a TTObject
		@param name				a TTSymbolPtr to register the attribute and to store as a key in the hashtable.
		@param getter			a pointer to a specific callback method to get the property value.
		@param setter			a pointer to a specific callback method to set the property value.
		@return					a kTTErrGeneric if the property already exists.	*/
	TTErr			addProperty(const TTSymbolPtr property, const TTObject& getterObject, const TTObject& setterObject);

	/** Get the list of all the properties of the TTNode 
		TODO : use the TTObject class fonctionnality besause TTNode is also a TTObject */
	TTErr			getPropertyList(TTList& lk_prp);
	
	/** Is it a property of the TTNode ?
		TODO : use the TTObject class fonctionnality besause TTNode is also a TTObject */
	bool			isProperty(const TTSymbolPtr name);
	
	/** Get a property value of a TTNode (using a specific method to get the property : see addProperty).
		TODO : use the TTObject class fonctionnality besause TTNode is also a TTObject
	 @param name				a TTSymbolPtr to store as a key in the hashtable.
	 @param returnedValue		a pointer to get the value.
	 @return					a kTTErrGeneric if the property already exists.	*/
	TTErr			getProperty(const TTSymbolPtr name, TTValue& returnedValue);
	
	/** Set a property value of a TTNode (using a specific method to set the property : see addProperty).
		TODO : use the TTObject class fonctionnality besause TTNode is also a TTObject
	 @param name				a TTSymbolPtr to store as a key in the hashtable.
	 @param value				a pointer on the value to set.
	 @return					a kTTErrGeneric if the property already exists.	*/
	TTErr			setProperty(const TTSymbolPtr name, TTValue& value);
	
	/** Get the OSC address of the TTNode 
		It is computed dynamicaly by asking to all the ancestor of the TTNode	
		@param	returnedOscAddress		A TTSymbolPtr with the OOSC address is returned in this parameter.	*/
	TTErr			getOscAddress(TTSymbolPtr *returnedOscAddress);

	/** Generate a new instance of a given child
		@param childName		the name of a child.
		@param newInstance		a new instance created (or NULL if not)	.
		@return					a kTTErrGeneric if the child doesn't exist.	*/
	TTErr			generateInstance(TTSymbolPtr childName, TTSymbolPtr *newInstance);

	/** Notify observers of the TTNode object
		@param data				a TTValue to send to obervers
		@return					a kTTErrGeneric if there isn't observer	*/
	TTErr			notifyObservers(TTValue& data);

};

	
#endif // __TT_NODE_H__
