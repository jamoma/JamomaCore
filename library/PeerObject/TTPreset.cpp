/* 
 * A Preset Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPreset.h"

#define thisTTClass			TTPreset
#define thisTTClassName		"Preset"
#define thisTTClassTags		"preset"

// Item CONSTRUCTOR / DESTRUCTOR
Item::Item(TTNodePtr aNode)
{
	// Get object
	object = aNode->getObject();

	// Prepare an empty state
	state = new TTHash();
}

Item::~Item()
{
	delete state;
}

TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mAddress(kTTSymEmpty),
mComment(kTTSymEmpty),
mExtra(kTTValNONE),
mApplication(NULL),
mTestObjectCallback(NULL),
mUpdateItemCallback(NULL),
mSortItemCallback(NULL),
mSendItemCallback(NULL),
mItemTable(NULL),
mItemKeysSorted(NULL),
mCurrentItem(kTTSymEmpty)
{
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTPreset is not NULL", mApplication);
	
	arguments.get(1, (TTPtr*)&mTestObjectCallback);
	TT_ASSERT("TestObjectCallback passed to TTPreset is not NULL", mTestObjectCallback);
	
	arguments.get(2, (TTPtr*)&mUpdateItemCallback);
	TT_ASSERT("UpdateItemCallback passed to TTPreset is not NULL", mUpdateItemCallback);
	
	arguments.get(3, (TTPtr*)&mSortItemCallback);
	TT_ASSERT("SortItemCallback passed to TTPreset is not NULL", mSortItemCallback);
	
	arguments.get(4, (TTPtr*)&mSendItemCallback);
	TT_ASSERT("SendItemCallback passed to TTPreset is not NULL", mSendItemCallback);
	
	addAttribute(Name, kTypeSymbol);
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttribute(Comment, kTypeSymbol);
	addAttribute(Extra, kTypeNone);
	addAttribute(ItemTable, kTypePointer);
	addAttributeProperty(itemTable, readOnly, YES);
	
	addMessage(Fill);
	addMessage(Clear);
	addMessage(Update);
	addMessage(Sort);
	addMessage(Send);
	
	addMessageWithArgument(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	addMessageWithArgument(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	mItemTable = new TTHash();
	mItemKeysSorted = new TTList();
}

TTPreset::~TTPreset()
{
	Clear();
	delete mItemTable;
	mItemTable = NULL;
	
	delete mItemKeysSorted;
	mItemKeysSorted = NULL;
	
	// DO NOT DESTROY CALLBACK BECAUSE THEY ARE SHARED WITH OTHER PRESETS
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
	TTSymbolPtr		aRelativeAddress;
	ItemPtr			aNewItem = NULL;
	TTValue			hk, attributeToStore;
	
	Clear();
		
	// 1. Look for all Objects under the address into the directory
	getDirectoryFrom(this)->Lookup(mAddress, aNodeList, &aNode);
	getDirectoryFrom(this)->LookFor(&aNodeList, testNodeUsingCallback, (TTPtr)mTestObjectCallback, allObjectNodes, &aNode);
	
	// 2. Make an Item for each found object and store it at relativeAddress key.
	for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
		
		allObjectNodes.current().get(0, (TTPtr*)&aNode);
		aNode->getOscAddress(&aRelativeAddress, mAddress);
		aNewItem = new Item(aNode);
		mItemTable->append(aRelativeAddress, TTValue((TTPtr)aNewItem));
		mItemKeysSorted->append(new TTValue(aRelativeAddress));
	}
	
	// 3. Update item's state
	Update();
	
	// 4. Sort item using the list of keys
	Sort();
	
	return kTTErrNone;
}

TTErr TTPreset::Clear()
{
	ItemPtr			oldItem;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	mItemTable->getKeys(hk);
	for (i=0; i<mItemTable->getSize(); i++) {
		hk.get(i,(TTSymbolPtr*)&key);
		mItemTable->lookup(key, v);
		v.get(0, (TTPtr*)&oldItem);
		
		delete oldItem;
	}
	
	delete mItemTable;
	mItemTable = NULL;
	mItemTable = new TTHash();
	
	delete mItemKeysSorted;
	mItemKeysSorted = NULL;
	mItemKeysSorted = new TTList();
	
	mCurrentItem = kTTSymEmpty;
	
	return kTTErrNone;
}

TTErr TTPreset::Update()
{
	ItemPtr			anItem;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	// for each item
	mItemTable->getKeys(hk);
	for (i=0; i<mItemTable->getSize(); i++) {
		
		hk.get(i,(TTSymbolPtr*)&key);
		mItemTable->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		mUpdateItemCallback->notify(v);
	}
	
	return kTTErrNone;
}

TTErr TTPreset::Sort()
{
	TTValue v;
	
	// get the table of item to sort
	v.append((TTPtr)this->mItemTable);
	mSortItemCallback->notify(v);
	
	// get the list of sorted keys
	v.get(0, (TTPtr*)&mItemKeysSorted);
	
	return kTTErrNone;
}

TTErr TTPreset::Send()
{
	ItemPtr			anItem;
	TTValue			v;
	TTSymbolPtr		key;
	
	for (mItemKeysSorted->begin(); mItemKeysSorted->end(); mItemKeysSorted->next()) {
		
		mItemKeysSorted->current().get(0, (TTSymbolPtr*)&key);
		mItemTable->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		mSendItemCallback->notify(v);
	}
	return kTTErrNone;
}

TTErr TTPreset::WriteAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	ItemPtr				anItem;
	TTValue				hsk, v, a, c;
	TTSymbolPtr			key, skey;
	TTString			aString;
	TTUInt8				j;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	
	// Write name attribute
	xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST mName->getCString());
	
	// Write comment attribute
	xmlTextWriterWriteFormatComment(aXmlHandler->mWriter, "%s", BAD_CAST mComment->getCString());
	
	// Write Items
	for (mItemKeysSorted->begin(); mItemKeysSorted->end(); mItemKeysSorted->next()) {
		
		mItemKeysSorted->current().get(0, (TTSymbolPtr*)&key);
		mItemTable->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		// Start an Item by the type of his object
		// Replace TTName by AppName (because object name can be customized in order to have a specific application's namespace)
		// TODO : ToAppName() on object name
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
			
			// Replace TTName by AppName (because object name can be customized in order to have a specific application's namespace)
			// TODO : ToAppName() on skey
			
			a.toString();
			a.get(0, aString);
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST skey->getCString(), BAD_CAST aString.data());
		}
		
		// to -- we don't need to write type and priority attribute anymore
		// because the fromString() method automatically parse the type while reading
		// and each item are sorted by order of priority (TODO)
		
		// maybe we could add extra data like : ramp time, unit, ... ?
		
		// Close Item
		xmlTextWriterEndElement(aXmlHandler->mWriter);
	}
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTSymbolPtr			absAddress, ttAttributeName;
	ItemPtr				anItem;
	TTNodePtr			aNode;
	TTValue				v;
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
				
			// if the item doesn't exist create it 
			if (mItemTable->lookup(mCurrentItem, v)) {
				
				if (mAddress != kTTSymEmpty) {
					joinOSCAddress(mAddress, mCurrentItem, &absAddress);
				} else {
					absAddress = mCurrentItem;
				}

				err = getDirectoryFrom(this)->getTTNodeForOSC(absAddress, &aNode);
				
				// if the address exist
				if (!err) {
					anItem = new Item(aNode);
					mItemTable->append(mCurrentItem, TTValue((TTPtr)anItem));
					mItemKeysSorted->append(new TTValue(mCurrentItem));
					
					// fill the item
					while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {
						
						// Get attribute name
						aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
						if (v.getType() == kTypeSymbol) {
							// Replace AppName by TTName (because object name can be customized in order to have a specific application's namespace)
							// TODO : ToTTName() on ttAttributeName
							v.get(0, &ttAttributeName);
							
							// Replace TTName by AppName (because object name can be customized in order to have a specific application's namespace)
							// TODO : ToAppName() on convertedName
							
							if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST ttAttributeName->getCString()) == 1) {
								
								aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
								anItem->state->append(ttAttributeName, v);
							}
						}
					}
				}
				
				// if the address doesn't exist
				else {
					;// TODO : observe his creation and send it data
				}
			}
		}
	}
		
	return kTTErrNone;
}

TTErr TTPreset::WriteAsText(const TTValue& value)
{
	TTTextHandlerPtr aTextHandler;
	ofstream		*file;
	
	value.get(0, (TTPtr*)&aTextHandler);
	file = aTextHandler->mWriter;
	
	*file << "TTPreset::WriteAsText -- TODO";
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromText(const TTValue& value)
{
	TTTextHandlerPtr aTextHandler;
	ifstream		*file;
	
	value.get(0, (TTPtr*)&aTextHandler);
	file = aTextHandler->mReader;
	
	// TODO
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif


