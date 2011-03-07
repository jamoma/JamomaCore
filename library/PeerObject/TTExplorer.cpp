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
mAddress(kTTSymEmpty),
mLookfor(kTTSymEmpty),
mEqual(kTTValNONE),
mDifferent(kTTValNONE),
mApplication(NULL),
mObserver(NULL),
mReturnValueCallback(NULL),
mLookforObjectCriteria(NULL),
mTempNode(NULL),
mTempName(kTTSymEmpty),
mResult(NULL),
mLastResult(kTTValNONE)
{
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTPreset is not NULL", mApplication);
	
	if(arguments.getSize() == 2)
		arguments.get(1, (TTPtr*)&mReturnValueCallback);
	
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
	TTSymbolPtr addressToObserve;
	
	// bind the right node
	if (mLookfor == kTTSym_instances)
		addressToObserve = mTempParent;
	else
		addressToObserve = mAddress;
	
	if (mObserver) {
		if (addressToObserve != kTTSymEmpty)
			getDirectoryFrom(this)->removeObserverForNotifications(addressToObserve, *mObserver);
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
	
	setAddress(mAddress);
	
	return kTTErrNone;
}

TTErr TTExplorer::setAddress(const TTValue& value)
{	
	TTSymbolPtr inst, attr;
	TTValuePtr	newBaton;
	
	// delete the old observer
	if (mObserver && mTempObserve != kTTSymEmpty) {
		getDirectoryFrom(this)->removeObserverForNotifications(mTempObserve, *mObserver);
		TTObjectRelease(TTObjectHandle(&mObserver));
	}
	
	// change the address
	mAddress = value;
	
	// add Slash before to be sure we have one
	joinOSCAddress(S_SEPARATOR, mAddress, &mAddress);
	
	// change internal values
	splitOSCAddress(mAddress, &mTempParent, &mTempName, &inst, &attr);
	
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
		
		getDirectoryFrom(this)->addObserverForNotifications(mTempObserve, *mObserver);
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::Explore()
{
	TTSymbolPtr name;
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
		err = getDirectoryFrom(this)->Lookup(mTempParent, aNodeList, &mTempNode);
	else
		err = getDirectoryFrom(this)->Lookup(mAddress, aNodeList, &mTempNode);
	
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
					v.get(i, &name);
					mResult->append(name, kTTValNONE);
				}
			}
		}
		
		// get relative address of objects looking at mLookforObjectCriteria
		else {
			
			// if mLookforObjectCriteria table is empty and mLookfor != kTTSymEmpty
			// use mLookfor as an entry for mLookforObjectCriteria table
			if (mLookforObjectCriteria->isEmpty() && mLookfor != kTTSymEmpty)
				CriteriaInclude(mLookfor);
			
			getDirectoryFrom(this)->LookFor(&aNodeList, testNodeUsingCriteria, (TTPtr)mLookforObjectCriteria, allObjectNodes, &aNode);
			
			// Memorized the result in a hash table
			for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
				
				allObjectNodes.current().get(0, (TTPtr*)&aNode);
				aNode->getOscAddress(&name, mAddress);
				
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
	ToTTName(converted);
	
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
	getDirectoryFrom(this)->getTTNodeForOSC(mAddress, &aNode);
	if (aNode) writeNode(anOpmlHandler, aNode);
	else writeNode(anOpmlHandler, getDirectoryFrom(this)->getRoot());

	return kTTErrNone;
}

void TTExplorer::writeNode(TTOpmlHandlerPtr anOpmlHandler, TTNodePtr aNode)
{
	TTSymbolPtr nameInstance, attributeName;
	TTObjectPtr anObject;
	TTValue		attributeNameList, v;
	TTList		nodeList;
	TTNodePtr	aChild;
	TTString	aString;
	
	// Start opml node
	xmlTextWriterStartElement(anOpmlHandler->mWriter, BAD_CAST "outline");
	
	// Write address attribute
	mergeOSCAddress(&nameInstance, kTTSymEmpty, aNode->getName(), aNode->getInstance(), kTTSymEmpty);
	xmlTextWriterWriteAttribute(anOpmlHandler->mWriter, BAD_CAST "text", BAD_CAST nameInstance->getCString());
	
	if (anObject = aNode->getObject()) {
		
		// write attributes
		anObject->getAttributeNames(attributeNameList);
		
		for(TTUInt8 i = 0; i < attributeNameList.getSize(); i++)
		{
			attributeNameList.get(i,(TTSymbolPtr*)&attributeName);
			
			// Filter object type : Data, Viewer and Container
			if (anObject->getName() == TT("Data") || anObject->getName() == TT("View") || anObject->getName() == TT("Container")) {
				
				// Filter atribute names
				if (attributeName != kTTSym_value && attributeName != kTTSym_address && attributeName != TT("content")) {
					
					anObject->getAttributeValue(attributeName, v);
					
					// Replace TTName by AppName (because object name can be customized in order to have a specific application's namespace)
					ToAppName(v);
					
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
	TTSymbolPtr		oscAddress, relativeAddress, key;
	TTNodePtr		aNode;
	TTUInt8			flag;
	TTCallbackPtr	anObserver;
	TTObjectPtr		o;
		
	// Unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&anExplorer);
	
	// Unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &oscAddress);
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
				aNode->getOscAddress(&relativeAddress, anExplorer->mAddress);
				v.append(relativeAddress);
		}
		// sometimes the object can be destroyed before his address
		else if (flag == kAddressDestroyed) {
			aNode->getOscAddress(&relativeAddress, anExplorer->mAddress);
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
