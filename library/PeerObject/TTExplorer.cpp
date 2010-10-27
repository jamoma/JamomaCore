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
mDirectory(NULL),
mObserver(NULL),
mReturnValueCallback(NULL),
mTempNode(NULL),
mTempName(kTTSymEmpty),
mResult(NULL)
{
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTPreset is not NULL", mDirectory);
	
	if(arguments.getSize() == 2)
		arguments.get(1, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Lookfor, kTypeSymbol);
	addAttribute(Equal, kTypeLocalValue);
	addAttribute(Different, kTypeLocalValue);
	
	addMessage(Explore);
	
	mResult = new TTHash();
}

TTExplorer::~TTExplorer()
{
	TTSymbolPtr addressToObserve;
	
	// bind the right node
	if (mLookfor == TT("Instances"))
		addressToObserve = mTempParent;
	else
		addressToObserve = mAddress;
	
	if (mObserver && addressToObserve != kTTSymEmpty) {
		mDirectory->removeObserverForNotifications(addressToObserve, *mObserver);
		TTObjectRelease(TTObjectHandle(&mObserver));
	}
	
	if (mReturnValueCallback)
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
	
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
		mDirectory->removeObserverForNotifications(mTempObserve, *mObserver);
		TTObjectRelease(TTObjectHandle(&mObserver));
	}
	
	// change the address
	mAddress = value;
	
	// change internal values
	splitOSCAddress(mAddress, &mTempParent, &mTempName, &inst, &attr);
	
	// bind the new node
	if (mLookfor == TT("Instances"))
		mTempObserve = mTempParent;
	else
		mTempObserve = mAddress;
	
	// change the observer
	if (mTempObserve != kTTSymEmpty){
		
		// observe any creation or destruction below the address
		mObserver = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Callback"), TTObjectHandle(&mObserver), kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		newBaton->append(TTPtr(kTTSymEmpty));
		
		mObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
		mObserver->setAttributeValue(TT("Function"), TTPtr(&TTExplorerDirectoryCallback));
		
		mObserver->setAttributeValue(TT("Owner"), TT("TTExplorer"));						// this is usefull only to debug
		
		mDirectory->addObserverForNotifications(mTempObserve, *mObserver);
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
	mTempNode = NULL;
	
	if (mLookfor == kTTSymEmpty)
		return kTTErrGeneric;
	
	// bind the right node
	if (mLookfor == TT("Instances"))
		err = mDirectory->Lookup(mTempParent, aNodeList, &mTempNode);
	else
		err = mDirectory->Lookup(mAddress, aNodeList, &mTempNode);
	
	if (!err){
		
		// get children names
		if (mLookfor == TT("Children"))
			mTempNode->getChildrenName(nameList);
		
		// get instances names
		else if (mLookfor == TT("Instances"))
			mTempNode->getChildrenInstance(mTempName, nameList);
		
		// get attributes names
		else if (mLookfor == TT("Attributes")) {
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
		
		// get relative address of this type of objects
		else {
			mDirectory->LookFor(&aNodeList, testNodeObjectType, mLookfor, allObjectNodes, &aNode);
			
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
			mReturnValueCallback->notify(v);
		}
		
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::writeAsXml(const TTValue& value)
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

TTErr TTExplorer::readFromXml(const TTValue& value)
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
	
	// Switch on what the explorer is looking for
	if (anExplorer->mLookfor == kTTSymEmpty)
		return kTTErrGeneric;
	
	// get children names
	if (anExplorer->mLookfor == TT("Children")) {
		if (aNode->getParent() == anExplorer->mTempNode)
			v.append(aNode->getName());
	}
	
	// get instances names
	else if (anExplorer->mLookfor == TT("Instances")) {
		 // TODO : if the TempNode is destroyed then rebuilt, the test below fails => observe his destruction and replace mTempNode
		if ((aNode->getParent() == anExplorer->mTempNode) && (aNode->getName() == anExplorer->mTempName))
			v.append(aNode->getInstance());
	}
	
	// get attributes names
	else if (anExplorer->mLookfor == TT("Attributes")) {
		if (aNode == anExplorer->mTempNode) {
			
			// always clear the result
			anExplorer->mResult->clear();
			
			if (o = aNode->getObject())
				o->getAttributeNames(v);
		}
	}
	
	// get relative address of this type of objects
	else {
		
		if (o = aNode->getObject()) { 
			if (anExplorer->mLookfor == o->getName()) {
				aNode->getOscAddress(&relativeAddress, anExplorer->mAddress);
				v.append(relativeAddress);
			}
		}
		// sometimes the object can be destroyed before his address
		else if(flag == kAddressDestroyed) {
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
		anExplorer->mReturnValueCallback->notify(v);
	}
	
	return kTTErrNone;
}
