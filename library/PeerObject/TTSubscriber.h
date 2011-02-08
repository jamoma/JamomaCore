/* 
 * A contextual subscriber to register TTObject as TTNode in a TTNodeDirectory
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SUBSCRIBER_H__
#define __TT_SUBSCRIBER_H__

#include "TTModular.h"

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

class TTData;
typedef TTData* TTDataPtr;

class TTApplication;
typedef TTApplication* TTApplicationPtr;

class TTMODULAR_EXPORT TTSubscriber : public TTObject
{
	
public:
	
	TTCLASS_SETUP(TTSubscriber)

private:
	
	TTSymbolPtr			mRelativeAddress;			///< the address of this subscriber relative to the Context node
	
	TTNodePtr			mNode;						///< cache the TTNode relative to this subscriber
	TTSymbolPtr			mNodeAddress;				///< cache the address of this subscriber in the tree structure
	
	TTNodePtr			mContextNode;				///< cache the TTNode relative to the Context
	TTSymbolPtr			mContextAddress;			///< cache the address of the Context node in the tree structure
	
	TTBoolean			mNewInstanceCreated;		///< a flag to know if a new instance has been automatically generated
	
	TTApplicationPtr	mApplication;				///< the application
	
	TTCallbackPtr		mGetContextListCallback;	///< A callback to get the Context list of all Contexts above.
													///< Here we expect the callback fill the given value with a TTListPtr or NULL.
													///< Important Note : 
													///<	- the top level context have to be the first element of the list.
													///<	- each element have to be TTValue with < context name, context pointer >
	
	TTHashPtr			mExposedMessages;
	TTHashPtr			mExposedAttributes;
	
	/** Make all needed registrations to set up a TTNode in the tree strucuture for a given TTObject */
	TTErr subscribe(TTObjectPtr anObject);
	
	/** Register each given Context of the list as TTNode if they don't exist yet */
	TTErr registerContextList(TTListPtr aContextList);
	
	friend TTErr TTMODULAR_EXPORT TTSubscriberMessageReturnValueCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTSubscriberAttributeReturnValueCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTSubscriberAttributeObserveValueCallback(TTPtr baton, TTValue& data);
	
public:
	
	/** Expose a message of any TTObject as TTData in the same context than subscribed object */
	TTErr exposeMessage(TTObjectPtr anObject, TTSymbolPtr messageName, TTDataPtr *returnedData);
	
	/** Expose an attribute of any TTObject as TTData (parameter or return) in the same context than subscribed object */
	TTErr exposeAttribute(TTObjectPtr anObject, TTSymbolPtr attributeName, TTSymbolPtr service, TTDataPtr *returnedData);
};

typedef TTSubscriber* TTSubscriberPtr;

TTErr TTMODULAR_EXPORT TTSubscriberMessageReturnValueCallback(TTPtr baton, TTValue& data);

TTErr TTMODULAR_EXPORT TTSubscriberAttributeReturnValueCallback(TTPtr baton, TTValue& data);

TTErr TTMODULAR_EXPORT TTSubscriberAttributeObserveValueCallback(TTPtr baton, TTValue& data);

#endif // __TT_SUBSCRIBER_H__
