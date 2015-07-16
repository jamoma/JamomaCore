/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A CueManager Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTCueManager.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTCueManager
#define thisTTClassName		"CueManager"
#define thisTTClassTags		"cue, manager"

TT_MODULAR_CONSTRUCTOR,
mCurrent(kTTSymEmpty),
mCurrentPosition(0),
mNamespace(kTTSym_none),
mAddress(kTTAdrsRoot),
mDefaultNamespace(NULL)
{
	if (arguments.size() == 1)
		mReturnLineCallback = arguments[0];
	
	addAttribute(Names, kTypeLocalValue);
    addAttributeProperty(Names, readOnly, YES);
	
	addAttribute(Current, kTypeSymbol);
	addAttributeProperty(Current, readOnly, YES);
	
	addAttribute(CurrentPosition, kTypeInt32);
	addAttributeProperty(CurrentPosition, readOnly, YES);
	
	addAttribute(Namespace, kTypeSymbol);
    
    addAttributeWithSetter(Address, kTypeSymbol);
	
	registerAttribute(TTSymbol("currentDescription"), kTypeLocalValue, NULL, (TTGetterMethod)&TTCueManager::getCurrentDescription, (TTSetterMethod)&TTCueManager::setCurrentDescription);
	registerAttribute(TTSymbol("currentRamp"), kTypeLocalValue, NULL, (TTGetterMethod)&TTCueManager::getCurrentRamp, (TTSetterMethod)&TTCueManager::setCurrentRamp);
	
	addAttributeWithGetter(Cues, kTypePointer);
	addAttributeProperty(Cues, readOnly, YES);
	addAttributeProperty(Cues, hidden, YES);
	
	addMessageWithArguments(NamespaceSelect);
	addMessageWithArguments(NamespaceUnselect);
	addMessageWithArguments(NamespaceGrab);
	
	addMessage(Clear);
	
	addMessageWithArguments(New);
    addMessageWithArguments(Update);
    addMessageWithArguments(Append);
	addMessageWithArguments(Recall);
	addMessageWithArguments(Output);
	addMessageWithArguments(Interpolate);
	addMessageWithArguments(Mix);
	addMessageWithArguments(Move);
	addMessageWithArguments(Delete);
    addMessageWithArguments(Order);
	addMessageWithArguments(Rename);
	addMessageWithArguments(Copy);
	addMessageWithArguments(Optimize);
	
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
	
	mDefaultNamespace = new TTAddressItem();
}

TTCueManager::~TTCueManager()
{
	delete mDefaultNamespace;
	mDefaultNamespace = NULL;
}

TTErr TTCueManager::getCues(TTValue& value)
{
    value = TTPtr(&mCues);
    return kTTErrNone;
}

TTErr TTCueManager::getCurrentDescription(TTValue& value)
{
	TTValue v;
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
        return mCurrentCue.get(kTTSym_description, value);
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::setCurrentDescription(const TTValue& value)
{
	TTValue v;
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
        v = value;
        mCurrentCue.set(kTTSym_description, v);
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::getCurrentRamp(TTValue& value)
{
	TTValue v;
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
        return mCurrentCue.get(kTTSym_ramp, value);
	}
	
	value = 0;
	return kTTErrGeneric;
}

TTErr TTCueManager::setCurrentRamp(const TTValue& value)
{
	TTValue v;
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
        v = value;
        mCurrentCue.set(kTTSym_ramp, v);
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::setAddress(const TTValue& value)
{
    TTObject    aCue;
	TTSymbol    cueName;
	TTValue		v, names;
	TTUInt32	i;
    
    if (value.size() == 1) {
        
        if (value[0].type() == kTypeSymbol) {
            
            mAddress = value[0];
            
            mCues.getKeys(names);
            for (i = 0; i < names.size(); i++) {
                
                cueName = names[i];
                mCues.lookup(cueName, v);
                aCue = v[0];
                aCue.set(kTTSym_address, mAddress);
            }
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTCueManager::NamespaceSelect(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aSelection, anItem;
	TTAddress           address;
	TTUInt32			i;
	
    aSelection = getNamespace();
	
	for (i = 0; i < inputValue.size(); i++) {
		
		if (inputValue[i].type() == kTypeSymbol) {
			
			address = inputValue[i];
            
            // in relative address case : use the mAddress
            if (address.getType() == kAddressRelative)
                address = mAddress.appendAddress(address);
 /*
            // wildcard case
            TTNodePtr	aNode;
            TTList		aNodeList;
            TTValue		v, none;
            
            mDirectory->Lookup(address, aNodeList, &aNode);
            
            for (aNodeList.begin(); aNodeList.end(); aNodeList.next()) {
                
                aNode = TTNodePtr((TTPtr)aNodeList.current()[0]);
                
            }
*/			
            if (address == kTTAdrsRoot)
                aSelection->setSelection(YES, YES);
            
            else if (!aSelection->find(address, &anItem))
                     anItem->setSelection(YES, YES);
		}
	}
    
    // refresh all namespace handlers (TTExplorer only)
    aSelection->iterateHandlersSendingMessage(kTTSym_SelectionRefresh);
	
	return kTTErrNone;
}

TTErr TTCueManager::NamespaceUnselect(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddressItemPtr    aSelection, anItem;
	TTAddress           address;
	TTUInt32			i;
	
    aSelection = getNamespace();
	
	for (i = 0; i < inputValue.size(); i++) {
		
		if (inputValue[i].type() == kTypeSymbol) {
			
			address = inputValue[i];
            
            // in relative address case : use the mAddress
            if (address.getType() == kAddressRelative)
                address = mAddress.appendAddress(address);
			
            if (address == kTTAdrsRoot)
                aSelection->setSelection(NO, YES);
            
            else if (!aSelection->find(address, &anItem))
				anItem->setSelection(NO, YES);
		}
	}
    
    // refresh all namespace handlers (TTExplorer only)
    aSelection->iterateHandlersSendingMessage(kTTSym_SelectionRefresh);
	
	return kTTErrNone;
}

TTErr TTCueManager::NamespaceGrab(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aSelection;
	TTValue             v, none;
	
    if (inputValue.size() == 1) {
    
        // get cue name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get cue at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
		
        // get the namespace
        aSelection = getNamespace();
        
        mCurrentCue.send("Select", (TTPtr)aSelection);
        
        // refresh all namespace handlers (TTExplorer only)
        aSelection->iterateHandlersSendingMessage(kTTSym_SelectionRefresh);
        
        return kTTErrNone;
	}
	else 
		mCurrentPosition = 0;
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Clear()
{
    mCues.clear();
    mCurrentCue = TTObject();
    mCurrent = kTTSymEmpty;
    mCurrentPosition = 0;
    mNames.clear();
		
    notifyNamesObservers();

	return kTTErrNone;
}

TTErr TTCueManager::New(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue v, args, out;
    TTErr   err;
        
    // get cue name
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
    
    // get cue position and name
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeSymbol)
            mCurrent = inputValue[1];
    
    if (mCurrent == kTTSymEmpty)
        return kTTErrGeneric;

	// don't create two cues with the same name
	if (mCues.lookup(mCurrent, v)) {
		
		// prepare arguments
		args.append(mReturnLineCallback);
		
		// Create a new cue
		mCurrentCue = TTObject(kTTSym_Cue, args);
		
		mCurrentCue.set(kTTSym_name, mCurrent);
        mCurrentCue.set(kTTSym_address, mAddress);
		
		// Append the new cue
		mCues.append(mCurrent, mCurrentCue);
		mNames.append(mCurrent);
		mCurrentPosition = mNames.size();
		
		notifyNamesObservers();
	}
	else {
		mCurrentCue = v[0];
		mCurrentCue.send("Clear");
	}
	
    // select the namespace
	v = TTValue((TTPtr)getNamespace());
	err = mCurrentCue.send("Store", v, out);
    
    // Move the cue at position
    if (inputValue.size() == 2) {
        
        v = mCurrent;
        v.append(inputValue[0]);
        
        err = Move(v, out);
    }
    
    return err;
}

TTErr TTCueManager::Update(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue		v, none;
    TTSymbol    anAddress = kTTAdrsRoot;
	
    if (inputValue.size() >= 1) {
        
        // get cue name
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
        
        // get cue at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
    
    // get address from where update starts (default : kAdrsRoot)
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeSymbol)
            anAddress = inputValue[1];
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];

        return mCurrentCue.send(kTTSym_Update, anAddress);
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Append(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue	v, args, lineValue, parsedLine;
	
    if (inputValue.size() >= 1) {
        
        // get cue name
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
        
        // get cue at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
    
    // edit lineValue to append
    lineValue.copyFrom(inputValue, 1);
    
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
		
        return mCurrentCue.send("Append", lineValue, parsedLine);
	}
    // else create a new cue and call Append method again
    else {
        
		// Create a new cue
		mCurrentCue = TTObject(kTTSym_Cue, mReturnLineCallback);
		
		mCurrentCue.set(kTTSym_name, mCurrent);
        mCurrentCue.set(kTTSym_address, mAddress);
		
		// Append the new cue
		mCues.append(mCurrent, mCurrentCue);
		mNames.append(mCurrent);
		mCurrentPosition = mNames.size();
		
		notifyNamesObservers();
        
        // Append - cue cueName
        v = kTTSym_dash;
        v.append(TTSymbol("cue"));
        v.append(mCurrent);
        mCurrentCue.send("Append", v, parsedLine);

        // Append - description
        v = kTTSym_dash;
        v.append(TTSymbol("description"));
        mCurrentCue.send("Append", v, parsedLine);
        
        // Append an comment line
        v = kTTSym_sharp;
        mCurrentCue.send("Append", v, parsedLine);

        // Append given lineValue
        return mCurrentCue.send("Append", lineValue, parsedLine);
    }
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Recall(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v, none;
    TTSymbol    anAddress = kTTAdrsRoot;
	
    if (inputValue.size() >= 1) {
        
        // get cue name
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
        
        // get cue at position
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
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
		
		return mCurrentCue.send(kTTSym_Recall, anAddress);
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Output(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v, none;
    TTSymbol    anAddress = kTTAdrsRoot;
	
    if (inputValue.size() >= 1) {
        
        // get cue name
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
        
        // get cue at position
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
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
		
        return mCurrentCue.send("Output", anAddress);
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Interpolate(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v1, v2;
	TTUInt32    i1, i2;
	TTSymbol    name1, name2;
	TTObject	cue1, cue2;
	TTFloat32	position;
	
	if (inputValue.size() == 3) {
		
        // get cues by name
		if (inputValue[0].type() == kTypeSymbol && inputValue[1].type() == kTypeSymbol && inputValue[2].type() == kTypeFloat64) {
			
			name1 = inputValue[0] ;
			name2 = inputValue[1] ;
			position = inputValue[2] ;
        }
        
        // get cues by position
        else if (inputValue[0].type() == kTypeInt32 && inputValue[1].type() == kTypeInt32 && inputValue[2].type() == kTypeFloat64) {
            
            i1 = inputValue[0] ;
            if (i1 >= 0 && i1 < mNames.size())
                name1 = mNames[i1-1];
            else
                return kTTErrGeneric;
            
            i2 = inputValue[1];
            if (i2 >= 0 && i2 < mNames.size())
                name2 = mNames[i2-1];
            else
                return kTTErrGeneric;
            
            position = inputValue[2] ;
        }
			
        // if cues exist
        if (!mCues.lookup(name1, v1) && !mCues.lookup(name2, v2)) {
            
            cue1 = v1[0];
            cue2 = v2[0];
            
            if (cue1.valid() && cue2.valid())
                return TTCueInterpolate(cue1, cue2, position);
        }
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Mix(const TTValue& inputValue, TTValue& outputValue)
{
	TTInt32     i, mixSize;
	TTUInt32    id;
	TTSymbol    name;
	TTObject	cue;
	TTValue		v, cues, factors;
	
	mixSize = inputValue.size() / 2;
	if (inputValue.size() != mixSize * 2)
		return kTTErrGeneric;
	
	for (i = 0; i < mixSize * 2; i = i+2) {
		
        if (inputValue[i].type() == kTypeSymbol && inputValue[i+1].type() == kTypeFloat64) {
            
			name = inputValue[i] ;
        }
        else if (inputValue[i].type() == kTypeInt32 && inputValue[i+1].type() == kTypeFloat64) {
            
            id = inputValue[i];
            if (id > 0 && id <= mNames.size())
                name = mNames[id-1];
            else
                return kTTErrGeneric;
        }
        
        // if cue exist
        if (!mCues.lookup(name, v)) {
            
            cue = v[0];
            
            if (cue.valid()) {
                cues.append(cue);
                factors.append(TTFloat64(inputValue[i+1]));
            }
        }
	}
	
	return TTCueMix(cues, factors);
}

TTErr TTCueManager::Move(const TTValue& inputValue, TTValue& outputValue)
{
	TTList		temp;
	TTSymbol    name;
	TTUInt32	i, newPosition = 0;
	TTValue		v;
	
	if (inputValue.size() >= 1) {
        
        // get cue name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get cue at position
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
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
		
		// copy all the mNames names into a TTList
		// except the mCurrent
		for (i = 0; i < mNames.size(); i++) {
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
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Delete(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol    name;
	TTValue     v, newNames;
	
    if (inputValue.size() == 1) {
        
        // get cue name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get cue at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCues.remove(mCurrent);
		
		// remove the name without changing the order
		for (TTUInt32 i = 0; i < mNames.size(); i++) {
			
			name = mNames[i];
			
			if (name != mCurrent)
				newNames.append(name);
		}
		
		mCurrentCue = TTObject();
		mCurrent = kTTSymEmpty;
		mCurrentPosition = 0;
		mNames = newNames;
		
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Order(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol    name;
	TTValue		v, newNames;
	
	// check if each name is part of the list
	for (TTUInt32 i = 0; i < inputValue.size(); i++) {
		
		name = inputValue[i];
		
		if (!mCues.lookup(name, v))
			newNames.append(name);
        
        // update current position
        if (name == mCurrent)
            mCurrentPosition = i;
	}
	
	// if the newNames size is not equal to the current name list
	if (newNames.size() != mNames.size())
		return kTTErrGeneric;
	
	mNames = newNames;
    
	return kTTErrNone;
}

TTErr TTCueManager::Rename(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol    name, newName;
	TTUInt32	i;
	TTValue		v;
	
	if (inputValue.size() >= 1) {
        
        // get cue name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get cue at position
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
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
		
		// replace the name in the hash table
		mCues.remove(mCurrent);
		mCues.append(newName, v);
		
		mCurrentCue.set(kTTSym_name, newName);
		
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
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;	
}

TTErr TTCueManager::Copy(const TTValue& inputValue, TTValue& outputValue)
{
	TTObject	aCueCopy;
	TTSymbol    nameCopy;
	TTString	s;
    TTInt32     positionCopy;
	TTValue		v, none;
	
    if (inputValue.size() >= 1) {
        
        // get cue name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get cue at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];

            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// if cue exists
	if (!mCues.lookup(mCurrent, v)) {
		
		mCurrentCue = v[0];
		
		// create a new cue
		aCueCopy = TTObject(kTTSym_Cue, mReturnLineCallback);
		
		// copy the current cue into
		TTCueCopy(mCurrentCue, aCueCopy);
		
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
		aCueCopy.set(kTTSym_name, nameCopy);
		
		// append the copy
		v = TTValue(aCueCopy);
		mCues.append(nameCopy, v);
		mNames.append(nameCopy);
		mCurrent = nameCopy;
		mCurrentPosition = mNames.size();
		
        // maybe there is a position for the copy
        if (inputValue.size() == 3) {
            
            if (inputValue[2].type() == kTypeInt32) {

                positionCopy = inputValue[2] ;

                v = (int)mCurrentPosition;
                v.append((int)positionCopy);
                return Move(v, none);
            }
        }
        else
            return notifyNamesObservers();
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Optimize(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i;
	TTSymbol    nameToMerge, nameToOptimize;
	TTObject	aCueToMerge, aCueToOptimize, stateCue, optimizedCue;
	TTValue		v;
	TTErr		err;
    
    if (!inputValue.size())
        return kTTErrGeneric;
    
	// create an empty cue to merge the current state into
	stateCue = TTObject(kTTSym_Cue, mReturnLineCallback);
	
	// merge and optimize each cues except the first
	for (i = 1; i < inputValue.size(); i++) {
		
		if (inputValue[i-1].type() == kTypeSymbol && inputValue[i].type() == kTypeSymbol) {
			
			nameToMerge = inputValue[i-1];
			nameToOptimize = inputValue[i];
			
			// if cue exists
			if (!mCues.lookup(nameToMerge, v))
				aCueToMerge = v[0];
			
			if (!mCues.lookup(nameToOptimize, v))
				aCueToOptimize = v[0];
			
			if (aCueToMerge.valid() && aCueToOptimize.valid()) {
				
				// merge the cue before into the current state
				TTCueMerge(aCueToMerge, stateCue);
				
				// create an empty cue to store the result of optimization
				optimizedCue = TTObject(kTTSym_Cue, mReturnLineCallback);
				optimizedCue.set(kTTSym_name, nameToOptimize);
                optimizedCue.set(kTTSym_address, mAddress);
				
				// optimize the cue considering the current state
				err = TTCueOptimize(aCueToOptimize, stateCue, optimizedCue);
				
				if (!err) {
					
					// replace the cue to optimize by the optimized cue
					mCues.remove(nameToOptimize);
					mCues.append(nameToOptimize, optimizedCue);
				}
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTSymbol	cueName;
    TTValue		v;
	TTUInt32	i;
	
	for (i = 0; i < mNames.size(); i++) {
		
		cueName = mNames[i];
		if (!mCues.lookup(cueName, v)) {
            
            TTValue name = cueName;
            name.toString(NO); //no quotes
            TTString s = TTString(name[0]);
			
			// start to write a cue
			xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "cue");
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST s.c_str());
			
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TTSymbol("Write"));
			
			// end to write a cue
			xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTValue	v, args;
	
	// Switch on the name of the XML node
	
	// Starts file reading : clear the cue list
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingStarts) {
		Clear();
		return kTTErrNone;
	}
	
	// Ends file reading : bind on first cue
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingEnds) {
		
        // try to set the former current as current
        mCurrent = mLastCurrent;
        if (!mCues.lookup(mCurrent, v))
            mCurrentCue = v[0];
        
        // else bind on the first cue
        else if (mNames.size()) {
            
            mCurrent = mNames[0];
            if (!mCues.lookup(mCurrent, v))
                mCurrentCue = v[0];
        }
        
        if (mCurrentCue.valid()) {
            
            // send the end file to the cue to process the namespace
            aXmlHandler->setAttributeValue(kTTSym_object, mCurrentCue);
            aXmlHandler->sendMessage(TTSymbol("Read"));
        }
        
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	// Flag node :
	if (aXmlHandler->mXmlNodeName == TTSymbol("cue")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// Get cue name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
            
            if (v.size() == 1) {
                if (v[0].type() == kTypeSymbol) {
                    
                    mCurrent = v[0];
                    
                    // Create a new cue
                    mCurrentCue = TTObject(kTTSym_Cue, mReturnLineCallback);
                    
                    mCurrentCue.set(kTTSym_name, mCurrent);
                    mCurrentCue.set(kTTSym_address, mAddress);
                    
                    mCues.append(mCurrent, mCurrentCue);
                    mNames.append(mCurrent);
                }
            }
		}
		
		// go back to the element to allow the cue to parse it
		xmlTextReaderMoveToElement((xmlTextReaderPtr)aXmlHandler->mReader);
	}
	
	// edit the current cue from the xml file using the XmlHandler
	if (mCurrentCue.valid()) {
		
		aXmlHandler->setAttributeValue(kTTSym_object, mCurrentCue);
		return aXmlHandler->sendMessage(TTSymbol("Read"));
	}
	else
		return kTTErrGeneric;
}

TTErr TTCueManager::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
    
	TTString	*buffer;
	TTSymbol    cueName;
	TTValue		v;
	
	buffer = aTextHandler->mWriter;
	
	for (TTUInt32 i = 0; i < mNames.size(); i++) {
		
		cueName = mNames[i];
		if (!mCues.lookup(cueName, v)) {

			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TTSymbol("Write"));
            
			*buffer += "\n";
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
    
	TTDictionaryBasePtr	line;
	TTSymbol		flagName;
	TTValue			v, args;

	// if it is the first line :
	if (aTextHandler->mFirstLine) {
        
        mLastCurrent = mCurrent;
		Clear();
    }
	
	// parse the buffer line into TTDictionary
	line = TTScriptParseLine(*(aTextHandler->mLine));
	
	if (line) {
		
		// replace the buffer line value by the parsed line dictionary
		delete aTextHandler->mLine;
		aTextHandler->mLine = new TTValue((TTPtr)line);
		
		// match cue flag line : - cue name
		if (line->getSchema() == kTTSym_flag) {
			
			line->lookup(kTTSym_name, v);
			flagName = v[0];
			
			if (flagName == TTSymbol("cue")) {
				
				// get cue name
				if (!line->getValue(v)) {
					
                    // convert in string in case of int or float name with no quotes for internal symbol
                    v.toString(NO);
					mCurrent = TTSymbol(TTString(v[0]));
					
                    if (mCurrent != kTTSymEmpty) {

                        // Create a new cue
                        mCurrentCue = TTObject(kTTSym_Cue, mReturnLineCallback);
                        
                        mCurrentCue.set(kTTSym_name, mCurrent);
                        mCurrentCue.set(kTTSym_address, mAddress);
                        
                        mCues.append(mCurrent, mCurrentCue);
                        mNames.append(mCurrent);
                    }
				}
			}
		}
        
        // edit the current cue with the line
        if (mCurrentCue.valid()) {
            
            aTextHandler->setAttributeValue(kTTSym_object, mCurrentCue);
            return aTextHandler->sendMessage(TTSymbol("Read"));
        }
    }
    
    // if it is the last line : bind on the first cue
    if (aTextHandler->mLastLine) {
        
        // théo - since the workshop in june 2014 in Albi we decide to force the script to be flattened
        // but we should review all the #TTCue and #TTScript architecture to improve this
        for (TTUInt32 i = 0; i < mNames.size(); i++) {
            
            TTSymbol cueName = mNames[i];
            
            if (!mCues.lookup(cueName, v)) {
                
                TTObject aCue = v[0];
                TTValue none;
                aCue.send("ReadFromText", inputValue);
            }
        }
        
        // try to set the former current as current
        mCurrent = mLastCurrent;
        if (!mCues.lookup(mCurrent, v))
            mCurrentCue = v[0];
        
        // else bind on the first cue
        else if (mNames.size()) {
            
            mCurrent = mNames[0];
            if (!mCues.lookup(mCurrent, v))
                mCurrentCue = v[0];
        }
        
        notifyNamesObservers();
        
        return kTTErrNone;
    }

	
	return kTTErrGeneric;
}

TTErr TTCueManager::notifyNamesObservers()
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(kTTSym_names, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mNames);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTAddressItemPtr TTCueManager::getNamespace()
{
    TTValue v;
    TTAddressItemPtr aSelection = TTModularSelectionLookup(mNamespace);
    
	if (!aSelection) {
        
        TTModularApplicationManager->getAttributeValue(TTSymbol("applicationNames"), v);
        
        // fill the default namespace with the local directory
        if (v.size() == 1) {
            
            accessApplicationLocalDirectory->fillAddressItem(mDefaultNamespace);
            
        }
        // fill the default namespace with all directories
        else {
            
            TTSymbol            applicationName;
            TTAddressItemPtr    applicationItem;
            
            for (TTUInt32 i = 0; i < v.size(); i++) {
                
                applicationName = v[i];
                
                mDefaultNamespace->append(TTAddress(applicationName), &applicationItem);
                
                accessApplicationDirectory(applicationName)->fillAddressItem(applicationItem);
            }
        }
        
        aSelection = mDefaultNamespace;
    }
    
    return aSelection;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif
