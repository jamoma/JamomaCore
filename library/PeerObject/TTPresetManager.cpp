/* 
 * A TTPresetManager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPresetManager.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTPresetManager
#define thisTTClassName		"PresetManager"
#define thisTTClassTags		"preset, manager"

TT_MODULAR_CONSTRUCTOR,
mAddress(kTTAdrsEmpty),
mOrder(kTTValNONE),
mCurrent(kTTSymEmpty),
mCurrentPosition(0),
mPresets(NULL),
mCurrentPreset(NULL)
{
	TTValue v;
	
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addAttributeWithSetter(Order, kTypeLocalValue);
	
	addAttribute(Current, kTypeSymbol);
	addAttributeProperty(Current, readOnly, YES);
	
	addAttribute(CurrentPosition, kTypeInt32);
	addAttributeProperty(CurrentPosition, readOnly, YES);
	
	addAttribute(Presets, kTypePointer);
	addAttributeProperty(Presets, readOnly, YES);
	addAttributeProperty(Presets, hidden, YES);
	
	addMessage(Clear);
	
	addMessageWithArguments(Store);
    addMessageWithArguments(Prepare);
	addMessageWithArguments(Recall);
	addMessageWithArguments(Interpolate);
	addMessageWithArguments(Mix);
	addMessageWithArguments(Move);
	addMessageWithArguments(Remove);
	addMessageWithArguments(Rename);
	addMessageWithArguments(Copy);

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
	for (i = 0; i < names.size(); i++) {
		presetName = names[i];
		mPresets->lookup(presetName, v);
		oldPreset = TTPresetPtr((TTObjectPtr)v[0]);
		TTObjectRelease(TTObjectHandle(&oldPreset));
	}
	
	delete mPresets;
	mPresets = NULL;
}

TTErr TTPresetManager::setAddress(const TTValue& value)
{	
	Clear();
	
	mAddress = value[0];
	
	return kTTErrNone;
}

TTErr TTPresetManager::setOrder(const TTValue& value)
{	
	TTSymbol name;
	TTValue		v, newOrder;
	
	// check if each name is part of the list
	for (TTUInt32 i = 0; i < value.size(); i++) {
		
		name = value[i];
		
		if (!mPresets->lookup(name, v))
			newOrder.append(name);
	}
	
	// if the newOrder size is not equal to the current name list 
	if (newOrder.size() != mOrder.size())
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
	if (names.size()) {
		
		for (i = 0; i < names.size(); i++) {
			
			presetName = names[i];
			mPresets->lookup(presetName, v);
			oldPreset = TTPresetPtr((TTObjectPtr)v[0]);
			TTObjectRelease(TTObjectHandle(&oldPreset));
		}
		
		delete mPresets;
		mPresets = new TTHash();
		mCurrentPreset = NULL;
		mCurrent = kTTSymEmpty;
		mCurrentPosition = 0;
		mOrder = kTTValNONE;
		
		notifyOrderObservers();
	}
	
	return kTTErrNone;
}

TTErr TTPresetManager::Store(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue v;
	
	// get preset name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
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
		v = TTValue(mCurrentPreset);
		mPresets->append(mCurrent, v);
		mOrder.append(mCurrent);
		mCurrentPosition = mOrder.size();
		
		notifyOrderObservers();
	}
	else {
		mCurrentPreset = TTPresetPtr((TTObjectPtr)v[0]);
		mCurrentPreset->sendMessage(TTSymbol("Clear"));
	}
	
	mCurrentPreset->sendMessage(TTSymbol("Store"));
	
	return kTTErrNone;
}

TTErr TTPresetManager::Prepare(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue		v;
	
	// get preset name
	if (inputValue[0].type() == kTypeSymbol) {
		inputValue.get(0, mCurrent);
		
		TTSymbol name;
		for (TTInt32 i = 0; i < mOrder.size(); i++) {
			mOrder.get(i, name);
			if (name == mCurrent) {
				mCurrentPosition = i+1;
				break;
			}
		}
	}
	
	// get preset at position
	if (inputValue[0].type() == kTypeInt32) {
		inputValue.get(0, mCurrentPosition);
		mOrder.get(mCurrentPosition-1, mCurrent);
	}
	
	// if preset exists
	if (!mPresets->lookup(mCurrent, v)) {
		
		mCurrentPreset = TTPresetPtr((TTObjectPtr)v[0]);
		
		if (mCurrentPreset)
			return mCurrentPreset->sendMessage(TTSymbol("Prepare"));
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::Recall(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v;
	
	// get preset name
	if (inputValue[0].type() == kTypeSymbol) {
		mCurrent = inputValue[0];
		
		TTSymbol name;
		for (TTInt32 i = 0; i < mOrder.size(); i++) {
			name = mOrder[i];
			if (name == mCurrent) {
				mCurrentPosition = i+1;
				break;
			}
		}
	}
	
	// get preset at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
	
	// if preset exists
	if (!mPresets->lookup(mCurrent, v)) {
		
		mCurrentPreset = TTPresetPtr((TTObjectPtr)v[0]);
		
		if (mCurrentPreset)
			return mCurrentPreset->sendMessage(kTTSym_Recall);
	}
	
	return kTTErrGeneric;
}


TTErr TTPresetManager::Interpolate(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v1, v2;
    TTInt32     i1, i2;
	TTSymbol name1, name2;
	TTPresetPtr preset1, preset2;
	TTFloat32	position;
	
	if (inputValue.size() == 3) {
		
        // get presets by name
		if (inputValue[0].type() == kTypeSymbol && inputValue[1].type() == kTypeSymbol && inputValue[2].type() == kTypeFloat64) {
			
			name1 = inputValue[0] ;
			name2 = inputValue[1] ;
			position = inputValue[2] ;
        }
        
        // get presets by position
        else if (inputValue[0].type() == kTypeInt32 && inputValue[1].type() == kTypeInt32 && inputValue[2].type() == kTypeFloat64) {
            
            i1 = inputValue[0] ;
            name1 = mOrder[i1-1] ;
            
            inputValue.get(1, i2);
            name2 = mOrder[i2-1] ;
            
            position = inputValue[2] ;
        }
			
        // if presets exist
        if (!mPresets->lookup(name1, v1) && !mPresets->lookup(name2, v2)) {
            
            preset1 = TTPresetPtr((TTObjectPtr)v1[0]);
            preset2 = TTPresetPtr((TTObjectPtr)v2[0]);
            
            if (preset1 && preset2)
                return TTPresetInterpolate(preset1, preset2, position);
        }
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::Mix(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i, id, mixSize;
	TTSymbol name;
	TTPresetPtr preset;
	TTValue		v, presets, factors;
	
	mixSize = inputValue.size() / 2;
	if (inputValue.size() != mixSize * 2)
		return kTTErrGeneric;
	
	for (i = 0; i < mixSize * 2; i = i+2) {
		
		if (inputValue[i].type() == kTypeSymbol && inputValue[i+1].type() == kTypeFloat64) {
            
			name = inputValue[i] ;
        }
        else if (inputValue[i].type() == kTypeInt32 && inputValue[i+1].type() == kTypeFloat64) {
            
            id = inputValue[i] ;
            name = mOrder[id-1] ;
        }
			
        // if preset exist
        if (!mPresets->lookup(name, v)) {
            
            preset = TTPresetPtr((TTObjectPtr)v[0]);
            
            if (preset) {
                presets.append(preset);
                factors.append(TTFloat64(inputValue[i+1]));
            }
        }
	}
	
	return TTPresetMix(presets, factors);
}

TTErr TTPresetManager::Move(const TTValue& inputValue, TTValue& outputValue)
{
	TTList		temp;
	TTSymbol name;
	TTUInt32	i, newPosition;
	TTValue		v;
	
	if (inputValue.size() != 2)
		return kTTErrGeneric;
	
	// get preset name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
	// get preset at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
	
	// get new position
	if (inputValue[1].type() == kTypeInt32)
		newPosition = inputValue[1] ;
	
	if (newPosition < 1 || newPosition > mOrder.size())
		return kTTErrGeneric;
	
	// if preset exists
	if (!mPresets->lookup(mCurrent, v)) {
		
		mCurrentPreset = TTPresetPtr((TTObjectPtr)v[0]);
		
		// copy all the mOrder names into a TTList
		// except the mCurrent
		for (i = 0; i <  mOrder.size(); i++) {
			name = mOrder[i];
			
			if (name == mCurrent)
				continue;
			
			v = TTValue(name);
			temp.append(v);
		}
		
		// insert the mCurrent
		v = TTValue(mCurrent);
		temp.insert(newPosition-1, v);
		mOrder.clear();
		
		// copy the TTList names into a newOrder
		for (temp.begin(); temp.end(); temp.next()) {
			name = temp.current()[0];
			mOrder.append(name);
		}
		
		mCurrentPosition = newPosition;
		
		notifyOrderObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::Remove(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol name;
	TTValue		v, newOrder;
	
	// get preset name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
	// get preset at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
	
	// if preset exists
	if (!mPresets->lookup(mCurrent, v)) {
		
		mCurrentPreset = TTPresetPtr((TTObjectPtr)v[0]);
		TTObjectRelease(TTObjectHandle(&mCurrentPreset));
		mPresets->remove(mCurrent);
		
		// remove the name without changing the order
		for (TTUInt32 i = 0; i < mOrder.size(); i++) {
			
			name = mOrder[i];
			
			if (name != mCurrent)
				newOrder.append(name);
		}
		
		mCurrentPreset = NULL;
		mCurrent = kTTSymEmpty;
		mCurrentPosition = 0;
		mOrder = newOrder;
		
		notifyOrderObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::Rename(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol name, newName;
	TTUInt32	i;
	TTValue		v;
	
	if (inputValue.size() != 2)
		return kTTErrGeneric;
	
	// get preset name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
	// get preset at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
	
	// get new name
	if (inputValue[1].type() == kTypeSymbol)
		newName = inputValue[1] ;
	
	if (newName == kTTSymEmpty)
		return kTTErrGeneric;
	
	// if preset exists
	if (!mPresets->lookup(mCurrent, v)) {
		
		mCurrentPreset = TTPresetPtr((TTObjectPtr)v[0]);
		
		// replace the name in the hash table
		mPresets->remove(mCurrent);
		mPresets->append(newName, v);
		
		mCurrentPreset->setAttributeValue(kTTSym_name, newName);
		
		// replace the name in the order
		for (i = 0; i < mOrder.size(); i++) {
			
			name = mOrder[i];
			
			if (name == mCurrent) {
				mOrder[i] = newName;
				break;
			}
		}
		
		mCurrent = newName;
		mCurrentPosition = i+1;
		
		notifyOrderObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;	
}

TTErr TTPresetManager::Copy(const TTValue& inputValue, TTValue& outputValue)
{
	TTPresetPtr	aPresetCopy;
	TTSymbol nameCopy;
	TTString	s;
    TTInt32     positionCopy;
	TTValue		v, args;
	
	// get preset name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
	// get preset at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
	
	// if preset exists
	if (!mPresets->lookup(mCurrent, v)) {
		
		mCurrentPreset = TTPresetPtr((TTObjectPtr)v[0]);
		
		// create a new preset
		aPresetCopy = NULL;
		TTObjectInstantiate(kTTSym_Preset, TTObjectHandle(&aPresetCopy), kTTValNONE);
		
		// copy the current preset into
		TTPresetCopy(mCurrentPreset, aPresetCopy);
		
        // maybe there is a name for the copy
        if (inputValue.size() >= 2 && inputValue[1].type() == kTypeSymbol) {
            nameCopy = inputValue[1] ;
            
        }
        else {
            // edit a name copy : current cue name - copy
            s = mCurrent.c_str();
            s += " - copy";
            nameCopy = TTSymbol(s.data());
        }
		
		// rename the copy
		aPresetCopy->setAttributeValue(kTTSym_name, nameCopy);
		
		// append the copy
		v = TTValue(aPresetCopy);
		mPresets->append(nameCopy, v);
		mOrder.append(nameCopy);
		mCurrent = nameCopy;
		mCurrentPosition = mOrder.size();
		
		// maybe there is a position for the copy
        if (inputValue.size() == 3 && inputValue[2].type() == kTypeInt32) {
            
            positionCopy = inputValue[2] ;
            
#ifdef __TT_ELEMENT_H__         
			v = (int)mCurrentPosition;
#else
            v = mCurrentPosition;
#endif
            v.append((int)positionCopy);
            return Move(v, kTTValNONE);
        }
        else
            return notifyOrderObservers();
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbol			presetName;
    TTValue				v;
	TTUInt32			i;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectPtr)inputValue[0]);
	
	for (i = 0; i < mOrder.size(); i++) {
		
		presetName = mOrder[i];
		if (!mPresets->lookup(presetName, v)) {
			
			// start to write a preset
			xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "preset");
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST presetName.c_str());
			
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TTSymbol("Write"));
			
			// end to write a preset
			xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
		}
	}
    	
	return kTTErrNone;
}

TTErr TTPresetManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTValue			v;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectPtr)inputValue[0]);
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
		
		mCurrent = mOrder[0];
		if (!mPresets->lookup(mCurrent, v))
			mCurrentPreset = TTPresetPtr((TTObjectPtr)v[0]);
		
		notifyOrderObservers();
		
		return kTTErrNone;
	}

	// Preset node :
	if (aXmlHandler->mXmlNodeName == TTSymbol("preset")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// Get preset name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
			
			if (v[0].type() == kTypeSymbol) {
				
				mCurrent = v[0];
				
				// Create a new preset
				mCurrentPreset = NULL;
				TTObjectInstantiate(kTTSym_Preset, TTObjectHandle(&mCurrentPreset), kTTValNONE);
				
				mCurrentPreset->setAttributeValue(kTTSym_address, mAddress);
				mCurrentPreset->setAttributeValue(kTTSym_name, mCurrent);
				
				v = TTValue(mCurrentPreset);
				mPresets->append(mCurrent, v);
				mOrder.append(mCurrent);
			}
			
			// go back to the element to allow the preset to parse it
			xmlTextReaderMoveToElement((xmlTextReaderPtr)aXmlHandler->mReader);
		}
	}
	
	// edit the current preset from the xml file using the XmlHandler
	if (mCurrentPreset) {
		
		v = TTValue(mCurrentPreset);
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		return aXmlHandler->sendMessage(TTSymbol("Read"));
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
	
	aTextHandler = TTTextHandlerPtr((TTObjectPtr)inputValue[0]);
	
	buffer = aTextHandler->mWriter;
	
	for (TTUInt32 i = 0; i < mOrder.size(); i++) {
		
		presetName = mOrder[i];
		if (!mPresets->lookup(presetName, v)) {
			
			*buffer += "\n";
			
			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TTSymbol("Write"));
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
	
	aTextHandler = TTTextHandlerPtr((TTObjectPtr)inputValue[0]);
	
	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
	
	// parse the buffer line into TTDictionary
	line = TTScriptParseLine(*(aTextHandler->mLine));
	
	if (line) {
		
		// replace the buffer line value by the parsed line dictionary
		aTextHandler->mLine = new TTValue((TTPtr)line);
		
		// match preset flag line : - preset name
		if (line->getSchema() == kTTSym_flag) {
			
			line->lookup(kTTSym_name, v);
			flagName = v[0];
			
			if (flagName == TTSymbol("preset")) {
				
				// get preset name
				if (!line->getValue(v)) {
					
					mCurrent = v[0];
					
					// Create a new preset
					mCurrentPreset = NULL;
					TTObjectInstantiate(kTTSym_Preset, TTObjectHandle(&mCurrentPreset), kTTValNONE);
					
					mCurrentPreset->setAttributeValue(kTTSym_address, mAddress);
					mCurrentPreset->setAttributeValue(kTTSym_name, mCurrent);
					
					v = TTValue(mCurrentPreset);
					mPresets->append(mCurrent, v);
					mOrder.append(mCurrent);
				}
			}
		}
		
		// edit the current preset with the line
		if (mCurrentPreset) {
			
			v = TTValue(mCurrentPreset);
			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TTSymbol("Read"));
		}
		
		// if it is the last line : bind on the first preset
		if (aTextHandler->mLastLine) {
			
			mCurrent = mOrder[0];
			if (!mPresets->lookup(mCurrent, v))
				mCurrentPreset = TTPresetPtr((TTObjectPtr)v[0]);
			
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
