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
Item::Item(TTObjectPtr aManager, TTNodeAddressPtr anAddress)
{
	// Set manager
	manager = aManager;
	
	// Set node
	address = anAddress;
	
	// Set type
	type = kTTSymEmpty;

	// Prepare an empty state
	state = new TTHash();
}

Item::~Item()
{
	delete state;
}

TTObjectPtr	Item::getObject()
{
	TTNodeDirectoryPtr	d;
	TTNodePtr			n;
	TTObjectPtr			o;
	TTErr				err;
	
	d = getDirectoryFrom(address);
	if (d) {
		
		err = d->getTTNode(address, &n);
		
		if (!err) {
			
			o = n->getObject();
			if (o)
				type = o->getName();
			
			return o;
		}
	}
	
	return NULL;
}

TTErr Item::clear()
{
	return state->clear();
}

TTErr Item::update(TTSymbolPtr attributeName)
{
	TTObjectPtr o;
	TTValue v;
	
	if (!(o = getObject()))
		return kTTErrGeneric;
	
	if (o->getAttributeValue(attributeName, v))
		return kTTErrGeneric;
	
	if (v == kTTValNONE)
		return kTTErrGeneric;
	
	return state->append(attributeName, v);
}

TTErr Item::set(TTSymbolPtr attributeName, const TTValue& value)
{
	return state->append(attributeName, value);
}

TTErr Item::get(TTSymbolPtr attributeName, TTValue& value)
{
	return state->lookup(attributeName, value);
}

TTErr Item::send(TTSymbolPtr attributeName)
{
	TTObjectPtr o;
	TTValue v;
	
	if (!(o = getObject()))
		return kTTErrGeneric;
	
	if (state->lookup(attributeName, v))
		return kTTErrGeneric;
	
	if (v == kTTValNONE)
		return kTTErrGeneric;
	
	return o->setAttributeValue(attributeName, v);
}

TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mAddress(kTTAdrsEmpty),
mComment(kTTSymEmpty),
mDirectory(NULL),
mManager(NULL),
mTestObjectCallback(NULL),
mReadItemCallback(NULL),
mUpdateItemCallback(NULL),
mSortItemCallback(NULL),
mSendItemCallback(NULL),
mItemTable(NULL),
mItemKeysSorted(NULL),
mCurrentItem(kTTSymEmpty)
{
	arguments.get(0, (TTPtr*)&mTestObjectCallback);
	TT_ASSERT("TestObjectCallback passed to TTPreset is not NULL", mTestObjectCallback);
	
	arguments.get(1, (TTPtr*)&mReadItemCallback);
	TT_ASSERT("ReadItemCallback passed to TTPreset is not NULL", mReadItemCallback);
	
	arguments.get(2, (TTPtr*)&mUpdateItemCallback);
	TT_ASSERT("UpdateItemCallback passed to TTPreset is not NULL", mUpdateItemCallback);
	
	arguments.get(3, (TTPtr*)&mSortItemCallback);
	TT_ASSERT("SortItemCallback passed to TTPreset is not NULL", mSortItemCallback);
	
	arguments.get(4, (TTPtr*)&mSendItemCallback);
	TT_ASSERT("SendItemCallback passed to TTPreset is not NULL", mSendItemCallback);
	
	arguments.get(5, (TTPtr*)&mManager);
	TT_ASSERT("Manager passed to TTPreset is not NULL", mManager);
	
	addAttribute(Name, kTypeSymbol);
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttribute(Comment, kTypeSymbol);
	addAttribute(ItemTable, kTypePointer);
	addAttributeProperty(ItemTable, readOnly, YES);
	
	addMessage(Fill);
	addMessage(Clear);
	addMessage(Update);
	addMessage(Sort);
	addMessage(Send);
	
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	addMessageWithArguments(ReadFromXml);
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
	value.get(0, &mAddress);
	
	mDirectory = getDirectoryFrom(mAddress);
	
	if (mDirectory)
		return kTTErrNone;
	else
		return kTTErrGeneric; // else wait for directory or not ?
}

TTErr TTPreset::Fill()
{
	TTNodePtr		aNode;
	TTList			aNodeList, allObjectNodes;
	TTObjectPtr		anObject;
	TTNodeAddressPtr anAddress, aRelativeAddress;
	ItemPtr			aNewItem = NULL;
	TTValue			hk, attributeToStore, e;
	TTBoolean		enabled;					
	
	Clear();
	
	if (mDirectory) {
		
		// 1. Look for all Objects under the address into the directory
		mDirectory->Lookup(mAddress, aNodeList, &aNode);
		mDirectory->LookFor(&aNodeList, testNodeUsingCallback, (TTPtr)mTestObjectCallback, allObjectNodes, &aNode);
		
		// 2. Make an Item for each found object and store it at relativeAddress key.
		for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
			
			allObjectNodes.current().get(0, (TTPtr*)&aNode);
			
			// get absolute address for the Item
			aNode->getAddress(&anAddress);
			aNewItem = new Item(mManager, anAddress);
			
			
			anObject = aNode->getObject();
			if (anObject->getName() == TT("Data")) {
				
				anObject->getAttributeValue(kTTSym_enable, e);
				e.get(0, enabled);

				if (enabled) {
				
					// get relative address to store it
					aNode->getAddress(&aRelativeAddress, mAddress);
					mItemTable->append(aRelativeAddress, TTValue((TTPtr)aNewItem));
					mItemKeysSorted->appendUnique(aRelativeAddress);
				}
			}	
		}
		
		// 3. Update item's state
		Update();
		
		// 4. Sort item using the list of keys
		Sort();
		
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
		
}

TTErr TTPreset::Clear()
{
	ItemPtr			oldItem;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt32		i;
	
	mItemTable->getKeys(hk);
	for (i=0; i<mItemTable->getSize(); i++) {
		hk.get(i, &key);
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
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt32		i;
	
	if (mDirectory) {
		
		// for each item
		mItemTable->getKeys(hk);
		for (i=0; i<mItemTable->getSize(); i++) {
			
			hk.get(i, &key);
			mItemTable->lookup(key, v);
			
			mUpdateItemCallback->notify(v, kTTValNONE);
		}
		
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTErr TTPreset::Sort()
{
	TTValue v;
	
	if (mDirectory) {
		
		// get the table of item to sort
		v.append((TTPtr)this->mItemTable);
		mSortItemCallback->notify(v, kTTValNONE);
		
		// get the list of sorted keys
		v.get(0, (TTPtr*)&mItemKeysSorted);
		
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTErr TTPreset::Send()
{
	TTValue			v;
	TTSymbolPtr		key;
	
	if (mDirectory) {
		
		for (mItemKeysSorted->begin(); mItemKeysSorted->end(); mItemKeysSorted->next()) {
			
			mItemKeysSorted->current().get(0, &key);
			mItemTable->lookup(key, v);
			
			mSendItemCallback->notify(v, kTTValNONE);
		}
		
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTErr TTPreset::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	ItemPtr				anItem;
	TTValue				hsk, v, a, c;
	TTSymbolPtr			key, skey;
	TTString			aString;
	TTUInt32			j;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	// Write name attribute
	xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST mName->getCString());
	
	// Write comment attribute
	xmlTextWriterWriteFormatComment(aXmlHandler->mWriter, "%s", BAD_CAST mComment->getCString());
	
	// Write Items
	for (mItemKeysSorted->begin(); mItemKeysSorted->end(); mItemKeysSorted->next()) {
		
		mItemKeysSorted->current().get(0, &key);
		mItemTable->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		// Start an Item by the type of his object
		// Replace TTName by AppName (because object name can be customized in order to have a specific application's namespace)
		// TODO : ToAppName() on object name
		if (anItem->type != kTTSymEmpty) {
			
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST anItem->type->getCString());
			
			// Write address attribute
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST key->getCString());
			
			// Write the state
			anItem->state->getKeys(hsk);
			for (j=0; j<anItem->state->getSize(); j++) {
				hsk.get(j, &skey);
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
	}
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTNodeAddressPtr	absoluteAddress;
	TTSymbolPtr			ttAttributeName;
	ItemPtr				anItem;
	TTValue				v;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
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

	// Any other nodes : only create items

	// Get address attribute
	if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "address") == 1) {
			
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &mCurrentItem);
			
			// if the item doesn't exist create it 
			if (mItemTable->lookup(mCurrentItem, v)) {
				
				absoluteAddress = mAddress->appendAddress(TTADRS(mCurrentItem->getCString()));
				
				anItem = new Item(mManager, absoluteAddress);
				anItem->type = aXmlHandler->mXmlNodeName;
				
				mItemTable->append(mCurrentItem, TTValue((TTPtr)anItem));
				mItemKeysSorted->append(mCurrentItem);
				
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
				
				// call the read item callback to allow specific application process
				mItemTable->lookup(mCurrentItem, v);
				mReadItemCallback->notify(v, kTTValNONE);
			}
		}
	}
		
	return kTTErrNone;
}

TTErr TTPreset::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	ofstream		*file;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	file = aTextHandler->mWriter;
	
	*file << "TTPreset::WriteAsText -- TODO";
	
	return kTTErrNone;
}

TTErr TTPreset::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	//ifstream		*file;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	//file = aTextHandler->mReader;
	
	// TODO
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif


