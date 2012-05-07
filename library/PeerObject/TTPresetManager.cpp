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
mNames(kTTValNONE),
mCurrent(kTTSymEmpty),
mPresets(NULL),
mCurrentPreset(NULL)
{
	TTValue v;
	
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addAttributeWithSetter(Names, kTypeLocalValue);
	
	addAttribute(Current, kTypeSymbol);
	addAttributeProperty(Current, readOnly, YES);
	
	addAttribute(Presets, kTypePointer);
	addAttributeProperty(Presets, readOnly, YES);
	addAttributeProperty(Presets, hidden, YES);
	
	addMessage(New);
	
	addMessageWithArguments(Store);
	addMessageWithArguments(Recall);
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
	TTSymbolPtr presetName;
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
	New();
	
	value.get(0, &mAddress);
	
	return kTTErrNone;
}

TTErr TTPresetManager::setNames(const TTValue& value)
{	
	TTSymbolPtr name;
	TTValue		v, newNames;
	
	// check if each name is part of the list
	for (TTUInt32 i=0; i<value.getSize(); i++) {
		
		value.get(i, &name);
		
		if (!mPresets->lookup(name, v))
			newNames.append(name);
	}
	
	// if the newNames size is equal to the current name list 
	if (newNames.getSize() != mNames.getSize())
		return kTTErrGeneric;

	mNames = newNames;
	return kTTErrNone;
}

TTErr TTPresetManager::New()
{
	TTPresetPtr oldPreset;
	TTSymbolPtr presetName;
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
		mNames = kTTValNONE;
		
		notifyNamesObservers();
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
		TTObjectInstantiate(TT("Preset"), TTObjectHandle(&mCurrentPreset), kTTValNONE);
	
		mCurrentPreset->setAttributeValue(kTTSym_address, mAddress);
		mCurrentPreset->setAttributeValue(kTTSym_name, mCurrent);
		
		// Append the new preset
		v = TTValue((TTPtr)mCurrentPreset);
		mPresets->append(mCurrent, v);
		mNames.append(mCurrent);
		
		notifyNamesObservers();
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
}

TTErr TTPresetManager::Remove(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbolPtr name;
	TTValue		v, newNames;
	
	// get preset name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, &mCurrent);
	
	// if preset exists
	if (!mPresets->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentPreset);
		TTObjectRelease(TTObjectHandle(&mCurrentPreset));
		mPresets->remove(mCurrent);
		
		// remove the name without changing the order
		for (TTUInt32 i=0; i<mNames.getSize(); i++) {
			
			mNames.get(i, &name);
			
			if (name != mCurrent)
				newNames.append(name);
		}
		
		mCurrentPreset = NULL;
		mCurrent = kTTSymEmpty;
		mNames = newNames;
		
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbolPtr			presetName;
    TTValue				v;
	TTUInt32			i;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	for (i = 0; i < mNames.getSize(); i++) {
		
		mNames.get(i, &presetName);
		if (!mPresets->lookup(presetName, v)) {
		
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TT("Write"));
		}
	}
    	
	return kTTErrNone;
}

TTErr TTPresetManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTSymbolPtr		flagName;
	TTPresetPtr		aPreset;
	TTValue			v;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// Switch on the name of the XML node
	
	// Starts file reading : clear the preset list
	if (aXmlHandler->mXmlNodeName == kTTSym_start) {
		New();
		return kTTErrNone;
	}
	
	// Ends file reading : bind on first preset
	if (aXmlHandler->mXmlNodeName == kTTSym_stop) {
		
		mNames.get(0, &mCurrent);
		if (!mPresets->lookup(mCurrent, v))
			v.get(0, (TTPtr*)&mCurrentPreset);
		
		notifyNamesObservers();
		
		return kTTErrNone;
	}

	// Flag node :
	if (aXmlHandler->mXmlNodeName == kTTSym_flag) {
		
		// Get flag name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v)) {
			
			if (v.getType() == kTypeSymbol) {
				
				v.get(0, &flagName);
				
				// if it is a preset flag
				if (flagName == TT("preset")) {
					
					// get preset name
					aXmlHandler->mXmlNodeValue.get(0, &mCurrent);
					
					// Create a new preset
					mCurrentPreset = NULL;
					TTObjectInstantiate(TT("Preset"), TTObjectHandle(&mCurrentPreset), kTTValNONE);
					
					mCurrentPreset->setAttributeValue(kTTSym_address, mAddress);
					mCurrentPreset->setAttributeValue(kTTSym_name, mCurrent);
					
					v = TTValue((TTPtr)mCurrentPreset);
					mPresets->append(mCurrent, v);
					mNames.append(mCurrent);
				}
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
	TTSymbolPtr presetName;
	TTValue		v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	buffer = aTextHandler->mWriter;
	
	for (TTUInt32 i = 0; i < mNames.getSize(); i++) {
		
		mNames.get(i, &presetName);
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
	TTSymbolPtr		flagName;
	TTValue			v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	// if it is the first line :
	if (aTextHandler->mFirstLine)
		New();
	
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
					TTObjectInstantiate(TT("Preset"), TTObjectHandle(&mCurrentPreset), kTTValNONE);
					
					mCurrentPreset->setAttributeValue(kTTSym_address, mAddress);
					mCurrentPreset->setAttributeValue(kTTSym_name, mCurrent);
					
					v = TTValue((TTPtr)mCurrentPreset);
					mPresets->append(mCurrent, v);
					mNames.append(mCurrent);
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
			
			mNames.get(0, &mCurrent);
			if (!mPresets->lookup(mCurrent, v))
				v.get(0, (TTPtr*)&mCurrentPreset);
			
			notifyNamesObservers();
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::notifyNamesObservers()
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(TT("names"), &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mNames);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif
