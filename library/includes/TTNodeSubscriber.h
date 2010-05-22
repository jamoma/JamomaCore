/* 
 * A contextual subscriber to register TTObject as TTNode in a TTNodeDirectory
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_NODE_SUBSCRIBER_H__
#define __TT_NODE_SUBSCRIBER_H__

#ifdef WIN_VERSION
#pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "TTFoundationAPI.h"
#include "TTNode.h"
#include "TTNodeDirectory.h"
#include "TTCallback.h"

class TTNode;
class TTNodeDirectory;
class TTCallback;

typedef TTNode*	TTNodePtr;
typedef TTNodeDirectory* TTNodeDirectoryPtr;
typedef TTCallback* TTCallbackPtr;

/*
 
 The aim of a subscriber is to make a node refering on an object of our environnement and, if needed,
 to create each upper nodes to make a path to this node in the tree structure.
 To do that we need :
	
	- the TTObject to subscribe.
	- a Context : a pointer to a structural element of our environnement which contains the subscriber (e.g. a Max patcher, a Pd patcher, a html page, ...).
	- a relative address of the subscriber in this Context to get the name and the instance (but this could be ommited and be generated automatically).
	- a way to share the node which refers on that Context with other suscribers inside.
	- or, if this subscriber is the first, a way to get a list containing all Contexts above
	since a top level Context (a pointer to a top level element of our environnement) until the subscriber's Context.
 
 Then, if the Context node is shared, we just build the node refering on our object (with all inter level nodes if needed)
 else we insure that all Contexts node above are created before.
 
 */

class TTFOUNDATION_EXPORT TTNodeSubscriber : public TTObject
{
	
public:
	
	TTCLASS_SETUP(TTNodeSubscriber)
	
private:
	
	TTNodeDirectoryPtr	mDirectory;				///< the directory of the tree structure
	TTPtr				mContext;				///< the Context which contains this subscriber
	TTSymbolPtr			mRelativeAddress;		///< the address of this subscriber relative to the Context node

	TTCallbackPtr		mShareCallback;			///< A callback to ask the Context node to other subscribers created before this one
												///< Here we expect the callback fill the given value with a pointer to a ContextNode or NULL.
	
	TTCallbackPtr		mContextListCallback;	///< A callback to get the Context list of all Contexts above.
												///< Here we expect the callback fill the given value with a TTListPtr or NULL.
												///< Important Note : 
												///<	- the top level context have to be the first element of the list.
												///<	- each element have to be TTValue with < context name, context pointer >
	
	TTSymbolPtr			mAbsoluteAddress;		///< ATTR: cache the address of this subscriber in the tree structure
	TTSymbolPtr			mContextAddress;		///< ATTR: cache the address of the Context node in the tree structure
	TTNodePtr			mNode;					///< ATTR: cache the TTNode relative to this subscriber
	TTNodePtr			mContextNode;			///< ATTR: cache the TTNode relative to the Context

public:
	/*
	TTErr getContext(TTValue& value);
	TTErr getRelativeAddress(TTValue& value);
	TTErr getAbsoluteAddress(TTValue& value);
	TTErr getContextAddress(TTValue& value);
	TTErr getNode(TTValue& value);
	TTErr getContextNode(TTValue& value);
	 */
	
private:
	
	/** Register the TTObject as TTNode and eventually any upper Context and inter level */
	TTErr subscribe(TTObjectPtr anObject);
	
	/** Register each given Context of the list as TTNode if they don't exist yet */
	TTErr subscribeContextList(TTListPtr aContextList);
	
};

typedef TTNodeSubscriber* TTNodeSubscriberPtr;

#endif // __TT_NODE_SUBSCRIBER_H__
