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

TTErr TTExplorer::WriteAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	/*
	ItemPtr				anItem;
	TTValue				hk, hsk, v, a;
	TTSymbolPtr			key, skey;
	TTString			aString;
	TTUInt8				i, j;
	 */
	
	value.get(0, (TTPtr*)&aXmlHandler);
	/*
	// Write name attribute
	xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST mName->getCString());
	
	// Write comment attribute
	xmlTextWriterWriteFormatComment(aXmlHandler->mWriter, "%s", BAD_CAST mComment->getCString());
	
	// Write Items
	mItemList->getKeys(hk);
	for (i=0; i<mItemList->getSize(); i++) {
		
		hk.get(i,(TTSymbolPtr*)&key);
		mItemList->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		// Start an Item by the type of his object
		xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST anItem->object->getName()->getCString());
		
		// Write address attribute
		xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST key->getCString());
		
		// Write the state
		anItem->state->getKeys(hsk);
		for (j=0; j<anItem->state->getSize(); j++) {
			hsk.get(j,(TTSymbolPtr*)&skey);
			anItem->state->lookup(skey, a);
			
			// Don't write kTTValNONE
			if (a == kTTValNONE)
				continue;
			
			a.toString();
			a.get(0, aString);
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST skey->getCString(), BAD_CAST aString.data());
		}
		
		// to -- we don't need to write type and priority attribute anymore
		// because the fromSting() method automatically parse the type 
		// while reading and each item are sorted by order of priority (TODO)
		
		// maybe we could add extra data like : ramp time, unit, ... ?
		
		// Close Item
		xmlTextWriterEndElement(aXmlHandler->mWriter);
	}
	 */
	
	return kTTErrNone;
}

TTErr TTExplorer::ReadFromXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	/*
	TTSymbolPtr			absAddress, attributeName;
	ItemPtr				anItem;
	TTNodePtr			aNode;
	TTValue				v, attributeToStore;
	TTUInt8				i;
	 */
	
	value.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	/*
	// Switch on the name of the XML node
	
	// Starts reading
	if (aXmlHandler->mXmlNodeName == TT("start")) {
		Clear();
		return kTTErrNone;
	}
	
	// Ends reading
	if (aXmlHandler->mXmlNodeName == TT("end")) {
		// do nothing
		return kTTErrNone;
	}
	
	// Comment node
	if (aXmlHandler->mXmlNodeName == TT("#comment"))
		return kTTErrNone;
	
	// Text node (are only \n because of indentation)
	if (aXmlHandler->mXmlNodeName == TT("#text")) 
		return kTTErrNone;

	// Any other nodes : 
	// the first time a new type is parsed : add an entry in the toStore table and fill attributes then create items
	// else only create items

	// Get address attribute
	if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "address") == 1) {
			
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &mCurrentItem);
			
			// Fill the toStore table
			// If the entry doesn't exist or is empty
			mToStore->lookup(aXmlHandler->mXmlNodeName, attributeToStore);
			if (attributeToStore.getSize() == 0) {
				while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {
					
					// Get attribute name
					aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
					if (v.getType() == kTypeSymbol) {
						v.get(0, &attributeName);
						attributeToStore.append(attributeName);
					}
				}
				mToStore->append(aXmlHandler->mXmlNodeName, attributeToStore);
			}
				
			// if the item doesn't exist create it 
			if (mItemList->lookup(mCurrentItem, v)) {
				
				makeAbsoluteAddress(mCurrentItem, &absAddress);
				mDirectory->getTTNodeForOSC(absAddress, &aNode);
				anItem = new Item(aNode);
				mItemList->append(mCurrentItem, TTValue((TTPtr)anItem));
				
				// fill the item
				for (i=0; i<attributeToStore.getSize(); i++) {
					attributeToStore.get(i, &attributeName);
					
					if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST attributeName->getCString()) == 1) {
						
						aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
						anItem->state->append(attributeName, v);
					}
				}
			}
		}
	}
	*/
	return kTTErrNone;
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
