/* 
 * A contextual subscriber to register TTObject as TTNode in a TTNodeDirectory
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSubscriber.h"

#define thisTTClass			TTSubscriber
#define thisTTClassName		"Subscriber"
#define thisTTClassTags		"node, subscriber"

TT_MODULAR_CONSTRUCTOR,
mRelativeAddress(kTTSymEmpty), mDirectory(NULL), mShareContextNodeCallback(NULL), mGetContextListCallback(NULL)
{
	TTObjectPtr anObject;
	
	TT_ASSERT("Correct number of args to create TTSubscriber", arguments.getSize() == 5);
	
	arguments.get(0, (TTPtr*)&anObject);
	
	arguments.get(1, &mRelativeAddress);
	
	arguments.get(2, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTSubscriber is not NULL", mDirectory);
	
	arguments.get(3, (TTPtr*)&mShareContextNodeCallback);
	TT_ASSERT("Share Callback passed to TTSubscriber is not NULL", mShareContextNodeCallback);
	
	arguments.get(4, (TTPtr*)&mGetContextListCallback);
	TT_ASSERT("ContextList Callback passed to TTSubscriber is not NULL", mGetContextListCallback);
	
	addAttribute(RelativeAddress, kTypeSymbol);
	addAttribute(Node, kTypePointer);
	addAttribute(NodeAddress, kTypeSymbol);
	addAttribute(ContextNode, kTypePointer);
	addAttribute(ContextAddress, kTypeSymbol);

	this->subscribe(anObject);
}

TTSubscriber::~TTSubscriber()
{
	TTList		returnedTTNodes;
	TTNodePtr	firstReturnedTTNode;
	
	if (this->mDirectory->Lookup(this->mContextAddress, returnedTTNodes, &firstReturnedTTNode))
		this->mDirectory->TTNodeRemove(this->mContextAddress);
}

TTErr TTSubscriber::subscribe(TTObjectPtr anObject)
{
	TTSymbolPtr		_parent, _name, _instance, _attribute, _node;
	TTValue			aTempValue, args;
	TTListPtr		aContextList;
	TTList			aNodeList;
	TTNodePtr		aParentNode, aNode;
	TTString		nodeAddress;
	TTBoolean		newInstanceCreated;
	TTErr			err;
	
	// look for any other registered subscriber in the Context
	// to ask them the Context node using the shareCallback.
	// (this is done to optimized the registration process)
	this->mContextNode = NULL;
	this->mShareContextNodeCallback->notify(aTempValue);
	aTempValue.get(0, (TTPtr*)&(this->mContextNode));
	
	// if it is the first registered subscriber in the Context
	// or the sharing has failed
	if (!this->mContextNode) {
		
		// Get all Context above the subscriber and their name 
		// using the contextListCallback
		aTempValue.clear();
		aContextList = new TTList();
		aTempValue.append(aContextList);
		this->mGetContextListCallback->notify(aTempValue);
		
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

				// Make a TTNode with no object
				registerTTObject(TT(nodeAddress.data()), NULL, this->mContextNode->getContext(), &aParentNode, &newInstanceCreated);
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
				registerTTObject(_node, anObject, this->mContextNode->getContext(), &aNode, &newInstanceCreated);
			// or the Context himself
			else 
				aNode = this->mContextNode;
		}
		// else set the object
		// and set attribute access
		else {
			
			aNode->setObject(anObject);
			
			// TODO : set attribute access after node creation
		}
		
		this->mNode = aNode;
		this->mNode->getOscAddress(&this->mNodeAddress);
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
	TTBoolean		found, newInstanceCreated;
	TTErr			err;
	
	// Build the /topContext/subContext/.../contextName/ structure
	// Check each context instance looking at the patcher.
	
	// start by the root
	contextNode = mDirectory->getRoot();
	
	// if there are contexts in the context list
	if(!aContextList->isEmpty()){
		
		// for each context of the context list
		for (aContextList->begin(); aContextList->end(); aContextList->next()){
			
			// get the context name
			aContextList->current().get(0, (TTSymbolPtr*)&formatedContextName);
			
			// get the context
			aContextList->current().get(1, (TTPtr*)&aContext);
			
			// Is there a specific instance inside the context name (eg. myContext.A) ?
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
					
					// Make a TTNode with no object
					registerTTObject(TT(lowerContextAddress.data()), NULL, aContext, &contextNode, &newInstanceCreated);

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

TTErr TTSubscriber::registerTTObject(TTSymbolPtr oscAddress, TTObjectPtr newObject, void *aContext, TTNodePtr *returnedTTNode, TTBoolean *newInstanceCreated)
{
	TTUInt8		i;
	TTValue		attributeNames;
	TTSymbolPtr	aName, aType;
	TTValuePtr	attributeAccessPack;
	TTList		attributeAccessList;
	TTErr		err;
	
	// get all attributes of the TTObject
	if (newObject) {
		newObject->getAttributeNames(attributeNames);
		
		// for each attribute
		for(i = 0; i < attributeNames.getSize(); i++) {
			
			attributeNames.get(i, &aName);
			
			// Prepare a callback to get attribute
			TTObjectPtr newGetter = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("Callback"), &newGetter, kTTValNONE);
			TTValuePtr	newGetterBaton = new TTValue(TTPtr(newObject));
			newGetterBaton->append(TTPtr(aName));
			newGetter->setAttributeValue(TT("Baton"), TTPtr(newGetterBaton));
			newGetter->setAttributeValue(TT("Function"), TTPtr(&TTObjectGetAttributeCallbackMethod));
			
			// Prepare a callback to set attribute
			TTObjectPtr newSetter = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("Callback"), &newSetter, kTTValNONE);
			TTValuePtr newSetterBaton = new TTValue(TTPtr(newObject));
			newSetterBaton->append(TTPtr(aName));
			newSetter->setAttributeValue(TT("Baton"), TTPtr(newSetterBaton));
			newSetter->setAttributeValue(TT("Function"), TTPtr(&TTObjectSetAttributeCallbackMethod));
			
			// prepare the pack
			attributeAccessPack = new TTValue((TTPtr)aName);
			attributeAccessPack->append((TTPtr)newGetter);
			attributeAccessPack->append((TTPtr)newSetter);
			
			attributeAccessList.append(attributeAccessPack);
		}
		
		aType = newObject->getName();
	}
	else
		aType = TT("Container");
	
	err = this->mDirectory->TTNodeCreate(oscAddress, aType, newObject, aContext, attributeAccessList, returnedTTNode, newInstanceCreated);
	
	return err;
}

TTErr TTObjectGetAttributeCallbackMethod(TTPtr baton, TTValue& data)
{
	TTValuePtr	b;
	TTObjectPtr	x;
	TTSymbolPtr	aName;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, TTObjectHandle(&x));
	b->get(1, (TTPtr*)&aName);
	
	return x->getAttributeValue(aName, data);
}

TTErr TTObjectSetAttributeCallbackMethod(TTPtr baton, TTValue& data)
{
	TTValuePtr	b;
	TTObjectPtr	x;
	TTSymbolPtr	aName;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, TTObjectHandle(&x));
	b->get(1, (TTPtr*)&aName);
	
	return x->setAttributeValue(aName, data);
}


#if 0
#pragma mark -
#pragma mark Some Methods
#endif

