/* 
 * A TTCueManager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
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
mOrder(kTTValNONE),
mCurrent(kTTSymEmpty),
mCurrentPosition(0),
mNamespace(kTTSym_none),
mCues(NULL),
mCurrentCue(NULL),
mDefaultNamespace(NULL),
mReturnLineCallback(NULL)
{
	TT_ASSERT("Correct number of args to create TTCueManager", arguments.size() == 0 || arguments.size() == 1);
	
	if (arguments.size() == 1)
		mReturnLineCallback = TTCallbackPtr((TTObjectBasePtr)arguments[0]);
	
	TT_ASSERT("Return Line Callback passed to TTCueManager is not NULL", mReturnLineCallback);
	
	addAttributeWithSetter(Order, kTypeLocalValue);
	
	addAttribute(Current, kTypeSymbol);
	addAttributeProperty(Current, readOnly, YES);
	
	addAttribute(CurrentPosition, kTypeInt32);
	addAttributeProperty(CurrentPosition, readOnly, YES);
	
	addAttribute(Namespace, kTypeSymbol);
	
	registerAttribute(TTSymbol("currentDescription"), kTypeLocalValue, NULL, (TTGetterMethod)&TTCueManager::getCurrentDescription, (TTSetterMethod)&TTCueManager::setCurrentDescription);
	registerAttribute(TTSymbol("currentRamp"), kTypeLocalValue, NULL, (TTGetterMethod)&TTCueManager::getCurrentRamp, (TTSetterMethod)&TTCueManager::setCurrentRamp);
	
	addAttribute(Cues, kTypePointer);
	addAttributeProperty(Cues, readOnly, YES);
	addAttributeProperty(Cues, hidden, YES);
	
	addMessageWithArguments(NamespaceClear);
	addMessageWithArguments(NamespaceAppend);
	addMessageWithArguments(NamespaceRemove);
	addMessageWithArguments(NamespaceSelect);
	
	addMessage(Clear);
	
	addMessageWithArguments(Store);
	addMessageWithArguments(Recall);
	addMessageWithArguments(Output);
	addMessageWithArguments(Interpolate);
	addMessageWithArguments(Mix);
	addMessageWithArguments(Move);
	addMessageWithArguments(Remove);
	addMessageWithArguments(Rename);
	addMessageWithArguments(Copy);
	addMessageWithArguments(Sequence);
	
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
	
	mCues = new TTHash();
	mDefaultNamespace = new TTAddressItem();
}

TTCueManager::~TTCueManager()
{
	TTCuePtr    oldCue;
	TTSymbol    cueName;
	TTValue		v, names;
	TTUInt32	i;
	
	mCues->getKeys(names);
	for (i = 0; i < names.size(); i++) {
		cueName = names[i];
		mCues->lookup(cueName, v);
		oldCue = TTCuePtr((TTObjectBasePtr)v[0]);
		TTObjectBaseRelease(TTObjectBaseHandle(&oldCue));
	}
	
	delete mCues;
	mCues = NULL;
	
	delete mDefaultNamespace;
	mDefaultNamespace = NULL;
	
	if (mReturnLineCallback) {
		delete (TTValuePtr)mReturnLineCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mReturnLineCallback));
	}
}

TTErr TTCueManager::setOrder(const TTValue& value)
{	
	TTSymbol    name;
	TTValue		v, newOrder;
	
	// check if each name is part of the list
	for (TTUInt32 i = 0; i < value.size(); i++) {
		
		name = value[i];
		
		if (!mCues->lookup(name, v))
			newOrder.append(name);
	}
	
	// if the newOrder size is not equal to the current name list 
	if (newOrder.size() != mOrder.size())
		return kTTErrGeneric;
	
	mOrder = newOrder;
	return kTTErrNone;
}

TTErr TTCueManager::getCurrentDescription(TTValue& value)
{
	TTValue v;
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		
		if (mCurrentCue) {
			return mCurrentCue->getAttributeValue(kTTSym_description, value);
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::setCurrentDescription(const TTValue& value)
{
	TTValue v;
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		
		if (mCurrentCue) {
			v = value;
			mCurrentCue->setAttributeValue(kTTSym_description, v);
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::getCurrentRamp(TTValue& value)
{
	TTValue v;
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		
		if (mCurrentCue) {
			return mCurrentCue->getAttributeValue(kTTSym_ramp, value);
		}
	}
	
	value = kTTVal0;
	return kTTErrGeneric;
}

TTErr TTCueManager::setCurrentRamp(const TTValue& value)
{
	TTValue v;
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		
		if (mCurrentCue) {
			v = value;
			mCurrentCue->setAttributeValue(kTTSym_ramp, v);
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::NamespaceClear(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aNamespace;
	TTAddress           address = kTTAdrsEmpty;
	
	if (inputValue[0].type() == kTypeSymbol)
		address = inputValue[0];
	
	aNamespace = lookupNamespace(mNamespace);
	if (!aNamespace) aNamespace = mDefaultNamespace;
		
	if (address != kTTAdrsEmpty)
		aNamespace->find(address, &aNamespace);
	
	aNamespace->clear();
	
	return kTTErrNone;
}

TTErr TTCueManager::NamespaceAppend(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aNamespace, anItem;
	TTAddress           address;
	TTUInt32			i;
	TTErr				err;
	
	aNamespace = lookupNamespace(mNamespace);
	if (!aNamespace) aNamespace = mDefaultNamespace;
	
	for (i = 0; i < inputValue.size(); i++) {
		
		if (inputValue[i].type() == kTypeSymbol) {
			
			address = inputValue[i];
			
			err = aNamespace->append(address, &anItem);
			
			if (!err)
				anItem->setSelection(YES);
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::NamespaceRemove(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aNamespace;
	TTUInt32			i;
	TTAddress           address;
	
	aNamespace = lookupNamespace(mNamespace);
	if (!aNamespace) aNamespace = mDefaultNamespace;
	
	for (i = 0; i < inputValue.size(); i++) {
		
		if (inputValue[i].type() == kTypeSymbol) {
			
			address = inputValue[i];
			
			aNamespace->remove(address);
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::NamespaceSelect(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aNamespace;
	TTValue             v;
	
	// get cue name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
	// get cue at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		
		if (mCurrentCue) {
			
			aNamespace = lookupNamespace(mNamespace);
			if (!aNamespace) aNamespace = mDefaultNamespace;
			
			v = TTValue((TTPtr)aNamespace);
			mCurrentCue->sendMessage(TTSymbol("Select"), v, kTTValNONE);
			
			// refresh all namespace handlers (TTExplorer only)
			aNamespace->iterateHandlersSendingMessage(TTSymbol("SelectionRefresh"));
			
			return kTTErrNone;
		}
	}
	else 
		mCurrentPosition = 0;
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Clear()
{
	TTCuePtr	oldCue;
	TTSymbol    cueName;
	TTValue		v, names;
	TTUInt32	i;
	
	mCues->getKeys(names);
	if (names.size()) {
		
		for (i = 0; i < names.size(); i++) {
			
			cueName = names[i];
			mCues->lookup(cueName, v);
			oldCue = TTCuePtr((TTObjectBasePtr)v[0]);
			TTObjectBaseRelease(TTObjectBaseHandle(&oldCue));
		}
		
		delete mCues;
		mCues = new TTHash();
		mCurrentCue = NULL;
		mCurrent = kTTSymEmpty;
		mCurrentPosition = 0;
		mOrder = kTTValNONE;
		
		notifyOrderObservers();
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::Store(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aNamespace;
	TTValue             v, args;
	
	// get cue name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
	if (mCurrent == kTTSymEmpty)
		return kTTErrGeneric;
	
	// don't create two cues with the same name
	if (mCues->lookup(mCurrent, v)) {
		
		// prepare arguments
		args.append(mReturnLineCallback);
		
		// Create a new cue
		mCurrentCue = NULL;
		TTObjectBaseInstantiate(kTTSym_Cue, TTObjectBaseHandle(&mCurrentCue), args);
		
		mCurrentCue->setAttributeValue(kTTSym_name, mCurrent);
		
		// Append the new cue
		v = TTValue(mCurrentCue);
		mCues->append(mCurrent, v);
		mOrder.append(mCurrent);
		mCurrentPosition = mOrder.size();
		
		notifyOrderObservers();
	}
	else {
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		mCurrentCue->sendMessage(TTSymbol("Clear"));
	}
	
	aNamespace = lookupNamespace(mNamespace);
	if (!aNamespace) aNamespace = mDefaultNamespace;
	
	v = TTValue((TTPtr)aNamespace);
	return mCurrentCue->sendMessage(TTSymbol("Store"), v, kTTValNONE);
}

TTErr TTCueManager::Recall(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v;
    TTSymbol    anAddress = kTTAdrsRoot;
	
	// get cue name
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
	
	// get cue at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
    
    // get address from where recall starts (default : kAdrsRoot)
	if (inputValue[1].type() == kTypeSymbol)
		anAddress = inputValue[1];
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		
		if (mCurrentCue)
			return mCurrentCue->sendMessage(TTSymbol("Recall"), anAddress, kTTValNONE);
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Output(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v;
    TTSymbol    anAddress = kTTAdrsRoot;
	
	// get cue name
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
	
	// get cue at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
    
    // get address from where recall starts
	if (inputValue[1].type() == kTypeSymbol)
		anAddress = inputValue[1];
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		
		if (mCurrentCue)
			return mCurrentCue->sendMessage(TTSymbol("Output"), anAddress, kTTValNONE);
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Interpolate(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v1, v2;
    TTInt32     i1, i2;
	TTSymbol    name1, name2;
	TTCuePtr	cue1, cue2;
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
            name1 = mOrder[i1-1] ;
            
            inputValue.get(1, i2);
            name2 = mOrder[i2-1] ;
            
            position = inputValue[2] ;
        }
			
        // if cues exist
        if (!mCues->lookup(name1, v1) && !mCues->lookup(name2, v2)) {
            
            cue1 = TTCuePtr((TTObjectBasePtr)v1[0]);
            cue2 = TTCuePtr((TTObjectBasePtr)v2[0]);
            
            if (cue1 && cue2)
                return TTCueInterpolate(cue1, cue2, position);
        }
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Mix(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i, id, mixSize;
	TTSymbol    name;
	TTCuePtr	cue;
	TTValue		v, cues, factors;
	
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
        
        // if cue exist
        if (!mCues->lookup(name, v)) {
            
            cue = TTCuePtr((TTObjectBasePtr)v[0]);
            
            if (cue) {
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
	TTUInt32	i, newPosition;
	TTValue		v;
	
	if (inputValue.size() != 2)
		return kTTErrGeneric;
	
	// get cue name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
	// get cue at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
	
	// get new position
	if (inputValue[1].type() == kTypeInt32)
		newPosition = inputValue[1] ;
	
	if (newPosition < 1 || newPosition > mOrder.size())
		return kTTErrGeneric;
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		
		// copy all the mOrder names into a TTList
		// except the mCurrent
		for (i = 0; i < mOrder.size(); i++) {
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

TTErr TTCueManager::Remove(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol    name;
	TTValue     v, newOrder;
	
	// get cue name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
	// get cue at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		TTObjectBaseRelease(TTObjectBaseHandle(&mCurrentCue));
		mCues->remove(mCurrent);
		
		// remove the name without changing the order
		for (TTUInt32 i = 0; i < mOrder.size(); i++) {
			
			name = mOrder[i];
			
			if (name != mCurrent)
				newOrder.append(name);
		}
		
		mCurrentCue = NULL;
		mCurrent = kTTSymEmpty;
		mCurrentPosition = 0;
		mOrder = newOrder;
		
		notifyOrderObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Rename(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol    name, newName;
	TTUInt32	i;
	TTValue		v;
	
	if (inputValue.size() != 2)
		return kTTErrGeneric;
	
	// get cue name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
	// get cue at position
	if (inputValue[0].type() == kTypeInt32) {
		mCurrentPosition = inputValue[0];
		mCurrent = mOrder[mCurrentPosition-1];
	}
	
	// get new name
	if (inputValue[1].type() == kTypeSymbol)
		newName = inputValue[1] ;
	
	if (newName == kTTSymEmpty)
		return kTTErrGeneric;
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		
		// replace the name in the hash table
		mCues->remove(mCurrent);
		mCues->append(newName, v);
		
		mCurrentCue->setAttributeValue(kTTSym_name, newName);
		
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

TTErr TTCueManager::Copy(const TTValue& inputValue, TTValue& outputValue)
{
	TTCuePtr	aCueCopy;
	TTSymbol    nameCopy;
	TTString	s;
    TTInt32     positionCopy;
	TTValue		v, args;
	
	// get cue name
	if (inputValue[0].type() == kTypeSymbol)
		mCurrent = inputValue[0];
	
	// get cue at position
	if (inputValue[0].type() == kTypeInt32) {

// the following checks for whether we are using the new TTValue or the old one
#ifdef __TT_ELEMENT_H__
		mCurrentPosition = inputValue[0];
#else
		mCurrentPosition = inputValue[0];
#endif
		mCurrent = mOrder[mCurrentPosition-1];
	}
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
		
		// prepare arguments
		args.append(mReturnLineCallback);
		
		// create a new cue
		aCueCopy = NULL;
		TTObjectBaseInstantiate(kTTSym_Cue, TTObjectBaseHandle(&aCueCopy), args);
		
		// copy the current cue into
		TTCueCopy(mCurrentCue, aCueCopy);
		
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
		aCueCopy->setAttributeValue(kTTSym_name, nameCopy);
		
		// append the copy
		v = TTValue(aCueCopy);
		mCues->append(nameCopy, v);
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

TTErr TTCueManager::Sequence(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i;
	TTSymbol    nameToMerge, nameToOptimize;
	TTCuePtr	aCueToMerge, aCueToOptimize, stateCue, optimizedCue;
	TTValue		v;
	TTErr		err;
	
	// create an empty cue to merge the current state into
	stateCue = NULL;
	TTObjectBaseInstantiate(kTTSym_Cue, TTObjectBaseHandle(&stateCue), kTTValNONE);
	
	// merge and optimize each cues except the first
	for (i = 1; i < inputValue.size(); i++) {
		
		if (inputValue[i-1].type() == kTypeSymbol && inputValue[i].type() == kTypeSymbol) {
			
			nameToMerge = inputValue[i-1];
			nameToOptimize = inputValue[i];
			
			// if cue exists
			aCueToMerge = NULL;
			if (!mCues->lookup(nameToMerge, v))
				aCueToMerge = TTCuePtr((TTObjectBasePtr)v[0]);
			
			aCueToOptimize = NULL;
			if (!mCues->lookup(nameToOptimize, v))
				aCueToOptimize = TTCuePtr((TTObjectBasePtr)v[0]);
			
			if (aCueToMerge && aCueToOptimize) {
				
				// merge the cue before into the current state
				TTCueMerge(aCueToMerge, stateCue);
				
				// create an empty cue to store the result of optimization
				optimizedCue = NULL;
				TTObjectBaseInstantiate(kTTSym_Cue, TTObjectBaseHandle(&optimizedCue), kTTValNONE);
				optimizedCue->setAttributeValue(kTTSym_name, nameToOptimize);
				
				// optimize the cue considering the current state
				err = TTCueOptimize(aCueToOptimize, stateCue, optimizedCue);
				
				if (!err) {
					
					// replace the cue to optimize by the optimized cue
					TTObjectBaseRelease(TTObjectBaseHandle(&aCueToOptimize));
					mCues->remove(nameToOptimize);
					v = TTValue(optimizedCue);
					mCues->append(nameToOptimize, v);
				}
				else
					TTObjectBaseRelease(TTObjectBaseHandle(&optimizedCue));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler;
	TTSymbol		cueName;
    TTValue			v;
	TTUInt32		i;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
	for (i = 0; i < mOrder.size(); i++) {
		
		cueName = mOrder[i];
		if (!mCues->lookup(cueName, v)) {
			
			// start to write a cue
			xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "cue");
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST cueName.c_str());
			
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
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTValue			v;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// Switch on the name of the XML node
	
	// Starts file reading : clear the cue list
	if (aXmlHandler->mXmlNodeName == kTTSym_start) {
		Clear();
		return kTTErrNone;
	}
	
	// Ends file reading : bind on first cue
	if (aXmlHandler->mXmlNodeName == kTTSym_stop) {
		
		mCurrent = mOrder[0];
		if (!mCues->lookup(mCurrent, v)) {
			
			mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
			
			// send the end file to the cue to process the namespace
			v = TTValue(mCurrentCue);
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TTSymbol("Read"));
		}
		
		notifyOrderObservers();
		
		// use the namespace of the first cue
		NamespaceSelect(kTTVal1, kTTValNONE);
		
		return kTTErrNone;
	}
	
	// Flag node :
	if (aXmlHandler->mXmlNodeName == TTSymbol("cue")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// Get cue name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
			
			if (v[0].type() == kTypeSymbol) {
				
				mCurrent = v[0];
				
				// Create a new cue
				mCurrentCue = NULL;
				TTObjectBaseInstantiate(kTTSym_Cue, TTObjectBaseHandle(&mCurrentCue), kTTValNONE);
				
				mCurrentCue->setAttributeValue(kTTSym_name, mCurrent);
				
				v = TTValue(mCurrentCue);
				mCues->append(mCurrent, v);
				mOrder.append(mCurrent);
			}
		}
		
		// go back to the element to allow the cue to parse it
		xmlTextReaderMoveToElement((xmlTextReaderPtr)aXmlHandler->mReader);
	}
	
	// edit the current cue from the xml file using the XmlHandler
	if (mCurrentCue) {
		
		v = TTValue(mCurrentCue);
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		return aXmlHandler->sendMessage(TTSymbol("Read"));
	}
	else
		return kTTErrGeneric;
}

TTErr TTCueManager::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTString	*buffer;
	TTSymbol cueName;
	TTValue		v;
	
	aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
	buffer = aTextHandler->mWriter;
	
	for (TTUInt32 i = 0; i < mOrder.size(); i++) {
		
		cueName = mOrder[i];
		if (!mCues->lookup(cueName, v)) {
			
			*buffer += "\n";
			
			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TTSymbol("Write"));
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTDictionaryPtr	line;
	TTSymbol		flagName;
	TTValue			v;
	
	aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
	
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
					
					mCurrent = v[0];
					
					// Create a new cue
					mCurrentCue = NULL;
					TTObjectBaseInstantiate(kTTSym_Cue, TTObjectBaseHandle(&mCurrentCue), kTTValNONE);
					
					mCurrentCue->setAttributeValue(kTTSym_name, mCurrent);
					
					v = TTValue(mCurrentCue);
					mCues->append(mCurrent, v);
					mOrder.append(mCurrent);
				}
			}
		}
	}
	
	// edit the current cue with the line
	if (mCurrentCue) {
		
		v = TTValue(mCurrentCue);
		aTextHandler->setAttributeValue(kTTSym_object, v);
		aTextHandler->sendMessage(TTSymbol("Read"));
	}
	
	// if it is the last line : bind on the first cue
	if (aTextHandler->mLastLine) {
		
		mCurrent = mOrder[0];
		if (!mCues->lookup(mCurrent, v)) {
			mCurrentCue = TTCuePtr((TTObjectBasePtr)v[0]);
			
			notifyOrderObservers();
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::notifyOrderObservers()
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
