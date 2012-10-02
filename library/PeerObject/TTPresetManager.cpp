/* 
 * A TTPresetManager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPresetManager.h"

#define thisTTClass			TTPresetManager
#define thisTTClassName		"PresetManager"
#define thisTTClassTags		"preset, manager"

TT_MODULAR_CONSTRUCTOR,
mAddress(kTTAdrsEmpty),
mOrder(kTTValNONE),
mCurrent(kTTSymEmpty),
mPresets(NULL),
mCurrentPreset(NULL)
{
	TTValue v;
	
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addAttributeWithSetter(Order, kTypeLocalValue);
	
	addAttribute(Current, kTypeSymbol);
	addAttributeProperty(Current, readOnly, YES);
	
	addAttribute(Presets, kTypePointer);
	addAttributeProperty(Presets, readOnly, YES);
	addAttributeProperty(Presets, hidden, YES);
	
	addMessage(Clear);
	
	addMessageWithArguments(Store);
	addMessageWithArguments(Recall);
	addMessageWithArguments(Interpolate);
	addMessageWithArguments(Mix);
	addMessageWithArguments(Remove);

	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	addMessageWithArguments(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	// needed to be handled by a TTTextHandler
	addMessageWithArguments(WriteAsText);
	addMessageProperty(WriteAsText, hidden, YES);
	addMessageWithArguments(ReadFromText);
	addMessageProperty(ReadFromText, hidden, YES);
	
	mPresets = new TTHash();
}

TTPresetManager::~TTPresetManager()
{
	TTPresetPtr oldPreset;
	TTSymbol presetName;
	TTValue		v, names;
	TTUInt32	i;
	
	mPresets->getKeys(names);
	for (i = 0; i < names.getSize(); i++) {
		names.get(i, &presetName);
		mPresets->lookup(presetName, v);
		v.get(0, (TTPtr*)&oldPreset);
		TTObjectRelease(TTObjectHandle(&oldPreset));
	}
	
	delete mPresets;
	mPresets = NULL;
}

TTErr TTPresetManager::setAddress(const TTValue& value)
{	
	Clear();
	
	value.get(0, &mAddress);
	
	return kTTErrNone;
}

TTErr TTPresetManager::setOrder(const TTValue& value)
{	
	TTSymbol name;
	TTValue		v, newOrder;
	
	// check if each name is part of the list
	for (TTUInt32 i=0; i<value.getSize(); i++) {
		
		value.get(i, &name);
		
		if (!mPresets->lookup(name, v))
			newOrder.append(name);
	}
	
	// if the newOrder size is equal to the current name list 
	if (newOrder.getSize() != mOrder.getSize())
		return kTTErrGeneric;

	mOrder = newOrder;
	return kTTErrNone;
}

TTErr TTPresetManager::Clear()
{
	TTPresetPtr oldPreset;
	TTSymbol presetName;
	TTValue		v, names;
	TTUInt32	i;
	
	mPresets->getKeys(names);
	if (names.getSize()) {
		
		for (i = 0; i < names.getSize(); i++) {
			
			names.get(i, &presetName);
			mPresets->lookup(presetName, v);
			v.get(0, (TTPtr*)&oldPreset);
			TTObjectRelease(TTObjectHandle(&oldPreset));
		}
		
		delete mPresets;
		mPresets = new TTHash();
		mCurrentPreset = NULL;
		mCurrent = kTTSymEmpty;
		mOrder = kTTValNONE;
		
		notifyOrderObservers();
	}
	
	return kTTErrNone;
}

TTErr TTPresetManager::Store(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue v;
	
	// get preset name
	if (inputValue.getType(0) == kTypeSymbol)
		inputValue.get(0, &mCurrent);
	
	if (mCurrent == kTTSymEmpty)
		return kTTErrGeneric;
	
	// don't create two presets with the same name
	if (mPresets->lookup(mCurrent, v)) {
		
		// Create a new preset
		mCurrentPreset = NULL;
		TTObjectInstantiate(kTTSym_Preset, TTObjectHandle(&mCurrentPreset), kTTValNONE);
	
		mCurrentPreset->setAttributeValue(kTTSym_address, mAddress);
		mCurrentPreset->setAttributeValue(kTTSym_name, mCurrent);
		
		// Append the new preset
		v = TTValue((TTPtr)mCurrentPreset);
		mPresets->append(mCurrent, v);
		mOrder.append(mCurrent);
		
		notifyOrderObservers();
	}
	else {
		v.get(0, (TTPtr*)&mCurrentPreset);
		mCurrentPreset->sendMessage(TT("Clear"));
	}
	
	mCurrentPreset->sendMessage(TT("Store"));
	
	return kTTErrNone;
}

TTErr TTPresetManager::Recall(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v;
	
	// get preset name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, &mCurrent);
	
	// if preset exists
	if (!mPresets->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentPreset);
		
		if (mCurrentPreset)
			return mCurrentPreset->sendMessage(TT("Recall"));
	}
	
	return kTTErrGeneric;
}


TTErr TTPresetManager::Interpolate(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v1, v2;
	TTSymbol name1, name2;
	TTPresetPtr preset1, preset2;
	TTFloat32	position;
	
	// get presets name
	if (inputValue.getSize() == 3) {
		
		if (inputValue.getType(0) == kTypeSymbol && inputValue.getType(1) == kTypeSymbol && inputValue.getType(2) == kTypeFloat32) {
			
			inputValue.get(0, &name1);
			inputValue.get(1, &name2);
			inputValue.get(2, position);
			
			// if presets exist
			if (!mPresets->lookup(name1, v1) && !mPresets->lookup(name2, v2)) {
				
				v1.get(0, (TTPtr*)&preset1);
				v2.get(0, (TTPtr*)&preset2);
				
				if (preset1 && preset2)
					return TTPresetInterpolate(preset1, preset2, position);
			}
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::Mix(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i, mixSize;
	TTSymbol name;
	TTPresetPtr preset;
	TTValue		v, presets, factors;
	
	mixSize = inputValue.getSize() / 2;
	if (inputValue.getSize() != mixSize * 2)
		return kTTErrGeneric;
	
	for (i = 0; i < mixSize * 2; i = i+2) {
		
		if (inputValue.getType(i) == kTypeSymbol && inputValue.getType(i+1) == kTypeFloat32) {
			
			inputValue.get(i, &name);
			
			// if preset exist
			if (!mPresets->lookup(name, v)) {
				
				v.get(0, (TTPtr*)&preset);
				
				if (preset) {
					presets.append((TTPtr)preset);
					factors.append((TTFloat64)inputValue.getFloat32(i+1));
				}
			}
		}
	}
	
	return TTPresetMix(presets, factors);
}

TTErr TTPresetManager::Remove(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol name;
	TTValue		v, newOrder;
	
	// get preset name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, &mCurrent);
	
	// if preset exists
	if (!mPresets->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentPreset);
		TTObjectRelease(TTObjectHandle(&mCurrentPreset));
		mPresets->remove(mCurrent);
		
		// remove the name without changing the order
		for (TTUInt32 i=0; i<mOrder.getSize(); i++) {
			
			mOrder.get(i, &name);
			
			if (name != mCurrent)
				newOrder.append(name);
		}
		
		mCurrentPreset = NULL;
		mCurrent = kTTSymEmpty;
		mOrder = newOrder;
		
		notifyOrderObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbol			presetName;
    TTValue				v;
	TTUInt32			i;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	for (i = 0; i < mOrder.getSize(); i++) {
		
		mOrder.get(i, &presetName);
		if (!mPresets->lookup(presetName, v)) {
			
			// start to write a preset
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "preset");
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST presetName->getCString());
			
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TT("Write"));
			
			// end to write a preset
			xmlTextWriterEndElement(aXmlHandler->mWriter);
		}
	}
    	
	return kTTErrNone;
}

TTErr TTPresetManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTSymbol		flagName;
	TTValue			v;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// Switch on the name of the XML node
	
	// Starts file reading : clear the preset list
	if (aXmlHandler->mXmlNodeName == kTTSym_start) {
		Clear();
		return kTTErrNone;
	}
	
	// Ends file reading : bind on first preset
	if (aXmlHandler->mXmlNodeName == kTTSym_stop) {
		
		mOrder.get(0, &mCurrent);
		if (!mPresets->lookup(mCurrent, v))
			v.get(0, (TTPtr*)&mCurrentPreset);
		
		notifyOrderObservers();
		
		return kTTErrNone;
	}

	// Preset node :
	if (aXmlHandler->mXmlNodeName == TT("preset")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// Get preset name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
			
			if (v.getType() == kTypeSymbol) {
				
				v.get(0, &mCurrent);
				
				// Create a new preset
				mCurrentPreset = NULL;
				TTObjectInstantiate(kTTSym_Preset, TTObjectHandle(&mCurrentPreset), kTTValNONE);
				
				mCurrentPreset->setAttributeValue(kTTSym_address, mAddress);
				mCurrentPreset->setAttributeValue(kTTSym_name, mCurrent);
				
				v = TTValue((TTPtr)mCurrentPreset);
				mPresets->append(mCurrent, v);
				mOrder.append(mCurrent);
			}
			
			// go back to the element to allow the preset to parse it
			xmlTextReaderMoveToElement(aXmlHandler->mReader);
		}
	}
	
	// edit the current preset from the xml file using the XmlHandler
	if (mCurrentPreset) {
		
		v = TTValue(TTPtr(mCurrentPreset));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		return aXmlHandler->sendMessage(TT("Read"));
	}
	else
		return kTTErrGeneric;
}

TTErr TTPresetManager::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTString	*buffer;
	TTSymbol presetName;
	TTValue		v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	buffer = aTextHandler->mWriter;
	
	for (TTUInt32 i = 0; i < mOrder.getSize(); i++) {
		
		mOrder.get(i, &presetName);
		if (!mPresets->lookup(presetName, v)) {
			
			*buffer += "\n";
			
			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TT("Write"));
		}
	}
	
	return kTTErrNone;
}

TTErr TTPresetManager::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTDictionaryPtr	line;
	TTSymbol		flagName;
	TTValue			v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
	
	// parse the buffer line into TTDictionary
	line = TTScriptParseLine(*(aTextHandler->mLine));
	
	if (line) {
		
		// replace the buffer line value by the parsed line dictionary
		aTextHandler->mLine = new TTValue((TTPtr)line);
		
		// match preset flag line : # (preset) name
		if (line->getSchema() == kTTSym_flag) {
			
			line->lookup(kTTSym_name, v);
			v.get(0, &flagName);
			
			if (flagName == TT("preset")) {
				
				// get preset name
				if (!line->getValue(v)) {
					
					v.get(0, &mCurrent);
					
					// Create a new preset
					mCurrentPreset = NULL;
					TTObjectInstantiate(kTTSym_Preset, TTObjectHandle(&mCurrentPreset), kTTValNONE);
					
					mCurrentPreset->setAttributeValue(kTTSym_address, mAddress);
					mCurrentPreset->setAttributeValue(kTTSym_name, mCurrent);
					
					v = TTValue((TTPtr)mCurrentPreset);
					mPresets->append(mCurrent, v);
					mOrder.append(mCurrent);
				}
			}
		}
		
		// edit the current preset with the line
		if (mCurrentPreset) {
			
			v = TTValue(TTPtr(mCurrentPreset));
			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TT("Read"));
		}
		
		// if it is the last line : bind on the first preset
		if (aTextHandler->mLastLine) {
			
			mOrder.get(0, &mCurrent);
			if (!mPresets->lookup(mCurrent, v))
				v.get(0, (TTPtr*)&mCurrentPreset);
			
			notifyOrderObservers();
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::notifyOrderObservers()
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(kTTSym_order, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mOrder);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif
