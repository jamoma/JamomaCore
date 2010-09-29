/* 
 * A Preset Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTPreset.h"

#define thisTTClass			TTPreset
#define thisTTClassName		"Preset"
#define thisTTClassTags		"preset"

// Item CONSTRUCTOR / DESTRUCTOR
Item::Item(TTNodePtr aNode)
{
	TTObjectPtr	anObject;
	TTValue		v;
	
	// Get object
	aNode->getAttributeValue(kTTSym_Object, v);
	v.get(0, (TTPtr*)&anObject);
	object = aNode->getObject();

	// Prepare an empty state
	state = new TTHash();
}

Item::~Item()
{
	delete state;
}

TT_MODULAR_CONSTRUCTOR,
mAddress(kTTSymEmpty),
mName(kTTSymEmpty),
mComment(kTTSymEmpty),
mExtra(kTTValNONE),
mDirectory(NULL),
mItemList(NULL),
mCurrentItem(kTTSymEmpty)
{
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTPreset is not NULL", mDirectory);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttribute(Name, kTypeSymbol);
	addAttribute(Comment, kTypeSymbol);
	addAttribute(Extra, kTypeNone);
	addAttribute(ItemList, kTypePointer);
	addAttributeProperty(ItemList, readOnly, YES);
	
	addMessage(Fill);
	addMessage(Clear);
	addMessage(Update);
	addMessage(Send);
	
	addMessageWithArgument(writeAsXml);
	addMessageWithArgument(readFromXml);
	
	mToStore = new TTHash();
	mItemList = new TTHash();
}

TTPreset::~TTPreset()
{
	Clear();
	delete mItemList;
	mItemList = NULL;
}

TTErr TTPreset::setAddress(const TTValue& value)
{	
	Clear();
	mAddress = value;
	return kTTErrNone;
}

TTErr TTPreset::Fill()
{
	TTNodePtr		aNode;
	TTList			aNodeList, allObjectNodes;
	TTSymbolPtr		aRelativeAddress, objectToStore;
	ItemPtr			aNewItem = NULL;
	TTValue			hk, attributeToStore;
	TTUInt8			i;
	
	Clear();
	
	// DEBUG : store only Value of Data objects
	// TODO : pass this as argument of the Fill method
	// TODO : how to filter message Data for example ?
	mToStore->append(TT("Data"), TTValue(kTTSym_Value));
	mToStore->append(TT("Container"), TTValue(kTTSym_Priority));
	
	mToStore->getKeys(hk);
	for (i=0; i<mToStore->getSize(); i++) {
		
		hk.get(i,(TTSymbolPtr*)&objectToStore);
		
		// 1. Look for all Objects under the address into the directory
		mDirectory->Lookup(mAddress, aNodeList, &aNode);
		mDirectory->LookFor(&aNodeList, testNodeObjectType, objectToStore, allObjectNodes, &aNode);
		
		// 2. Make an Item for each found object and store it at relativeAddress key.
		for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
			
			allObjectNodes.current().get(0, (TTPtr*)&aNode);
			aNode->getOscAddress(&aRelativeAddress, mAddress);
			aNewItem = new Item(aNode);
			mItemList->append(aRelativeAddress, TTValue((TTPtr)aNewItem));
		}
	}
	
	Update();
	
	return kTTErrNone;
}

TTErr TTPreset::Clear()
{
	ItemPtr			oldItem;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	delete mToStore;
	mToStore = NULL;
	mToStore = new TTHash();
	
	mItemList->getKeys(hk);
	for (i=0; i<mItemList->getSize(); i++) {
		hk.get(i,(TTSymbolPtr*)&key);
		mItemList->lookup(key, v);
		v.get(0, (TTPtr*)&oldItem);
		
		delete oldItem;
	}
	
	delete mItemList;
	mItemList = NULL;
	mItemList = new TTHash();
	mCurrentItem = kTTSymEmpty;
	
	return kTTErrNone;
}

TTErr TTPreset::Update()
{
	ItemPtr			anItem;
	TTValue			hk, hsk, v, a, attributeToStore;
	TTSymbolPtr		key, skey;
	TTUInt8			i, j;
	TTErr			err;
	
	// for each item
	mItemList->getKeys(hk);
	for (i=0; i<mItemList->getSize(); i++) {
		
		hk.get(i,(TTSymbolPtr*)&key);
		mItemList->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		mToStore->lookup(anItem->object->getName(), attributeToStore);
		
		// get state
		anItem->state->clear();
		for (j=0; j<attributeToStore.getSize(); j++) {
			attributeToStore.get(j, &skey);
			
			err = anItem->object->getAttributeValue(skey, a);
			
			if (!err) {
				
				// Don't store kTTValNONE
				if (a == kTTValNONE)
					continue;
				anItem->state->append(skey, a);
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTPreset::Send()
{
	ItemPtr			anItem;
	TTValue			hk, hsk, v, a;
	TTSymbolPtr		key, skey;
	TTUInt8			i, j;
	
	mItemList->getKeys(hk);
	for (i=0; i<mItemList->getSize(); i++) {
		
		hk.get(i,(TTSymbolPtr*)&key);
		mItemList->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		anItem->state->getKeys(hsk);
		for (j=0; j<anItem->state->getSize(); j++) {
			hsk.get(j,(TTSymbolPtr*)&skey);
			anItem->state->lookup(skey, a);
			
			// Don't send kTTValNONE
			if (a == kTTValNONE)
				continue;
					
			anItem->object->setAttributeValue(skey, a);
		}
	}
		return kTTErrNone;
}

TTErr TTPreset::writeAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	ItemPtr				anItem;
	TTValue				hk, hsk, v, a;
	TTSymbolPtr			key, skey;
	TTString			aString;
	TTUInt8				i, j;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	
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
	
	return kTTErrNone;
}

TTErr TTPreset::readFromXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTSymbolPtr			absAddress, attributeName;
	ItemPtr				anItem;
	TTNodePtr			aNode;
	TTValue				v, attributeToStore;
	TTUInt8				i;
	TTErr				err;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
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
				
				joinOSCAddress(mAddress, mCurrentItem, &absAddress);
				err = mDirectory->getTTNodeForOSC(absAddress, &aNode);
				
				// if the address exist
				if (!err) {
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
	}
		
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif


