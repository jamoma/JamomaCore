/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A PresetManager Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
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
mCurrent(kTTSymEmpty),
mCurrentPosition(0)
{
	if (arguments.size() == 1)
		mReturnLineCallback = arguments[0];
    
    registerAttribute(TTSymbol("value"), kTypeLocalValue, NULL, (TTGetterMethod)&TTPresetManager::getValue, (TTSetterMethod)&TTPresetManager::setValue);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addAttribute(Names, kTypeLocalValue);
    addAttributeProperty(Names, readOnly, YES);
	
	addAttribute(Current, kTypeSymbol);
	addAttributeProperty(Current, readOnly, YES);
	
	addAttribute(CurrentPosition, kTypeUInt32);
	addAttributeProperty(CurrentPosition, readOnly, YES);
	
	addAttributeWithGetter(Presets, kTypePointer);
	addAttributeProperty(Presets, readOnly, YES);
	addAttributeProperty(Presets, hidden, YES);
	
	addMessage(Clear);
	
	addMessageWithArguments(New);
    addMessageWithArguments(Update);
	addMessageWithArguments(Recall);
    addMessageWithArguments(Output);
	addMessageWithArguments(Interpolate);
	addMessageWithArguments(Mix);
	addMessageWithArguments(Move);
	addMessageWithArguments(Delete);
    addMessageWithArguments(Order);
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
}

TTPresetManager::~TTPresetManager()
{
    ;
}

TTErr TTPresetManager::getPresets(TTValue& value)
{
    value = TTPtr(&mPresets);
    return kTTErrNone;
}

TTErr TTPresetManager::setAddress(const TTValue& value)
{	
	Clear();
	
	mAddress = value[0];
	
	return kTTErrNone;
}

TTErr TTPresetManager::getValue(TTValue& value)
{
    value = mCurrentPosition+1;
    value.append(mCurrent);
    
    return kTTErrNone;
}

TTErr TTPresetManager::setValue(const TTValue& value)
{
    TTValue outputValue;
    
    return Recall(value, outputValue);
}

TTErr TTPresetManager::Clear()
{
    mPresets.clear();
    mCurrentPreset = TTObject();
    mCurrent = kTTSymEmpty;
    mCurrentPosition = 0;
    mNames.clear();
		
    notifyNamesObservers();
    notifyValueObservers();
	
	return kTTErrNone;
}

TTErr TTPresetManager::New(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue     v, out;
    TTErr       err;
    
	// get preset name
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
    
    // get preset position and name
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeSymbol)
            mCurrent = inputValue[1];
	
	if (mCurrent == kTTSymEmpty)
		return kTTErrGeneric;
	
	// don't create two presets with the same name
	if (mPresets.lookup(mCurrent, v)) {
        
		// Create a new preset
		mCurrentPreset = TTObject(kTTSym_Preset, mReturnLineCallback);
	
		mCurrentPreset.set(kTTSym_address, mAddress);
		mCurrentPreset.set(kTTSym_name, mCurrent);
		
		// Append the new preset
		mPresets.append(mCurrent, mCurrentPreset);
		mNames.append(mCurrent);
		mCurrentPosition = mNames.size();
		
		notifyNamesObservers();
        notifyValueObservers();
	}
	else {
		mCurrentPreset = v[0];
		mCurrentPreset.send("Clear");
	}
	
	err = mCurrentPreset.send("Store");
    
    // Move the preset at position
    if (inputValue.size() == 2) {
        
        v = mCurrent;
        v.append(inputValue[0]);
        
        err = Move(v, out);
    }
	
	return err;
}

TTErr TTPresetManager::Update(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue		v, none;

    if (inputValue.size() >= 1) {
        
        // get cue name
        if (inputValue[0].type() == kTypeSymbol) {
            mCurrent = inputValue[0];
            
            TTSymbol name;
			// TODO refactor this code : it is everywhere in this file.
			for (TTUInt32 i = 0; i < mNames.size(); i++) {
                name = mNames[i];
                if (name == mCurrent) {
                    mCurrentPosition = i+1;
                    break;
                }
            }
        }
        
        // get cue at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
    
	// if preset exists
	if (!mPresets.lookup(mCurrent, v)) {
		
		mCurrentPreset = v[0];
		
		if (mCurrentPreset.valid())
            return mCurrentPreset.send(kTTSym_Update);
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::Recall(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v, none;
    TTAddress   anAddress = kTTAdrsRoot;
    TTErr       err;
	
    if (inputValue.size() == 1) {
        
        // get preset name
        if (inputValue[0].type() == kTypeSymbol) {
            mCurrent = inputValue[0];
            
            TTSymbol name;
			for (TTUInt32 i = 0; i < mNames.size(); i++) {
                name = mNames[i];
                if (name == mCurrent) {
                    mCurrentPosition = i+1;
                    break;
                }
            }
        }
        
        // get preset at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
    
    // get address from where recall starts (default : kAdrsRoot)
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeSymbol)
            anAddress = inputValue[1];
	
	// if preset exists
	if (!mPresets.lookup(mCurrent, v)) {
		
		mCurrentPreset = v[0];
		
        err = mCurrentPreset.send(kTTSym_Recall, mAddress.appendAddress(anAddress));
            
        notifyValueObservers();
            
        return err;
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::Output(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v, none;
    TTAddress   anAddress = kTTAdrsRoot;
    TTErr       err;
	
    if (inputValue.size() >= 1) {
        
        // get preset name
        if (inputValue[0].type() == kTypeSymbol) {
            mCurrent = inputValue[0];
            
            TTSymbol name;
			for (TTUInt32 i = 0; i < mNames.size(); i++) {
                name = mNames[i];
                if (name == mCurrent) {
                    mCurrentPosition = i+1;
                    break;
                }
            }
        }
        
        // get preset at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
    
    // get address from where recall starts
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeSymbol)
            anAddress = inputValue[1];
	
	// if preset exists
	if (!mPresets.lookup(mCurrent, v)) {
		
		mCurrentPreset = v[0];
        
        err = mCurrentPreset.send("Output", mAddress.appendAddress(anAddress));
            
        notifyValueObservers();
            
        return err;
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::Interpolate(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v1, v2;
    TTInt32     i1, i2;
	TTSymbol    name1, name2;
	TTObject    preset1, preset2;
	TTFloat32	position;
	
	if (inputValue.size() == 3) {
		
        // get presets by name
		if (inputValue[0].type() == kTypeSymbol && inputValue[1].type() == kTypeSymbol && inputValue[2].type() == kTypeFloat64) {
			
			name1 = inputValue[0];
			name2 = inputValue[1];
			position = inputValue[2];
        }
        
        // get presets by position
        else if (inputValue[0].type() == kTypeInt32 && inputValue[1].type() == kTypeInt32 && inputValue[2].type() == kTypeFloat64) {
            
            i1 = inputValue[0] ;
			if (i1 > 0 && i1 <= (TTInt32) mNames.size())
                name1 = mNames[i1-1];
            else
                return kTTErrGeneric;
            
            i2 = inputValue[1];
			if (i2 > 0 && i2 <= (TTInt32) mNames.size())
                name2 = mNames[i2-1];
            else
                return kTTErrGeneric;
            
            position = inputValue[2];
        }
			
        // if presets exist
        if (!mPresets.lookup(name1, v1) && !mPresets.lookup(name2, v2)) {
            
            preset1 = v1[0];
            preset2 = v2[0];
            
            return TTPresetInterpolate(preset1, preset2, position);
        }
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::Mix(const TTValue& inputValue, TTValue& outputValue)
{
	TTInt32     i, id, mixSize;
	TTSymbol    name;
	TTObject    preset;
	TTValue		v, presets, factors;
	
	mixSize = inputValue.size() / 2;
	if (inputValue.size() != mixSize * 2)
		return kTTErrGeneric;
	
	for (i = 0; i < mixSize * 2; i = i+2) {
		
		if (inputValue[i].type() == kTypeSymbol && inputValue[i+1].type() == kTypeFloat64) {
            
			name = inputValue[i] ;
        }
        else if (inputValue[i].type() == kTypeInt32 && inputValue[i+1].type() == kTypeFloat64) {
            
            id = inputValue[i];
			if (id > 0 && id <= (TTInt32) mNames.size())
                name = mNames[id-1];
            else
                return kTTErrGeneric;
        }
			
        // if preset exist
        if (!mPresets.lookup(name, v)) {
            
            preset = v[0];
            
            presets.append(preset);
            factors.append(TTFloat64(inputValue[i+1]));
        }
	}
	
	return TTPresetMix(presets, factors);
}

TTErr TTPresetManager::Move(const TTValue& inputValue, TTValue& outputValue)
{
	TTList		temp;
	TTSymbol    name;
	TTUInt32	i, newPosition = 0;
	TTValue		v;
	
	if (inputValue.size() >= 1) {
        
        // get preset name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get preset at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// get new position
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeInt32)
            newPosition = inputValue[1] ;
	
	if (newPosition < 1 || newPosition > mNames.size())
		return kTTErrGeneric;
	
	// if preset exists
	if (!mPresets.lookup(mCurrent, v)) {
		
		mCurrentPreset = v[0];
		
		// copy all the mNames names into a TTList
		// except the mCurrent
		for (i = 0; i <  mNames.size(); i++) {
			name = mNames[i];
			
			if (name == mCurrent)
				continue;
			
			v = TTValue(name);
			temp.append(v);
		}
		
		// insert the mCurrent
		v = TTValue(mCurrent);
		temp.insert(newPosition-1, v);
		mNames.clear();
		
		// copy the TTList names into a newNames
		for (temp.begin(); temp.end(); temp.next()) {
			name = temp.current()[0];
			mNames.append(name);
		}
		
		mCurrentPosition = newPosition;
		
		notifyNamesObservers();
        notifyValueObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::Delete(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol name;
	TTValue	 v, newNames;
    
    if (inputValue.size() == 1) {
        
        // get preset name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get preset at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// if preset exists
	if (!mPresets.lookup(mCurrent, v)) {
		
		mPresets.remove(mCurrent);
		
		// remove the name without changing the order
		for (TTUInt32 i = 0; i < mNames.size(); i++) {
			
			name = mNames[i];
			
			if (name != mCurrent)
				newNames.append(name);
		}
		
		mCurrentPreset = TTObject();
		mCurrent = kTTSymEmpty;
		mCurrentPosition = 0;
		mNames = newNames;
		
		notifyNamesObservers();
        notifyValueObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}


TTErr TTPresetManager::Order(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol    name;
	TTValue     v, newNames;
	
	// check if each name is part of the list
	for (TTUInt32 i = 0; i < inputValue.size(); i++) {
		
		name = inputValue[i];
		
		if (!mPresets.lookup(name, v))
			newNames.append(name);
        
        // update current position
        if (name == mCurrent)
            mCurrentPosition = i;
	}
	
	// if the newNames size is not equal to the current name list
	if (newNames.size() != mNames.size())
		return kTTErrGeneric;
    
	mNames = newNames;
    
    notifyNamesObservers();
    
	return kTTErrNone;
}

TTErr TTPresetManager::Rename(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol name, newName;
	TTUInt32	i;
	TTValue		v;
	
	if (inputValue.size() >= 1) {
        
        // get preset name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get preset at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// get new name
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeSymbol)
            newName = inputValue[1] ;
	
	if (newName == kTTSymEmpty)
		return kTTErrGeneric;
	
	// if preset exists
	if (!mPresets.lookup(mCurrent, v)) {
		
		mCurrentPreset = v[0];
		
		// replace the name in the hash table
		mPresets.remove(mCurrent);
		mPresets.append(newName, v);
		
		mCurrentPreset.set(kTTSym_name, newName);
		
		// replace the name in the order
		for (i = 0; i < mNames.size(); i++) {
			
			name = mNames[i];
			
			if (name == mCurrent) {
				mNames[i] = newName;
				break;
			}
		}
		
		mCurrent = newName;
		mCurrentPosition = i+1;
		
		notifyNamesObservers();
        notifyValueObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;	
}

TTErr TTPresetManager::Copy(const TTValue& inputValue, TTValue& outputValue)
{
	TTObject	aPresetCopy;
	TTSymbol    nameCopy;
	TTString	s;
    TTInt32     positionCopy;
	TTValue		v, args, none;
    
    if (inputValue.size() >= 1) {
        
        // get preset name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get preset at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// if preset exists
	if (!mPresets.lookup(mCurrent, v)) {
		
		mCurrentPreset = v[0];
		
		// create a new preset
		aPresetCopy = TTObject(kTTSym_Preset, mReturnLineCallback);
		
		// copy the current preset into
		TTPresetCopy(mCurrentPreset, aPresetCopy);
		
        // maybe there is a name for the copy
        if (inputValue.size() >= 2) {
            
            if (inputValue[1].type() == kTypeSymbol)
                nameCopy = inputValue[1] ;
            
        }
        else {
            // edit a name copy : current cue name - copy
            s = mCurrent.c_str();
            s += " - copy";
            nameCopy = TTSymbol(s.data());
        }
		
		// rename the copy
		aPresetCopy.set(kTTSym_name, nameCopy);
		
		// append the copy
		v = TTValue(aPresetCopy);
		mPresets.append(nameCopy, v);
		mNames.append(nameCopy);
		mCurrent = nameCopy;
		mCurrentPosition = mNames.size();
		
		// maybe there is a position for the copy
        if (inputValue.size() == 3) {
            
            if (inputValue[2].type() == kTypeInt32) {
                TTValue dummy;
                positionCopy = inputValue[2] ;
                
#ifdef __TT_ELEMENT_H__
                v = (int)mCurrentPosition;
#else
                v = mCurrentPosition;
#endif
                v.append((int)positionCopy);
                return Move(v, dummy);
            }
        }
        else {
            
            notifyNamesObservers();
            notifyValueObservers();
            
            return kTTErrNone;
        }
	}
	
	return kTTErrGeneric;
}

TTErr TTPresetManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTSymbol	presetName;
    TTValue		v;
	TTUInt32	i;
	
	for (i = 0; i < mNames.size(); i++) {
		
		presetName = mNames[i];
		if (!mPresets.lookup(presetName, v)) {
            
            TTValue name = presetName;
            name.toString(NO); //no quotes
            TTString s = TTString(name[0]);
            
			// start to write a preset
			xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "preset");
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST s.c_str());
			
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
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTValue v;
	
	// Switch on the name of the XML node
	
	// Starts file reading : clear the preset list
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingStarts) {
		Clear();
		return kTTErrNone;
	}
	
	// Ends file reading : bind on first preset
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingEnds) {
		
        if (mNames.size()) {
            
            mCurrent = mNames[0];
            if (!mPresets.lookup(mCurrent, v))
                mCurrentPreset = v[0];
        }
        
		notifyNamesObservers();
        notifyValueObservers();
		
		return kTTErrNone;

	}

	// Preset node :
	if (aXmlHandler->mXmlNodeName == TTSymbol("preset")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// Get preset name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
			
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeSymbol) {
                    
                    mCurrent = v[0];
                    
                    // Create a new preset
                    mCurrentPreset = TTObject(kTTSym_Preset, mReturnLineCallback);
                    
                    mCurrentPreset.set(kTTSym_address, mAddress);
                    mCurrentPreset.set(kTTSym_name, mCurrent);
                    
                    mPresets.append(mCurrent, mCurrentPreset);
                    mNames.append(mCurrent);
                }
            }
			
			// go back to the element to allow the preset to parse it
			xmlTextReaderMoveToElement((xmlTextReaderPtr)aXmlHandler->mReader);
		}
	}
	
	// edit the current preset from the xml file using the XmlHandler
	if (mCurrentPreset.valid()) {
		
		aXmlHandler->setAttributeValue(kTTSym_object, mCurrentPreset);
		return aXmlHandler->sendMessage(TTSymbol("Read"));
	}
	else
		return kTTErrGeneric;
}

TTErr TTPresetManager::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
    
	TTString	*buffer;
	TTSymbol    presetName;
	TTValue		v;

	buffer = aTextHandler->mWriter;
	
	for (TTUInt32 i = 0; i < mNames.size(); i++) {
		
		presetName = mNames[i];
		if (!mPresets.lookup(presetName, v)) {
			
			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TTSymbol("Write"));
		}
	}
	
	return kTTErrNone;
}

TTErr TTPresetManager::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
    
	TTDictionaryBasePtr	line;
	TTSymbol		flagName;
	TTValue			v, args;
	
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
					mCurrentPreset = TTObject(kTTSym_Preset, mReturnLineCallback);
					
					mCurrentPreset.set(kTTSym_address, mAddress);
					mCurrentPreset.set(kTTSym_name, mCurrent);
					
					mPresets.append(mCurrent, mCurrentPreset);
					mNames.append(mCurrent);
				}
			}
		}
        
        // edit the current preset with the line
        if (mCurrentPreset.valid()) {
            
            aTextHandler->setAttributeValue(kTTSym_object, mCurrentPreset);
            return aTextHandler->sendMessage(TTSymbol("Read"));
        }
    }
	
    // if it is the last line : bind on the first preset
    if (aTextHandler->mLastLine) {
        
        if (mNames.size()) {
            
            mCurrent = mNames[0];
            if (!mPresets.lookup(mCurrent, v))
                mCurrentPreset = v[0];
        }
        
        notifyNamesObservers();
        notifyValueObservers();
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTPresetManager::notifyValueObservers()
{
	TTAttributePtr	anAttribute = NULL;
    TTValue         v;
	TTErr			err;
	
    err = this->findAttribute(kTTSym_value, &anAttribute);
	
	if (!err) {
        getValue(v);
		anAttribute->sendNotification(kTTSym_notify, v);	// we use kTTSym_notify because we know that observers are TTCallback
    }
	
	return kTTErrNone;
}

TTErr TTPresetManager::notifyNamesObservers()
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(kTTSym_names, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mNames);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}
