/* 
 * A Namespace Explorer Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTExplorer.h"

#define thisTTClass			TTExplorer
#define thisTTClassName		"Explorer"
#define thisTTClassTags		"explorer"

TT_MODULAR_CONSTRUCTOR,
mDirectory(NULL)
{
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTPreset is not NULL", mDirectory);
}

TTExplorer::~TTExplorer()
{;}


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


