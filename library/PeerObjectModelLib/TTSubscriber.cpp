/* 
 * A contextual TTNode builder
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSubscriber.h"

#define thisTTClass			TTSubscriber
#define thisTTClassName		"Subscriber"
#define thisTTClassTags		"node, subscriber"

TT_OBJECT_CONSTRUCTOR,
mDirectory(NULL), mContext(NULL), mRelativeAddress(kTTSymEmpty), mShareCallback(NULL), mContextListCallback(NULL)
{
	TTObjectPtr anObject;
	
	TT_ASSERT("Correct number of args to create TTSubscriber", arguments.getSize() == 6);
	
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTSubscriber is not NULL", mDirectory);
	arguments.get(1, &mContext);
	TT_ASSERT("Context passed to TTSubscriber is not NULL", mContext);
	
	arguments.get(2, &mRelativeAddress);
	
	arguments.get(3, (TTPtr*)&mShareCallback);
	TT_ASSERT("Share Callback passed to TTSubscriber is not NULL", mShareCallback);
	arguments.get(4, (TTPtr*)&mContextListCallback);
	TT_ASSERT("ContextList Callback passed to TTSubscriber is not NULL", mContextListCallback);
	
	arguments.get(5, (TTPtr*)&anObject);
	
	addAttributeWithGetter(Context, kTypePointer);
	addAttributeWithGetter(RelativeAddress, kTypeSymbol);
	addAttributeWithGetter(AbsoluteAddress, kTypeSymbol);
	addAttributeWithGetter(ContextAddress, kTypeSymbol);
	addAttributeWithGetter(Node, kTypeObject);
	addAttributeWithGetter(ContextNode, kTypeObject);
	
	this->build(anObject);
}

TTSubscriber::~TTSubscriber()
{
	TTList		returnedTTNodes;
	TTNodePtr	firstReturnedTTNode;
	
	if (this->mDirectory->Lookup(this->mContextAddress, returnedTTNodes, &firstReturnedTTNode))
		this->mDirectory->TTNodeRemove(this->mContextAddress);
}

TTErr TTSubscriber::getContext(TTValue& value)
{
	value = mContext;
	return kTTErrNone;
}

TTErr TTSubscriber::getRelativeAddress(TTValue& value)
{
	value = mRelativeAddress;
	return kTTErrNone;
}

TTErr TTSubscriber::getAbsoluteAddress(TTValue& value)
{
	value = mAbsoluteAddress;
	return kTTErrNone;
}

TTErr TTSubscriber::getContextAddress(TTValue& value)
{
	value = mContextAddress;
	return kTTErrNone;
}

TTErr TTSubscriber::getNode(TTValue& value)
{
	value = mNode;
	return kTTErrNone;
}

TTErr TTSubscriber::getContextNode(TTValue& value)
{
	value = mContextNode;
	return kTTErrNone;
}

TTErr TTSubscriber::build(TTObjectPtr anObject)
{
	TTSymbolPtr		_parent, _name, _instance, _attribute, _node;
	TTValue			aTempValue, args;
	TTListPtr		aContextList;
	TTList			aNodeList;
	TTNodePtr		aParentNode, aNode;
	TTContainerPtr	aContainer;
	TTString		nodeAddress;
	TTBoolean		newInstanceCreated;
	TTErr			err;
	
	// look for any other registered subscriber in the Context
	// to ask them the Context node using the shareCallback.
	// (this is done to optimized the registration process)
	this->mContextNode = NULL;
	this->mShareCallback->notify(aTempValue);
	aTempValue.get(0, (TTPtr*)&(this->mContextNode));
	
	// if it is the first registered subscriber in the Context
	// or the sharing has failed
	if (!this->mContextNode) {
		
		// Get all Context above the subscriber and their name 
		// using the contextListCallback
		aTempValue.clear();
		aContextList = new TTList();
		aTempValue.append(aContextList);
		this->mContextListCallback->notify(aTempValue);
		
		// register each Context of the list as 
		// TTNode in the tree structure (if they don't exist yet)
		this->registerContextList(aContextList);
	}
	
	// Build the node at /contextAddress/parent/node
	if (this->mContextNode) {
		
		splitOSCAddress(this->mRelativeAddress, &_parent, &_name, &_instance, &_attribute);
		
		// start at /contextAddress
		this->mContextNode->getOscAddress(&_node);
		if (_node != S_SEPARATOR)
			nodeAddress = _node->getCString();
		
		// Check if parent exists
		if ((_parent != NO_PARENT) && (_parent->getCString()[0] != C_SEPARATOR))
			nodeAddress += "/";
		nodeAddress += _parent->getCString();
		
		err = this->mDirectory->Lookup(TT(nodeAddress.data()), aNodeList, &aParentNode);
		
		// if parent doesn't exist create it
		if (err) {
			
			// the parent could be a container
			if (_parent != NO_PARENT) {

				args = new TTValue(0);
				args.append(kTTSymEmpty);
				aContainer = NULL;
				err = TTObjectInstantiate(TT("Container"), TTObjectHandle(&aContainer), args);
				
				if (!err)
					this->mDirectory->TTNodeCreate(TT(nodeAddress.data()), aContainer, this->mContextNode->getContext(), &aParentNode, &newInstanceCreated);
			}
			// else the context himself...
		}
		
		// Check if node exists
		if ((_name != NO_NAME) && (_name->getCString()[0] != C_SEPARATOR))
			nodeAddress += "/";
		nodeAddress += _name->getCString();
		
		_node = TT(nodeAddress.data());
		
		err = this->mDirectory->Lookup(_node, aNodeList, &aNode);
		
		// if node doesn't exist create it
		if (err) {
			// the node could be a container
			if (_name != NO_NAME)
				this->mDirectory->TTNodeCreate(_node, anObject, this->mContextNode->getContext(), &aNode, &newInstanceCreated);
			// or the Context himself
			else 
				aNode = this->mContextNode;
		}
		// else replace the object
		// and reset attribute access
		else {
			
			aNode->setObject(anObject);
			
			// TODO : reset attribute access - hum ?
		}
		
		this->mNode = aNode;
		this->mNode->getOscAddress(&this->mAbsoluteAddress);
		this->mContextNode->getOscAddress(&this->mContextAddress);
		
	}
	else
		return kTTErrGeneric;
	
	return kTTErrNone;
}

TTErr TTSubscriber::registerContextList(TTListPtr aContextList)
{
	TTValue			aTempValue, args;
	TTSymbolPtr		formatedContextName, contextAddress, context_parent, context_name, context_instance, context_attribute;
	TTList			contextNodeList, attributesAccess;
	TTNodePtr		contextNode, lowerContextNode;
	TTString		lowerContextAddress;
	TTPtr			aContext;
	TTContainerPtr	aContainer;
	TTBoolean		found, newInstanceCreated;
	TTErr			err;
	
	// Build the /topContext/subContext/.../contextName/ structure
	// Check each context instance looking at the patcher.
	
	// start by the root
	contextNode = mDirectory->getRoot();
	
	// if there are contexts contextList
	if(!aContextList->isEmpty()){
		
		// for each context of the contextList
		for (aContextList->begin(); aContextList->end(); aContextList->next()){
			
			// get the contextName
			aContextList->current().get(0, (TTSymbolPtr*)&formatedContextName);
			
			// get the context
			aContextList->current().get(1, (TTPtr*)&aContext);
			
			// Is there a specific instance inside the contextName (eg. myContext.A) ?
			// if not we look for contextName.* else for myContext.A
			splitOSCAddress(formatedContextName, &context_parent, &context_name, &context_instance, &context_attribute);
			
			if (context_instance == NO_INSTANCE)
				err = contextNode->getChildren(context_name, S_WILDCARD, contextNodeList);
			else 
				err = contextNode->getChildren(context_name, context_instance, contextNodeList);
			
			// 3. For each node of the contextNodeList, check the context
			// if one matches, keep it else we have to create the node
			found = false;
			lowerContextNode = NULL;
			for (contextNodeList.begin(); contextNodeList.end(); contextNodeList.next()) {
				
				contextNodeList.current().get(0, (TTPtr*) &lowerContextNode);
				
				// Check if objects are the same
				if (aContext == (TTPtr)lowerContextNode->getContext()) {
					found = true;
					break;
				}
			}
			
			// if no node exists : create a new instance for this context
			if (!found) {
				
				contextNode->getOscAddress(&contextAddress);
				
				// don't create another root !
				if (formatedContextName != S_SEPARATOR) {
					lowerContextAddress = contextAddress->getCString();
					if (contextAddress != S_SEPARATOR)
						lowerContextAddress += "/";
					lowerContextAddress += formatedContextName->getCString();
					
					args = new TTValue(0);
					args.append(kTTSymEmpty);
					aContainer = NULL;
					err = TTObjectInstantiate(TT("Container"), TTObjectHandle(&aContainer), args);
					
					if (!err)
						this->mDirectory->TTNodeCreate(TT(lowerContextAddress.data()), aContainer, aContext, &contextNode, &newInstanceCreated);

				}
				else
					contextNode = this->mDirectory->getRoot();
			}
			else
				contextNode = lowerContextNode;
		} // end for
		
		this->mContextNode = contextNode;
	}
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

