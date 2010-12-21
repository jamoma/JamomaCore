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
mToStore(NULL),
mItemList(NULL),
mItemKeysSorted(NULL),
mCurrentItem(kTTSymEmpty)
{
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTPreset is not NULL", mApplication);
	
	arguments.get(1, (TTPtr*)&mTestObjectCallback);
	TT_ASSERT("TestObjectCallback passed to TTPreset is not NULL", mTestObjectCallback);
	
	arguments.get(2, (TTPtr*)&mToStore);
	TT_ASSERT("ToStore passed to TTPreset is not NULL", mToStore);
	
	addAttribute(Name, kTypeSymbol);
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttribute(Comment, kTypeSymbol);
	addAttribute(Extra, kTypeNone);
	addAttribute(ItemList, kTypePointer);
	addAttributeProperty(itemList, readOnly, YES);
	
	addMessage(Fill);
	addMessage(Clear);
	addMessage(Update);
	addMessage(Send);
	
	addMessageWithArgument(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	addMessageWithArgument(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	mItemList = new TTHash();
	mItemKeysSorted = new TTList();
}

TTPreset::~TTPreset()
{
	Clear();
	delete mItemList;
	mItemList = NULL;
	
	delete mItemKeysSorted;
	mItemKeysSorted = NULL;
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
		mItemList->append(aRelativeAddress, TTValue((TTPtr)aNewItem));
	}
	
	// 3. Update item's state and sort them by priority
	Update();
	SortByPriority();
	
	return kTTErrNone;
}

TTErr TTPreset::Clear()
{
	ItemPtr			oldItem;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
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
	
	delete mItemKeysSorted;
	mItemKeysSorted = NULL;
	mItemKeysSorted = new TTList();
	
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

TTErr TTPreset::SortByPriority()
{
	ItemPtr			anItem;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i, nbItemToSort, nbItemSorted;
	TTInt32			p, priority;
	
	// clear the sorted list
	delete mItemKeysSorted;
	mItemKeysSorted = NULL;
	mItemKeysSorted = new TTList();
	
	// start by sorting item with priority to 1 
	// until all item with priority != 0 are sorted
	priority = 1;
	nbItemSorted = 0;
	nbItemToSort = mItemList->getSize();
	mItemList->getKeys(hk);
	while (nbItemSorted < nbItemToSort) {
		
		// for each item
		for (i=0; i<mItemList->getSize(); i++) {
			
			// sort item with priority to i
			hk.get(i,(TTSymbolPtr*)&key);
			p = getItemPriority(key, &anItem);
			if (p == priority) {
				mItemKeysSorted->append(new TTValue(key));
				nbItemSorted++;
			}
			
			// ignore item with priority to 0
			// (do it one time only, when sorting priority == 1)
			if (priority == 1 && p == 0)
				nbItemToSort--;
		}
		priority++;
	}
	
	// sort item with priority to 0
	for (i=0; i<mItemList->getSize(); i++) {
		hk.get(i,(TTSymbolPtr*)&key);
		p = getItemPriority(key, &anItem);
		if (p == 0) {
			mItemKeysSorted->append(new TTValue(key));
			nbItemSorted++;
		}
	}
	
	if (nbItemSorted == mItemList->getSize())
		return kTTErrNone;
	else
		return kTTErrGeneric;
}

TTInt32 TTPreset::getItemPriority(TTSymbolPtr relativeAddress, ItemPtr *anItem)
{
	TTValue v;
	TTInt32 priority;
	
	mItemList->lookup(relativeAddress, v);
	v.get(0, (TTPtr*)anItem);
	if (!(*anItem)->state->lookup(kTTSym_priority, v))
		v.get(0, priority);
	else
		priority = 0;
	
	return priority;
}

TTErr TTPreset::Send()
{
	ItemPtr			anItem;
	TTValue			hsk, v, a;
	TTSymbolPtr		key, skey;
	TTUInt8			j;
	
	for (mItemKeysSorted->begin(); mItemKeysSorted->end(); mItemKeysSorted->next()) {
		
		mItemKeysSorted->current().get(0, (TTSymbolPtr*)&key);
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
		mItemList->lookup(key, v);
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
	TTSymbolPtr			absAddress, convertedName, ttAttributeName;
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
						// Replace AppName by TTName (because object name can be customized in order to have a specific application's namespace)
						// TODO : ToTTName() on ttAttributeName
						v.get(0, &ttAttributeName);
						attributeToStore.append(ttAttributeName);
					}
				}
				mToStore->append(aXmlHandler->mXmlNodeName, attributeToStore);
			}
				
			// if the item doesn't exist create it 
			if (mItemList->lookup(mCurrentItem, v)) {
				
				if (mAddress != kTTSymEmpty) {
					joinOSCAddress(mAddress, mCurrentItem, &absAddress);
				} else {
					absAddress = mCurrentItem;
				}

				err = getDirectoryFrom(this)->getTTNodeForOSC(absAddress, &aNode);
				
				// if the address exist
				if (!err) {
					anItem = new Item(aNode);
					mItemList->append(mCurrentItem, TTValue((TTPtr)anItem));
					mItemKeysSorted->append(new TTValue(mCurrentItem));
					
					// fill the item
					for (i=0; i<attributeToStore.getSize(); i++) {
						attributeToStore.get(i, &ttAttributeName);
						
						convertedName = ttAttributeName;
						// Replace TTName by AppName (because object name can be customized in order to have a specific application's namespace)
						// TODO : ToAppName() on convertedName
						
						if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST convertedName->getCString()) == 1) {
							
							aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
							anItem->state->append(ttAttributeName, v);
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


