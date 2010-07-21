/* 
 * A TTHarvester Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTHarvester.h"

#define thisTTClass			TTHarvester
#define thisTTClassName		"Harvester"
#define thisTTClassTags		"harvester"

TT_MODULAR_CONSTRUCTOR,
mAddress(kTTSymEmpty),
mDirectory(NULL),
mCurrentPreset(NULL)
{
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTHarvester is not NULL", mDirectory);
	
	if(arguments.getSize() == 3) {
		arguments.get(1, (TTPtr*)&mReturnAddressCallback);
		arguments.get(2, (TTPtr*)&mReturnValueCallback);
	}
	
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addMessage(New);
	
	addMessage(StoreCurrent);
	addMessageWithArgument(StoreNext);
	addMessageWithArgument(StorePrevious);
	addMessageWithArgument(StoreAt);
	
	addMessage(RecallCurrent);
	addMessage(RecallNext);
	addMessage(RecallPrevious);
	addMessageWithArgument(RecallAt);
	
	addMessageWithArgument(read);
	addMessageWithArgument(write);
	
	mPresetHash = new TTHash();
	mCurrentPreset = kTTSymEmpty;
	mCurrentItem = kTTSymEmpty;
}

TTHarvester::~TTHarvester()
{;}

TTErr TTHarvester::setAddress(const TTValue& value)
{	
	clearCurrentPreset();
	mAddress = value;
	return kTTErrNone;
}

TTErr TTHarvester::New()
{
	PresetPtr		aPreset;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	if (mPresetHash) {
		
		mPresetHash->getKeys(hk);
		
		for (i=0; i<mPresetHash->getSize(); i++) {
			
			hk.get(i,(TTSymbolPtr*)&key);
			mPresetHash->lookup(key, v);
			v.get(0, (TTPtr*)&aPreset);
			
			mCurrentPreset = key;
			clearCurrentPreset();
		}
		
		delete mPresetHash;
	}
	
	mPresetHash = new TTHash();
	mCurrentPreset = kTTSymEmpty;
	
	return kTTErrNone;
}


TTErr TTHarvester::StoreCurrent()
{
	// if there no current preset
	if (mCurrentPreset == kTTSymEmpty)
		return kTTErrGeneric;
		
	// else clear and update current preset
	clearCurrentPreset();
	fillCurrentPreset();
	
	return kTTErrGeneric;
}

TTErr TTHarvester::StoreNext(const TTValue& value)
{
	TTSymbolPtr	presetName = kTTSymEmpty;
	PresetPtr	newPreset, currentPreset;
	TTValue		v;
	TTErr		err;
	
	value.get(0, &presetName);
	if (presetName == kTTSymEmpty)
		return kTTErrGeneric;
	
	// if there no current preset : append
	if (mCurrentPreset == kTTSymEmpty)
		makePreset(mPresetHash->getSize()+1, &newPreset);

	// else get the current preset and insert new one after
	else {
		err = mPresetHash->lookup(mCurrentPreset, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&currentPreset);
			makePreset(currentPreset->number+1, &newPreset);
		}
	}
	
	mPresetHash->append(presetName, TTValue((TTPtr)newPreset));
	mCurrentPreset = presetName;
	
	fillCurrentPreset();
	
	return kTTErrNone;
}

TTErr TTHarvester::StorePrevious(const TTValue& value)
{
	TTSymbolPtr	presetName = kTTSymEmpty;
	PresetPtr	newPreset, currentPreset;
	TTValue		v;
	TTErr		err;
	
	value.get(0, &presetName);
	if (presetName == kTTSymEmpty)
		return kTTErrGeneric;
	
	// if there no current preset : append
	if (mCurrentPreset == kTTSymEmpty)
		makePreset(mPresetHash->getSize()+1, &newPreset);
	
	// else get the current preset and insert new one after
	else {
		err = mPresetHash->lookup(mCurrentPreset, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&currentPreset);
			makePreset(currentPreset->number-1, &newPreset);
		}
	}
	
	mPresetHash->append(presetName, TTValue((TTPtr)newPreset));
	mCurrentPreset = presetName;
	
	fillCurrentPreset();
	
	return kTTErrNone;
}

TTErr TTHarvester::StoreAt(const TTValue& value)
{
	// TODO
	return kTTErrGeneric;
}

TTErr TTHarvester::RecallCurrent()
{
	// TODO : select current preset
	sendCurrentPreset();
	return kTTErrGeneric;
}

TTErr TTHarvester::RecallNext()
{
	// TODO : select current preset
	sendCurrentPreset();
	return kTTErrGeneric;
}

TTErr TTHarvester::RecallPrevious()
{
	// TODO : select current preset
	sendCurrentPreset();
	return kTTErrGeneric;
}

TTErr TTHarvester::RecallAt(const TTValue& value)
{
	// TODO : select current preset
	sendCurrentPreset();
	return kTTErrGeneric;
}

TTErr TTHarvester::read(const TTValue& value)
{
	TTSymbolPtr			filePath;
	xmlTextReaderPtr	reader = NULL;
	int					ret;
	
	// First argument is the *absolute* file path
	value.get(0, &filePath);

	// Init the xml library
	LIBXML_TEST_VERSION
	
	// Clear all Presets
	New();
	
	// Parse the file
	reader = xmlReaderForFile(filePath->getCString(), NULL, 0);
	if (reader != NULL) {
		ret = xmlTextReaderRead(reader);
		while (ret == 1) {
			readXmlNode(reader);
			ret = xmlTextReaderRead(reader);
		}
		xmlFreeTextReader(reader);
		
	}
	return kTTErrGeneric;
	
    return kTTErrNone;
}

TTErr TTHarvester::write(const TTValue& value)
{
	TTSymbolPtr			filePath;
    xmlTextWriterPtr	writer;
    xmlChar				*tmp;
	int					ret, i;
	TTString			aString;
	
	// First argument is the *absolute* file path
	value.get(0, &filePath);
	
	// Init the xml library
	LIBXML_TEST_VERSION
	
    // Create a new XmlWriter for filePath, with no compression.
    writer = xmlNewTextWriterFilename(filePath->getCString(), 0);
	if (writer == NULL) {
		TT_ASSERT("testXmlwriterFilename: Error creating the xml writer\n", true);
		return kTTErrGeneric;
	}
		
	/* Start the document with the xml default for the version,
	* encoding ISO 8859-1 and the default for the standalone
	* declaration. */
	ret = xmlTextWriterStartDocument(writer, NULL, TTMODULAR_XML_ENCODING, "yes");
	if (ret < 0) {
		TT_ASSERT("testXmlwriterFilename: Error at xmlTextWriterStartDocument\n", true);
		return kTTErrGeneric;
	}
		
    // Start Header information about the Harvester
    xmlTextWriterStartElement(writer, BAD_CAST "jamoma");
    xmlTextWriterWriteAttribute(writer, BAD_CAST "version",  BAD_CAST "0.6");
	xmlTextWriterWriteAttribute(writer, BAD_CAST "xmlns:xsi", BAD_CAST "'http://www.w3.org/2001/XMLSchema-instance'");
	xmlTextWriterWriteAttribute(writer, BAD_CAST "xsi:schemaLocation", BAD_CAST "'http://jamoma.org/ file:jamoma.xsd'");

	
    tmp = ConvertInput("TODO : TTContainer Description at mAddress", TTMODULAR_XML_ENCODING);
    xmlTextWriterWriteComment(writer, tmp);
    if (tmp != NULL) xmlFree(tmp);
	
	// Check if current preset exists
	i = 1;
	setCurrentPreset(i);
	while (mCurrentPreset != kTTSymEmpty) {
		writeCurrentPreset(writer);
		i++;
		setCurrentPreset(i);
	}
    	
	// End Header information about the Harvester
    xmlTextWriterEndElement(writer);
	
    /* Here we could close the elements ORDER and EXAMPLE using the
     * function xmlTextWriterEndElement, but since we do not want to
     * write any other elements, we simply call xmlTextWriterEndDocument,
     * which will do all the work. */
    xmlTextWriterEndDocument(writer);
	
    xmlFreeTextWriter(writer);
	
	return kTTErrNone;
}

TTErr TTHarvester::fillCurrentPreset()
{
	TTNodePtr		aNode;
	TTList			aNodeList, allParametersNodes;
	TTSymbolPtr		aRelativeAddress;
	ItemPtr			aNewItem = NULL;
	TTValue			v;
	TTErr			err = kTTErrNone;
	
	// Check if current preset exists
	if (mCurrentPreset == kTTSymEmpty)
		return kTTErrGeneric;
	
	mCurrentItem = kTTSymEmpty;
	
	// 1. Look for all Parameters under the address into the directory
	err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
	err = mDirectory->LookFor(&aNodeList, testObjectType, TT("Parameter"), allParametersNodes, &aNode);
	
	// 2. Make Item at relativeAddress in the current preset
	for (allParametersNodes.begin(); allParametersNodes.end(); allParametersNodes.next()) {
		
		allParametersNodes.current().get(0, (TTPtr*)&aNode);
		
		makeRelativeAddress(aNode, &aRelativeAddress);
		err = makeItem(aNode, &aNewItem);
		
		if (!err)
			getCurrentPreset()->itemList->append(aRelativeAddress, TTValue((TTPtr)aNewItem));
	}
	
	// 3. Update the current preset
	updateCurrentPreset();
	
	return kTTErrNone;
}

TTErr TTHarvester::clearCurrentPreset()
{
	PresetPtr		currentPreset;
	ItemPtr			oldItem;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	// Check if current preset exists
	if (mCurrentPreset == kTTSymEmpty)
		return kTTErrGeneric;
	
	currentPreset = getCurrentPreset();
	
	currentPreset->itemList->getKeys(hk);
	
	for (i=0; i<currentPreset->itemList->getSize(); i++) {
		
		hk.get(i,(TTSymbolPtr*)&key);
		currentPreset->itemList->lookup(key, v);
		v.get(0, (TTPtr*)&oldItem);
		
		delete oldItem;
	}
	
	delete currentPreset->itemList;
	delete currentPreset;
	
	mCurrentItem = kTTSymEmpty;
	
	return kTTErrNone;
}

TTErr TTHarvester::updateCurrentPreset()
{
	PresetPtr		currentPreset;
	ItemPtr			anItem;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	TTErr			err;
	
	// Check if current preset exists
	if (mCurrentPreset == kTTSymEmpty)
		return kTTErrGeneric;
	
	currentPreset = getCurrentPreset();
	
	currentPreset->itemList->getKeys(hk);
	
	for (i=0; i<currentPreset->itemList->getSize(); i++) {
		
		hk.get(i,(TTSymbolPtr*)&key);
		currentPreset->itemList->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		anItem->value.clear();
		err = anItem->parameter->getAttributeValue(kTTSym_Value, anItem->value);
		
	}
	
	return kTTErrNone;
}

TTErr TTHarvester::sendCurrentPreset()
{
	PresetPtr		currentPreset;
	ItemPtr			anItem;
	TTValue			hk, v, r, address;
	TTSymbolPtr		key;
	TTUInt8			i;
	TTErr			err;
	
	// Check if current preset exists
	if (mCurrentPreset == kTTSymEmpty)
		return kTTErrGeneric;
	
	currentPreset = getCurrentPreset();
	
	currentPreset->itemList->getKeys(hk);
	
	for (i=0; i<currentPreset->itemList->getSize(); i++) {
		
		hk.get(i,(TTSymbolPtr*)&key);
		currentPreset->itemList->lookup(key, v);
		v.get(0, (TTPtr*)&anItem);
		
		// Don't send kTTValNONE
		if (anItem->value == kTTValNONE)
			continue;
		
		err = anItem->parameter->setAttributeValue(kTTSym_Value, anItem->value);
		
		if (!err && mReturnValueCallback && mReturnAddressCallback) {
			
			// return the relative address out
			address = TTValue(key);
			mReturnAddressCallback->notify(address);
			
			// return the value out
			r = anItem->value;
			mReturnValueCallback->notify(r);
		}
	}
	
	return kTTErrNone;
}

TTErr TTHarvester::writeCurrentPreset(xmlTextWriterPtr writer)
{
	PresetPtr			currentPreset;
	ItemPtr				anItem;
	TTValue				hk, v;
	TTSymbolPtr			key;
	TTString			aString;
	xmlChar				*tmp;
	TTUInt8				i;
		
	// Check if current preset exists
	if (mCurrentPreset == kTTSymEmpty)
		return kTTErrGeneric;
	
	currentPreset = getCurrentPreset();
	
	xmlTextWriterStartElement(writer, BAD_CAST "preset");
	xmlTextWriterWriteFormatAttribute(writer, BAD_CAST "number", "%ld", BAD_CAST currentPreset->number);
	xmlTextWriterWriteAttribute(writer, BAD_CAST "name", BAD_CAST mCurrentPreset->getCString());
	
	// Write a comment for this preset
	tmp = ConvertInput("hello2", TTMODULAR_XML_ENCODING);
	xmlTextWriterWriteFormatComment(writer, "TODO : comment for the preset", tmp);
	if (tmp != NULL) xmlFree(tmp);
	
	currentPreset->itemList->getKeys(hk);
	
	for (i=0; i<currentPreset->itemList->getSize(); i++) {
				
				hk.get(i,(TTSymbolPtr*)&key);
				currentPreset->itemList->lookup(key, v);
				v.get(0, (TTPtr*)&anItem);
				
				// don't write kTTValNONE
				if (anItem->value == kTTValNONE)
					continue;
				
				// Start an Item
				xmlTextWriterStartElement(writer, BAD_CAST "item");
				
				// Write address attribute
				xmlTextWriterWriteAttribute(writer, BAD_CAST "address", BAD_CAST key->getCString());
				
				// Write the value
				v = anItem->value;
				v.toString();
				v.get(0, aString);
				xmlTextWriterWriteString(writer, BAD_CAST aString.data());
				
				// to -- we don't need to write type and priority attribute anymore
				// because the fromSting() method automatically parse the type 
				// while reading and each parameter are sorted by order of priority (TODO)
				
				// maybe we could add extra data like : ramp time, unit, ... ?
				
				// Close Item
				xmlTextWriterEndElement(writer);
	}
	
	// End a preset
	xmlTextWriterEndElement(writer);
	
	return kTTErrNone;
}

TTErr TTHarvester::makePreset(TTUInt8 number, PresetPtr *returnedPreset)
{
	// Create an empty preset
	*returnedPreset = (PresetPtr)malloc(sizeof(Preset));
	(*returnedPreset)->number = number;
	(*returnedPreset)->itemList = new TTHash();
	(*returnedPreset)->extra = kTTValNONE;
	
	return kTTErrNone;
}

TTErr TTHarvester::makeItem(TTNodePtr aNode, ItemPtr *returnedItem)
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
	*returnedItem = (ItemPtr)malloc(sizeof(Item));
	(*returnedItem)->parameter = aParameter;
	(*returnedItem)->value = kTTValNONE;
	(*returnedItem)->extra = kTTValNONE;
	
	return kTTErrNone;	
}


TTErr TTHarvester::makeAbsoluteAddress(TTSymbolPtr relativeAddress, TTSymbolPtr *returnedAbsoluteAddress)
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

TTErr TTHarvester::makeRelativeAddress(TTNodePtr aNode, TTSymbolPtr *returnedRelativeAddress)
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

void TTHarvester::readXmlNode(xmlTextReaderPtr reader)
{
	const xmlChar	*_name = 0, 
					*_value = 0;
	TTSymbolPtr		aSymbol, presetName, absAddress;
	TTUInt8			presetNumber;
	PresetPtr		newPreset, currentPreset;
	ItemPtr			anItem;
	TTString		aValueCString, intCString;
	TTValue			aValue, intValue;
	TTNodePtr		aNode;
	TTValue			v;
	
	// Get the name of the XML node
    _name = xmlTextReaderName(reader);
    if (_name == NULL)
        return;
	aSymbol = TT((char*)_name);
	
	// Switch on the name of the XML node
	
	// Header node
	if (aSymbol == TT("jamoma")) {
		
		goto out;
	}
	
	// Preset node
	if (aSymbol == TT("preset")) {
		
		// get number
		if (xmlTextReaderMoveToNextAttribute(reader) == 1) {
			intCString = TTString((char*)_value);
			intValue = intCString;
			intValue.fromString();
			intValue.get(0, presetNumber);
			
			// get name
			if (xmlTextReaderMoveToNextAttribute(reader) == 1) {
				presetName = TT((char*)xmlTextReaderValue(reader));
				
				// append a new preset
				makePreset(presetNumber, &newPreset);
				mPresetHash->append(presetName, TTValue((TTPtr)newPreset));
				mCurrentPreset = presetName;
			}
		}
		
		goto out;
	}
	
	// From here check if current preset exists
	if (mCurrentPreset == kTTSymEmpty)
		goto out;
	
	currentPreset = getCurrentPreset();
	
	// Item node
	if (aSymbol == TT("item")) {
		
		// get address to set as currentItem
		if (xmlTextReaderMoveToNextAttribute(reader) == 1) {
			mCurrentItem = TT((char*)xmlTextReaderValue(reader));
			
			// look for the current item or create it
			if (!currentPreset->itemList->lookup(mCurrentItem, v))
				v.get(0, (TTPtr*)&anItem);
			else {
				makeAbsoluteAddress(mCurrentItem, &absAddress);
				mDirectory->getTTNodeForOSC(absAddress, &aNode);
				makeItem(aNode, &anItem);
				currentPreset->itemList->append(mCurrentItem, TTValue((TTPtr)anItem));
			}
		}
		
		// TODO : fill other options
		if (xmlTextReaderMoveToNextAttribute(reader) == 1)
			;
	
		goto out;
	}
	
	// Text node (e.g. the value)
	if (aSymbol == TT("#text")) {
		
		// look for the current item
		if (!currentPreset->itemList->lookup(mCurrentItem, v)) {
			v.get(0, (TTPtr*)&anItem);
			
			// read text or fill item with none value
			if (_value = xmlTextReaderConstValue(reader)) {
				aValueCString = TTString((char*)_value);
				anItem->value = aValueCString;
				anItem->value.fromString();
			}
			// don't store the item
			else {
				currentPreset->itemList->remove(mCurrentItem);
				mCurrentItem = kTTSymEmpty;
			}
		}
		// if no CurrentItem do nothing

		goto out;
	}

	// Comment Node
	if (aSymbol == TT("#comment")) {
		
		goto out;
	}
	
out:
    xmlFree((void*)_name);
	
    if (_value != NULL) {
        xmlFree((void*)_value);
    }
	
}

PresetPtr TTHarvester::getCurrentPreset()
{
	TTValue		v;
	PresetPtr	currentPreset;
	TTErr		err;
	
	if (mCurrentPreset == kTTSymEmpty)
		return NULL;
	
	err = mPresetHash->lookup(mCurrentPreset, v);
	
	if (!err)
		v.get(0, (TTPtr*)&currentPreset);
	else
		return NULL;
	
	return currentPreset;
}

void TTHarvester::setCurrentPreset(TTUInt8 number)
{
	PresetPtr		aPreset;
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;

	mCurrentPreset = kTTSymEmpty;
	
	if (mPresetHash) {
		
		mPresetHash->getKeys(hk);
		
		for (i=0; i<mPresetHash->getSize(); i++) {
			
			hk.get(i,(TTSymbolPtr*)&key);
			mPresetHash->lookup(key, v);
			v.get(0, (TTPtr*)&aPreset);
			
			if (aPreset->number == number)
				mCurrentPreset = key;
		}
	}
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

/**
 * ConvertInput:
 * @in: string in a given encoding
 * @encoding: the encoding used
 *
 * Converts @in into UTF-8 for processing with libxml2 APIs
 *
 * Returns the converted UTF-8 string, or NULL in case of error.
 */
xmlChar *ConvertInput(const char *in, const char *encoding)
{
    xmlChar *out;
    int ret;
    int size;
    int out_size;
    int temp;
    xmlCharEncodingHandlerPtr handler;
	
    if (in == 0)
        return 0;
	
    handler = xmlFindCharEncodingHandler(encoding);
	
    if (!handler) {
        printf("ConvertInput: no encoding handler found for '%s'\n", encoding ? encoding : "");
        return 0;
    }
	
    size = (int) strlen(in) + 1;
    out_size = size * 2 - 1;
    out = (unsigned char *) xmlMalloc((size_t) out_size);
	
    if (out != 0) {
        temp = size - 1;
        ret = handler->input(out, &out_size, (const xmlChar *) in, &temp);
        if ((ret < 0) || (temp - size + 1)) {
            if (ret < 0) {
                printf("ConvertInput: conversion wasn't successful.\n");
            } else {
                printf("ConvertInput: conversion wasn't successful. converted: %i octets.\n", temp);
            }
			
            xmlFree(out);
            out = 0;
        } else {
            out = (unsigned char *) xmlRealloc(out, out_size + 1);
            out[out_size] = 0;  /*null terminating out */
        }
    } else {
        printf("ConvertInput: no mem\n");
    }
	
    return out;
}
