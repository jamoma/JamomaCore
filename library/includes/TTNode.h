/* 
 * TTNode
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#if !defined( __TT_NODE_H__ ) && !defined ( DISABLE_NODELIB )
#define __TT_NODE_H__

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "TTFoundationAPI.h"
#include "TTCallback.h"
#include "TTAddress.h"
#include "TTAddressTable.h"
#include "TTNodeDirectory.h"

class TTNode;
typedef TTNode*	TTNodePtr;

class TTNodeDirectory;
typedef TTNodeDirectory* TTNodeDirectoryPtr;

class TTCallback;
typedef TTCallback* TTCallbackPtr;

/****************************************************************************************************/
// Class Specifications

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
 
 */

class TTFOUNDATION_EXPORT TTNode : public TTBase
{
	
private:

	TTSymbol			name;					///< the name of the TTNode
	TTSymbol			instance;				///< an instance symbol (default to "")
	
	TTNodePtr			parent;					///< pointer to the parent TTNode in the directory
	TTHashPtr			children;				///< a hashtab of hashtabs:
												///< hashed on children names which containing hashtabs hashed on instances

	TTObjectPtr			object;					///< an object linked to the TTNode
	TTPtr				context;				///< an element that contains the object in the environnement

	TTNodeDirectoryPtr	directory;				///< a pointer to a directory
	
public:
	
	/** Constructor */
	TTNode (TTSymbol aName, TTSymbol anInstance, TTObjectPtr anObject, TTPtr aContext, TTNodeDirectoryPtr aDirectory);
	
	/** Destructor */
	virtual ~TTNode ();

	/** Set the name of the TTNode. 
		It maintains the directory and the directory
		@param	newName					the name to set
		@param	newInstance				the returned instance if a new have been created
		@param	newInstanceCreated		true if a new instance have been created
		@return							a error code	*/
	TTErr			setName(TTSymbol name, TTSymbol newInstance, TTBoolean *newInstanceCreated);

	/** Set the instance of the TTNode. 
		It maintains the directory and the global hashtab	
		@param	instance				the instance to set
		@param	newInstance				the returned instance if a new have been created
		@param	newInstanceCreated		true if a new instance have been created
		@return							a error code	*/
	TTErr			setInstance(TTSymbol instance, TTSymbol newInstance, TTBoolean *newInstanceCreated);

	/** Set the parent of the TTNode 
		This method ensure that the path to the TTNode exist
		@param	parentAddress			The address to check
		@param	newParentCreated		This parameter will be set to true upon return if a new TTNode was created, or false if one was not created - 
										e.g. because a TTNode already existed with this address and instance name.			
		@return							An error code. */
	TTErr			setParent(TTAddress parentAddress, TTBoolean *newParentCreated);

	/** Add a TTNode as a child of the TTNode
		@param child			a TTNodePtr to add as children of the TTNode.
		@return					a kTTErrGeneric if the instance of the given child already exist. */
	TTErr			setChild(TTNodePtr child);
	
	/** Set the object of this node */
	TTErr			setObject(TTObjectPtr anObject);

	/** Set the context of this node */
	TTErr			setContext(TTPtr aContext);
	
	/** Get the name of the TTNode */
	TTSymbol		getName();
	
	/** Get the instance of the TTNode */
	TTSymbol		getInstance();
	
	/** Get a pointer to the parent TTNode of the TTNode */
	TTNodePtr		getParent();
	
	/** Get a linklist of children of the TTNode : select them by name and instance (use wilcards to select them all) */
	TTErr			getChildren(TTSymbol name, TTSymbol instance, TTList& returnedChildren);
	
	/** Get a linklist of children name */
	TTErr			getChildrenName(TTList& returnedChildrenName);
	
	/** Get a linklist of children instance for a given name */
	TTErr			getChildrenInstance(TTSymbol aName, TTList& returnedChildrenInstance);
	
	/** Get a pointer to the object binded by this node. It return also NUL when the object is not valid */
	TTObjectPtr		getObject();
	
	/** Get a pointer to the context of this node */
	TTPtr			getContext();

	/** Get the address of the TTNode
	 It is computed dynamicaly by asking to all the ancestor of the TTNode	
	 @param	returnedAddress		A TTAddressPtr with the address is returned in this parameter.
	 @param	from				An address from where to start the returned address in order to have a relative address */
	TTErr			getAddress(TTAddress& returnedAddress, TTAddress from = kTTAdrsEmpty);

	/** Generate a new instance of a given child
		@param childName		the name of a child.
		@param newInstance		a new instance created (or "" if not)	.
		@return					a kTTErrGeneric if the child doesn't exist.	*/
	TTErr			generateInstance(TTSymbol childName, TTSymbol& newInstance);
};

	
#endif // __TT_NODE_H__
