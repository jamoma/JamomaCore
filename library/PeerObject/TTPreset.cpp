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
Item::Item(TTParameterPtr p, const TTValue& v, const TTValue& e)
{
	parameter = p;
	value = v;
	extra = e;
}

Item::~Item(){;}

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
	TTList			aNodeList, allParametersNodes;
	TTSymbolPtr		aRelativeAddress;
	ItemPtr			aNewItem = NULL;
	TTValue			v;
	TTErr			err = kTTErrNone;
	
	Clear();
	
	// 1. Look for all Parameters under the address into the directory
	err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
	err = mDirectory->LookFor(&aNodeList, testObjectType, TT("Parameter"), allParametersNodes, &aNode);
	
	// 2. Make an Item for each found parameter and store it at relativeAddress key.
	for (allParametersNodes.begin(); allParametersNodes.end(); allParametersNodes.next()) {
		
		allParametersNodes.current().get(0, (TTPtr*)&aNode);
		
		makeRelativeAddress(aNode, &aRelativeAddress);
		err = makeItem(aNode, &aNewItem);
		
		if (!err)
			mItemList->append(aRelativeAddress, TTValue((TTPtr)aNewItem));
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
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	TTErr			err;
	
	mItemList->getKeys(hk);
	for (i=0; i<mItemList->getSize(); i++) {
		
		hk.get(i,(TTSymbolPtr*)&key);
		mItemList->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		anItem->value.clear();
		err = anItem->parameter->getAttributeValue(kTTSym_Value, anItem->value);
	}
	
	return kTTErrNone;
}

TTErr TTPreset::Send()
{
	ItemPtr			anItem;
	TTValue			hk, v, r, address;
	TTSymbolPtr		key;
	TTUInt8			i;
	TTErr			err;
	
	mItemList->getKeys(hk);
	for (i=0; i<mItemList->getSize(); i++) {
		
		hk.get(i,(TTSymbolPtr*)&key);
		mItemList->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		// Don't send kTTValNONE
		if (anItem->value == kTTValNONE)
			continue;
		
		err = anItem->parameter->setAttributeValue(kTTSym_Value, anItem->value);
		
	}
		return kTTErrNone;
}

TTErr TTPreset::writeAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	ItemPtr				anItem;
	TTValue				hk, v;
	TTSymbolPtr			key;
	TTString			aString;
	TTUInt8				i;
	
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
		
		// don't write kTTValNONE
		if (anItem->value == kTTValNONE)
			continue;
		
		// Start an Item
		xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "item");
		
		// Write address attribute
		xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST key->getCString());
		
		// Write the value
		v = anItem->value;
		v.toString();
		v.get(0, aString);
		xmlTextWriterWriteString(aXmlHandler->mWriter, BAD_CAST aString.data());
		
		// to -- we don't need to write type and priority attribute anymore
		// because the fromSting() method automatically parse the type 
		// while reading and each parameter are sorted by order of priority (TODO)
		
		// maybe we could add extra data like : ramp time, unit, ... ?
		
		// Close Item
		xmlTextWriterEndElement(aXmlHandler->mWriter);
	}
	
	return kTTErrNone;
}

TTErr TTPreset::readFromXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTSymbolPtr			absAddress;
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
		// do nothing
		return kTTErrNone;
	}
	
	// Comment Node
	if (aXmlHandler->mXmlNodeName == TT("#comment"))
		return kTTErrNone;
	
	// Item node
	if (aXmlHandler->mXmlNodeName == TT("item")) {
		
		// get address
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "address") == 1) {
			
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
			if (v.getType() == kTypeSymbol) {
				v.get(0, &mCurrentItem);
				
				// if the item doesn't exist create it 
				if (mItemList->lookup(mCurrentItem, v)) {
					makeAbsoluteAddress(mCurrentItem, &absAddress);
					mDirectory->getTTNodeForOSC(absAddress, &aNode);
					makeItem(aNode, &anItem);
					mItemList->append(mCurrentItem, TTValue((TTPtr)anItem));
				}
			}
		}
		
		// TODO : fill other options
		return kTTErrNone;
	}
	
	// Text node (e.g. the value)
	if (aXmlHandler->mXmlNodeName == TT("#text")) {
		
		// look for the current item
		if (!mItemList->lookup(mCurrentItem, v)) {
			v.get(0, (TTPtr*)&anItem);
			
			// read value
			err = aXmlHandler->fromXmlChar(xmlTextReaderConstValue(aXmlHandler->mReader), anItem->value);
			
			// if parsing error on the value, remove item
			if (err) {
				delete anItem;
				mItemList->remove(mCurrentItem);
				mCurrentItem = kTTSymEmpty;
			}
		}
		// if no CurrentItem do nothing
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTPreset::makeAbsoluteAddress(TTSymbolPtr relativeAddress, TTSymbolPtr *returnedAbsoluteAddress)
{
	TTString tmp;
	
	if (mAddress != S_SEPARATOR) {
		tmp = mAddress->getCString();
		tmp += relativeAddress->getCString();
	}
	else
		tmp = relativeAddress->getCString();
	
	*returnedAbsoluteAddress = TT(tmp.data());
	
	return kTTErrNone;
}

TTErr TTPreset::makeRelativeAddress(TTNodePtr aNode, TTSymbolPtr *returnedRelativeAddress)
{
	TTSymbolPtr		anAddress, returnedPart1;
	TTString		addSlash;
	TTUInt8			nbSeparator;
	
	if (mAddress == S_SEPARATOR)
		nbSeparator = 0;
	else
		nbSeparator = countSeparator(mAddress);
	
	aNode->getOscAddress(&anAddress);
	splitAtOSCAddress(anAddress, nbSeparator, &returnedPart1, returnedRelativeAddress);
	addSlash = C_SEPARATOR;
	addSlash += (*returnedRelativeAddress)->getCString();
	*returnedRelativeAddress = TT(addSlash.data());
	
	return kTTErrNone;	
}

TTErr TTPreset::makeItem(TTNodePtr aNode, ItemPtr *returnedItem)
{
	TTValue			v;
	TTSymbolPtr		type;
	TTParameterPtr	aParameter;
	
	// Get parameter
	aNode->getAttributeValue(kTTSym_Object, v);
	v.get(0, (TTPtr*)&aParameter);
	
	// Check type
	v.clear();
	aParameter->getAttributeValue(kTTSym_Type, v);
	v.get(0, &type);
	if (type == kTypeNone)
		return kTTErrGeneric;
	
	// Create an empty item which bind on the parameter
	*returnedItem = new Item(aParameter, kTTValNONE, kTTValNONE);
	
	return kTTErrNone;	
}


#if 0
#pragma mark -
#pragma mark Some Methods
#endif


