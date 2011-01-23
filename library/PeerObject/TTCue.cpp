/* 
 * A TTCue Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTCue.h"

#define thisTTClass			TTCue
#define thisTTClassName		"Cue"
#define thisTTClassTags		"cue"

TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mRamp(0),
mComment(kTTSymEmpty),
mAddresses(kTTValNONE),
mPresetArguments(kTTValNONE),
mPresetTable(NULL),
mCurrentPreset(kTTSymEmpty)
{
	TTValue v;
	
	mPresetArguments = arguments;
	mPresetArguments.append((TTPtr)this);	// append the preset manager object (here this cue) as argument
	
	addAttribute(Name, kTypeSymbol);
	addAttribute(Ramp, kTypeUInt32);
	addAttribute(Comment, kTypeSymbol);
	addAttributeWithSetter(Addresses, kTypeLocalValue);

	addAttribute(PresetTable, kTypePointer);
	addAttributeProperty(presetTable, readOnly, YES);
	
	addMessage(Fill);
	addMessage(Clear);
	addMessage(Update);
	addMessage(Send);
	
	addMessageWithArgument(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	addMessageWithArgument(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	mPresetTable = new TTHash();	
	mAddresses = TTValue(kTTSymEmpty);
}

TTCue::~TTCue()
{
	Clear();
	delete mPresetTable;
	mPresetTable = NULL;
	
	// DO NOT DESTROY CALLBACK BECAUSE THEY ARE SHARED WITH OTHER CUES
}

TTErr TTCue::setAddresses(const TTValue& value)
{	
	Clear();
	mAddresses = value;
	return kTTErrNone;
}

TTErr TTCue::Fill()
{	
	TTPresetPtr		newPreset;
	TTValue			v;
	TTSymbolPtr		address;
	TTUInt8			i;
	
	for (i=0; i<mAddresses.getSize(); i++) {
		if (mAddresses.getType(i) == kTypeSymbol) {
			
			newPreset = NULL;
			TTObjectInstantiate(TT("Preset"), TTObjectHandle(&newPreset), mPresetArguments);
			
			mAddresses.get(i, &address);
			newPreset->setAttributeValue(kTTSym_address, address);
			newPreset->setAttributeValue(kTTSym_name, mName);
			newPreset->sendMessage(kTTSym_Fill);
			
			mPresetTable->append(address, TTValue((TTPtr)newPreset));
		}
	}
	
	return kTTErrNone;
}

TTErr TTCue::Clear()
{	
	TTPresetPtr		oldPreset;
	TTValue			v;
	TTSymbolPtr		key;
	TTUInt8			i;
	TTErr			err;
	
	for (i=0; i<mAddresses.getSize(); i++) {
		mAddresses.get(i,(TTSymbolPtr*)&key);
		err = mPresetTable->lookup(key, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&oldPreset);
			
			if (oldPreset)
				if (oldPreset->valid)
					TTObjectRelease(TTObjectHandle(&oldPreset));
		}
	}
	
	delete mPresetTable;
	mPresetTable = NULL;
	mPresetTable = new TTHash();
	
	mAddresses = TTValue(kTTSymEmpty);
	mCurrentPreset = kTTSymEmpty;
	
	return kTTErrNone;	
}

TTErr TTCue::Update()
{
	TTPresetPtr		aPreset;
	TTValue			v;
	TTSymbolPtr		key;
	TTUInt8			i;
	TTErr			err;
	
	for (i=0; i<mAddresses.getSize(); i++) {
		mAddresses.get(i,(TTSymbolPtr*)&key);
		err = mPresetTable->lookup(key, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&aPreset);
			
			if (aPreset)
				aPreset->sendMessage(TT("Update"));
		}
	}
	
	return kTTErrNone;
}

TTErr TTCue::Send()
{
	TTPresetPtr		aPreset;
	TTValue			v;
	TTSymbolPtr		key;
	TTUInt8			i;
	TTErr			err;
	
	for (i=0; i<mAddresses.getSize(); i++) {
		mAddresses.get(i,(TTSymbolPtr*)&key);
		err = mPresetTable->lookup(key, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&aPreset);
		
			if (aPreset)
				aPreset->sendMessage(TT("Send"));
		}
	}
	
	return kTTErrNone;
}

TTErr TTCue::WriteAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTPresetPtr			aPreset;
	TTValue				v;
	TTSymbolPtr			key;
	TTString			aString;
	TTUInt8				i;
	TTErr				err;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	
	// Write name attribute
	xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST mName->getCString());
	
	// Write ramp attribute
	if (mRamp)
		xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "ramp", "%ld", BAD_CAST mRamp);
	else
		xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "ramp", "0", BAD_CAST mRamp);
	
	// Write comment attribute
	xmlTextWriterWriteFormatComment(aXmlHandler->mWriter, "%s", BAD_CAST mComment->getCString());
	
	// Write Presets
	for (i=0; i<mAddresses.getSize();  i++) {
		
		mAddresses.get(i, (TTSymbolPtr*)&key);
		err = mPresetTable->lookup(key, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&aPreset);
		
			if (aPreset) {
				xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "preset");
				xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "address", "%s", BAD_CAST key->getCString());
		
				v = TTValue(TTPtr(aPreset));
				aXmlHandler->setAttributeValue(kTTSym_object, v);
				aXmlHandler->sendMessage(TT("Write"));
		
				// End a preset
				xmlTextWriterEndElement(aXmlHandler->mWriter);
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTSymbolPtr			presetAddress;
	TTPresetPtr			newPreset;
	TTValue				v;
	
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
	
	// Preset node
	if (aXmlHandler->mXmlNodeName == TT("preset")) {
				
		// get address
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "address") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v, true);
			if (v.getType() == kTypeSymbol)
				v.get(0, &presetAddress);
		}
		
		// Is it the beginning of a new preset or the end of one ?
		if (presetAddress == mCurrentPreset)
			return kTTErrNone;
		
		// Create a new preset
		newPreset = NULL;
		TTObjectInstantiate(TT("Preset"), TTObjectHandle(&newPreset), mPresetArguments);
		
		newPreset->setAttributeValue(kTTSym_address, presetAddress);
		newPreset->setAttributeValue(kTTSym_name, mName);
		
		mPresetTable->append(presetAddress, TTValue((TTPtr)newPreset));
		
		mAddresses.append(presetAddress);
		mCurrentPreset = presetAddress;
		
		return kTTErrNone;
	}
	
	// if there is a current preset
	if (mCurrentPreset == kTTSymEmpty)
		return kTTErrGeneric;
	
	// fill the current preset by reading his content 
	// from the xml file using the XmlHandler
	mPresetTable->lookup(mCurrentPreset, v);
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	return aXmlHandler->sendMessage(TT("Read"));
}

TTErr TTCue::WriteAsText(const TTValue& value)
{
	TTTextHandlerPtr aTextHandler;
	ofstream		*file;
	
	value.get(0, (TTPtr*)&aTextHandler);
	file = aTextHandler->mWriter;
	
	*file << "TTCue::WriteAsText -- TODO";
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromText(const TTValue& value)
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


