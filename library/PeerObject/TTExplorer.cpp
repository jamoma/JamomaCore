/* 
 * A Namespace Explorer Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTExplorer.h"

#define thisTTClass			TTExplorer
#define thisTTClassName		"Explorer"
#define thisTTClassTags		"explorer"

TT_MODULAR_CONSTRUCTOR,
mAddress(kTTAdrsEmpty),
mLookfor(kTTSymEmpty),
mEqual(kTTValNONE),
mDifferent(kTTValNONE),
mObserver(NULL),
mReturnValueCallback(NULL),
mLookforObjectCriteria(NULL),
mTempNode(NULL),
mTempName(kTTSymEmpty),
mResult(NULL),
mLastResult(kTTValNONE)
{
	if(arguments.getSize() == 1)
		arguments.get(0, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Lookfor, kTypeSymbol);
	// TODO : addAttribute(Equal, kTypeLocalValue);
	// TODO : addAttribute(Different, kTypeLocalValue);
	
	addMessage(Explore);
	
	addMessageWithArgument(CriteriaInclude);
	addMessage(CriteriaClear);
	
	addMessageWithArgument(WriteAsOpml);
	addMessageProperty(WriteAsOpml, hidden, YES);
	
	mLookforObjectCriteria = new TTHash();
	mResult = new TTHash();
}

TTExplorer::~TTExplorer()
{
	TTNodeAddressPtr addressToObserve;
	
	// bind the right node
	if (mLookfor == kTTSym_instances)
		addressToObserve = mTempParent;
	else
		addressToObserve = mAddress;
	
	if (mObserver) {
		if (addressToObserve != kTTAdrsEmpty)
			getDirectoryFrom(addressToObserve)->removeObserverForNotifications(addressToObserve, *mObserver);
		delete (TTValuePtr)mObserver->getBaton();
		TTObjectRelease(TTObjectHandle(&mObserver));
	}
	
	if (mReturnValueCallback) {
		delete (TTValuePtr)mReturnValueCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
	}
	
	CriteriaClear();
	delete mLookforObjectCriteria;
	delete mResult;
}

TTErr TTExplorer::setLookfor(const TTValue& value)
{
	mLookfor = value;
	
	// if mLookforObjectCriteria table is empty and mLookfor != kTTSymEmpty
	// use mLookfor as an entry for mLookforObjectCriteria table
	if (mLookforObjectCriteria->isEmpty() && mLookfor != kTTSymEmpty)
		CriteriaInclude(mLookfor);
	
	setAddress(mAddress);
	
	return kTTErrNone;
}

TTErr TTExplorer::setAddress(const TTValue& value)
{	
	TTValuePtr	newBaton;
	
	// delete the old observer
	if (mObserver && mTempObserve != kTTSymEmpty) {
		getDirectoryFrom(mTempObserve)->removeObserverForNotifications(mTempObserve, *mObserver);
		TTObjectRelease(TTObjectHandle(&mObserver));
	}
	
	// change the address
	value.get(0, &mAddress);
	
	// it works only for absolute address
	if (mAddress->getType() == kAddressAbsolute) {
		
		// change internal values
		mTempParent = mAddress->getParent();
		mTempName = mAddress->getName();
		
		// bind the new node
		if (mLookfor == kTTSym_instances)
			mTempObserve = mTempParent;
		else
			mTempObserve = mAddress;
		
		// change the observer
		if (mTempObserve != kTTSymEmpty){
			
			// observe any creation or destruction below the address
			mObserver = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("callback"), TTObjectHandle(&mObserver), kTTValNONE);
			
			newBaton = new TTValue(TTPtr(this));
			newBaton->append(TTPtr(kTTSymEmpty));
			
			mObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
			mObserver->setAttributeValue(kTTSym_function, TTPtr(&TTExplorerDirectoryCallback));
			
			mObserver->setAttributeValue(TT("owner"), TT("TTExplorer"));						// this is usefull only to debug
			
			getDirectoryFrom(mTempObserve)->addObserverForNotifications(mTempObserve, *mObserver);
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::Explore()
{
	TTNodeAddressPtr name;
	TTList		aNodeList, nameList, allObjectNodes;
	TTNodePtr	aNode;
	TTObjectPtr	o;
	TTValue		v;
	TTErr		err;
	
	mResult->clear();
	mLastResult = kTTValNONE;
	mTempNode = NULL;
	
	// bind the right node
	if (mLookfor == kTTSym_instances)
		err = getDirectoryFrom(mTempParent)->Lookup(mTempParent, aNodeList, &mTempNode);
	else
		err = getDirectoryFrom(mAddress)->Lookup(mAddress, aNodeList, &mTempNode);
	
	if (!err){
		
		// get children names
		if (mLookfor == kTTSym_children)
			mTempNode->getChildrenName(nameList);
		
		// get instances names
		else if (mLookfor == kTTSym_instances)
			mTempNode->getChildrenInstance(mTempName, nameList);
		
		// get attributes names
		else if (mLookfor == kTTSym_attributes) {
			if (o = mTempNode->getObject()) {
				v.clear();
				o->getAttributeNames(v);
				// Memorized the result in a hash table
				for (TTUInt32 i=0; i<v.getSize(); i++) {
					v.get(i, (TTSymbolPtr*)&name);
					mResult->append(name, kTTValNONE);
				}
			}
		}
		
		// get relative address of objects looking at mLookforObjectCriteria
		else {
			
			getDirectoryFrom(mAddress)->LookFor(&aNodeList, testNodeUsingCriteria, (TTPtr)mLookforObjectCriteria, allObjectNodes, &aNode);
			
			// Memorized the result in a hash table
			for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
				
				allObjectNodes.current().get(0, (TTPtr*)&aNode);
				aNode->getAddress(&name, mAddress);
				
				mResult->append(name, kTTValNONE);
			}
		}
		
		// For Children and Instances cases : 
		// Memorized the result in a hash table
		if (!nameList.isEmpty()) {
			for (nameList.begin(); nameList.end(); nameList.next()) {
				
				nameList.current().get(0,(TTSymbol **)&name);
				
				mResult->append(name, kTTValNONE);
			}
		}
		
		// Return the value result back
		v.clear();
		if (mReturnValueCallback) {
			mResult->getKeys(v);
			if (!(v == mLastResult)) {
				mReturnValueCallback->notify(v);
				mLastResult = v;
			}
		}
		
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::CriteriaInclude(const TTValue& value)
{
	TTUInt16	s;
	TTSymbolPtr	objectType, attributeName;
	TTHashPtr	attributeCriteria;
	TTValue		converted, v, valueCriteria;
	
	// Replace none TTnames (because object and attribute names can be customized in order to have a specific application's namespace)
	converted = value;
	ToTTNames(converted);
	
	s = converted.getSize();
	if (s > 0)
		if (converted.getType() == kTypeSymbol) {
			
			converted.get(0, &objectType);
			if (mLookforObjectCriteria->lookup(objectType, v)) {
				
				attributeCriteria = new TTHash();
				mLookforObjectCriteria->append(objectType, TTValue(TTPtr(attributeCriteria)));
			}
			else
				v.get(0, (TTPtr*)&attributeCriteria);
		}
	
	if (s > 1) {
		if (converted.getType(1) == kTypeSymbol) {
			
			converted.get(1, &attributeName);
			if (s > 2) {
				valueCriteria.copyFrom(converted, 2);
				attributeCriteria->remove(attributeName);
				attributeCriteria->append(attributeName, valueCriteria);
			}
			else
				attributeCriteria->append(attributeName, kTTValNONE);
		}
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::CriteriaClear()
{
	TTHashPtr	attributeCriteria;
	TTValue			v, keys;
	TTSymbolPtr		k;
	
	if (!mLookforObjectCriteria->isEmpty()) {
		
		mLookforObjectCriteria->getKeys(keys);
		for (TTUInt16 i=0; i<keys.getSize(); i++) {
			
			keys.get(i, &k);
			mLookforObjectCriteria->lookup(k, v);
			v.get(0, (TTPtr*)&attributeCriteria);
			delete attributeCriteria;
		}
		
		delete mLookforObjectCriteria;
		mLookforObjectCriteria = new TTHash();
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::WriteAsOpml(const TTValue& value)
{
	TTOpmlHandlerPtr	anOpmlHandler;
	TTNodePtr			aNode;
	
	value.get(0, (TTPtr*)&anOpmlHandler);

	// get the mAddress node
	getDirectoryFrom(mAddress)->getTTNode(mAddress, &aNode);
	if (aNode) writeNode(anOpmlHandler, aNode);
	else writeNode(anOpmlHandler, getDirectoryFrom(mAddress)->getRoot());

	return kTTErrNone;
}

void TTExplorer::writeNode(TTOpmlHandlerPtr anOpmlHandler, TTNodePtr aNode)
{
	TTNodeAddressPtr nameInstance;
	TTSymbolPtr objectName, attributeName;
	TTObjectPtr anObject;
	TTValue		attributeNameList, v;
	TTList		nodeList;
	TTNodePtr	aChild;
	TTString	aString;
	
	// Start opml node
	xmlTextWriterStartElement(anOpmlHandler->mWriter, BAD_CAST "outline");
	
	// Write address attribute
	nameInstance = new TTNodeAddress(NO_DEVICE, NO_PARENT, aNode->getName(), aNode->getInstance(), NO_ATTRIBUTE);
	xmlTextWriterWriteAttribute(anOpmlHandler->mWriter, BAD_CAST "text", BAD_CAST nameInstance->getCString());
	
	if (anObject = aNode->getObject()) {
		
		// Write object name attribute
		objectName = anObject->getName();
		if (objectName != kTTSymEmpty)
			xmlTextWriterWriteAttribute(anOpmlHandler->mWriter, BAD_CAST "object", BAD_CAST objectName->getCString());
		else
			xmlTextWriterWriteAttribute(anOpmlHandler->mWriter, BAD_CAST "object", BAD_CAST kTTSym_none->getCString());
		
		// write attributes
		anObject->getAttributeNames(attributeNameList);
		
		for(TTUInt8 i = 0; i < attributeNameList.getSize(); i++)
		{
			attributeNameList.get(i, &attributeName);
			
			// Filter object type : Data, Viewer and Container
			if (anObject->getName() == TT("Data") || anObject->getName() == TT("View") || anObject->getName() == TT("Container")) {
				
				// Filter attribute names
				if (attributeName != kTTSym_value && 
					attributeName != kTTSym_address && 
					attributeName != TT("content") &&
					attributeName != kTTSym_activityIn &&
					attributeName != kTTSym_activityOut) {
					
					anObject->getAttributeValue(attributeName, v);
					
					// Replace TTName by AppName (because object name can be customized in order to have a specific application's namespace)
					ToAppNames(v);
					
					v.toString();
					v.get(0, aString);
					
					xmlTextWriterWriteAttribute(anOpmlHandler->mWriter, BAD_CAST attributeName->getCString(), BAD_CAST aString.data());
				}
			}
		}
		
		// write messages ?
	}
	
	aNode->getChildren(S_WILDCARD, S_WILDCARD, nodeList);
	for (nodeList.begin(); nodeList.end(); nodeList.next())
	{
		nodeList.current().get(0, (TTPtr*)&aChild);
		writeNode(anOpmlHandler, aChild);
	}
	
	// Close opml node
	xmlTextWriterEndElement(anOpmlHandler->mWriter);
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTExplorerDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValue			v = kTTValNONE;
	TTValuePtr		b;
	TTExplorerPtr	anExplorer;
	TTNodeAddressPtr anAddress, relativeAddress;
	TTSymbolPtr		key;
	TTNodePtr		aNode;
	TTUInt8			flag;
	TTCallbackPtr	anObserver;
	TTObjectPtr		o;
		
	// Unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&anExplorer);
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	data.get(0, &anAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	// get children names
	if (anExplorer->mLookfor == kTTSym_children) {
		if (aNode->getParent() == anExplorer->mTempNode)
			v.append(aNode->getName());
	}
	
	// get instances names
	else if (anExplorer->mLookfor == kTTSym_instances) {
		 // TODO : if the TempNode is destroyed then rebuilt, the test below fails => observe his destruction and replace mTempNode
		if ((aNode->getParent() == anExplorer->mTempNode) && (aNode->getName() == anExplorer->mTempName))
			v.append(aNode->getInstance());
	}
	
	// get attributes names
	else if (anExplorer->mLookfor == kTTSym_attributes) {
		if (aNode == anExplorer->mTempNode) {
			
			// always clear the result
			anExplorer->mResult->clear();
			
			if (o = aNode->getObject())
				o->getAttributeNames(v);
		}
	}
	
	// get relative address of nodes matching criteria
	else {
			
		if (testNodeUsingCriteria(aNode, (TTPtr)anExplorer->mLookforObjectCriteria)) { 
				aNode->getAddress(&relativeAddress, anExplorer->mAddress);
				v.append(relativeAddress);
		}
		// sometimes the object can be destroyed before his address
		else if (flag == kAddressDestroyed) {
			aNode->getAddress(&relativeAddress, anExplorer->mAddress);
			v.append(relativeAddress);
		}
	}
	
	if (v == kTTValNONE)
		return kTTErrGeneric;
	
	// Add or remove names depending on 
	// if the node is created or destroyed
	switch (flag) {
			
		case kAddressCreated :
		{
			for (TTUInt32 i=0; i<v.getSize(); i++) {
				v.get(i, &key);
				anExplorer->mResult->append(key, kTTValNONE);
			}
			break;
		}
			
		case kAddressDestroyed :
		{
			for (TTUInt32 i=0; i<v.getSize(); i++) {
				v.get(i, &key);
				anExplorer->mResult->remove(key);
			}
			break;
		}
			
		default :
			break;
	}
	
	// Return the value result back
	if (anExplorer->mReturnValueCallback) {
		anExplorer->mResult->getKeys(v);
		if (!(v == anExplorer->mLastResult)) {
			anExplorer->mReturnValueCallback->notify(v);
			anExplorer->mLastResult = v;
		}
	}
	
	return kTTErrNone;
}
