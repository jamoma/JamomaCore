/* 
 * A contextual TTNode builder
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SUBSCRIBER_H__
#define __TT_SUBSCRIBER_H__

#include "TTPeerObjectModel.h"

/*
 
 The aim of a subscriber is to make a node refering on an object of our environnement and, if needed,
 to create each upper nodes to make a path to this node in the tree structure.
 To do that we need :
 
	- a Context : a pointer to a structural element of our environnement that contains the subscriber (e.g. a Max patcher, a Pd patcher, a html page, ...).
	- a relative address of the subscriber in this Context to get the name and the instance (but this could be ommited and be generated automatically).
	- a way to share the node which refers on that Context with other suscribers inside.
	- or, if this subscriber is the first, a way to get a list containing all Contexts above
	since a top level Context (a pointer to a top level element of our environnement) until the subscriber's Context.
 
 Then, if the Context node is sharing, we just build the node refering on our object (with all inter level nodes if needed)
 else we insure that all Contexts node above are created before.
 
 Also we need a pointer to a TTObject to refer in the tree structure.
 
 */

class TTPOM_EXPORT TTSubscriber : public TTObject
{
	
public:
	
	TTCLASS_SETUP(TTSubscriber)
	
private:
	
	TTNodeDirectoryPtr	mDirectory;				///< the directory of the tree structure
	TTPtr				mContext;				///< the Context which contains this subscriber
	TTSymbolPtr			mRelativeAddress;		///< the address of this subscriber relative to the Context node

	TTCallbackPtr		mShareCallback;			///< A callback that is used to ask the Context node to other subscribers created before this one
												///< Here we expect the callback fill the given value with a pointer to the ContextNode or NULL.
	TTCallbackPtr		mContextListCallback;	///< A callback that is used to get the Context list of all Contexts above
												///< Here we expect the callback fill the given value with a TTListPtr containing all Contexts 
												///< above and their names or NULL.
	
	TTSymbolPtr			mAbsoluteAddress;		///< ATTR: cache the address of this subscriber in the tree structure
	TTSymbolPtr			mContextAddress;		///< ATTR: cache the address of the Context node in the tree structure
	TTNodePtr			mNode;					///< ATTR: cache the TTNode relative to this subscriber
	TTNodePtr			mContextNode;			///< ATTR: cache the TTNode relative to the Context

public:
	
	TTErr getContext(TTValue& value);
	TTErr getRelativeAddress(TTValue& value);
	TTErr getAbsoluteAddress(TTValue& value);
	TTErr getContextAddress(TTValue& value);
	TTErr getNode(TTValue& value);
	TTErr getContextNode(TTValue& value);
	
private:
	
	/** Build the Node and eventually any upper Context Nodes */
	TTErr build(TTObjectPtr anObject);
	
	/** Register each given Context of the list as TTNode in the tree structure
	 if they don't exist yet */
	TTErr registerContextList(TTListPtr aContextList);
	
};

typedef TTSubscriber* TTSubscriberPtr;

#endif // __TT_SUBSCRIBER_H__
