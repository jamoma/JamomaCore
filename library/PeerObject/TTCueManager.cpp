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
	TT_ASSERT("Correct number of args to create TTCueManager", arguments.getSize() == 0 || arguments.getSize() == 1);
	
	if (arguments.getSize() == 1)
		arguments.get(0, (TTPtr*)&mReturnLineCallback);
	
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
	TTCuePtr oldCue;
	TTSymbol cueName;
	TTValue		v, names;
	TTUInt32	i;
	
	mCues->getKeys(names);
	for (i = 0; i < names.getSize(); i++) {
		names.get(i, cueName);
		mCues->lookup(cueName, v);
		v.get(0, (TTPtr*)&oldCue);
		TTObjectRelease(TTObjectHandle(&oldCue));
	}
	
	delete mCues;
	mCues = NULL;
	
	delete mDefaultNamespace;
	mDefaultNamespace = NULL;
	
	if (mReturnLineCallback) {
		delete (TTValuePtr)mReturnLineCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnLineCallback));
	}
}

TTErr TTCueManager::setOrder(const TTValue& value)
{	
	TTSymbol name;
	TTValue		v, newOrder;
	
	// check if each name is part of the list
	for (TTUInt32 i=0; i<value.getSize(); i++) {
		
		value.get(i, name);
		
		if (!mCues->lookup(name, v))
			newOrder.append(name);
	}
	
	// if the newOrder size is not equal to the current name list 
	if (newOrder.getSize() != mOrder.getSize())
		return kTTErrGeneric;
	
	mOrder = newOrder;
	return kTTErrNone;
}

TTErr TTCueManager::getCurrentDescription(TTValue& value)
{
	TTValue v;
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
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
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
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
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
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
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
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
	
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, address);
	
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
	
	for (i = 0; i < inputValue.getSize(); i++) {
		
		if (inputValue.getType(i) == kTypeSymbol) {
			
			inputValue.get(i, address);
			
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
	
	for (i = 0; i < inputValue.getSize(); i++) {
		
		if (inputValue.getType(i) == kTypeSymbol) {
			
			inputValue.get(i, address);
			
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
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, mCurrent);
	
	// get cue at position
	if (inputValue.getType(0) == kTypeInt32) {
		inputValue.get(0, mCurrentPosition);
		mOrder.get(mCurrentPosition-1, mCurrent);
	}
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
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
	if (names.getSize()) {
		
		for (i = 0; i < names.getSize(); i++) {
			
			names.get(i, cueName);
			mCues->lookup(cueName, v);
			v.get(0, (TTPtr*)&oldCue);
			TTObjectRelease(TTObjectHandle(&oldCue));
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
	if (inputValue.getType(0) == kTypeSymbol)
		inputValue.get(0, mCurrent);
	
	if (mCurrent == kTTSymEmpty)
		return kTTErrGeneric;
	
	// don't create two cues with the same name
	if (mCues->lookup(mCurrent, v)) {
		
		// prepare arguments
		args.append((TTPtr)mReturnLineCallback);
		
		// Create a new cue
		mCurrentCue = NULL;
		TTObjectInstantiate(kTTSym_Cue, TTObjectHandle(&mCurrentCue), args);
		
		mCurrentCue->setAttributeValue(kTTSym_name, mCurrent);
		
		// Append the new cue
		v = TTValue((TTPtr)mCurrentCue);
		mCues->append(mCurrent, v);
		mOrder.append(mCurrent);
		mCurrentPosition = mOrder.getSize();
		
		notifyOrderObservers();
	}
	else {
		v.get(0, (TTPtr*)&mCurrentCue);
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
	
	// get cue name
	if (inputValue.getType() == kTypeSymbol) {
		inputValue.get(0, mCurrent);
		
		TTSymbol name;
		for (TTInt32 i = 0; i < mOrder.getSize(); i++) {
			mOrder.get(i, name);
			if (name == mCurrent) {
				mCurrentPosition = i+1;
				break;
			}
		}
	}
	
	// get cue at position
	if (inputValue.getType(0) == kTypeInt32) {
		inputValue.get(0, mCurrentPosition);
		mOrder.get(mCurrentPosition-1, mCurrent);
	}
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
		if (mCurrentCue)
			return mCurrentCue->sendMessage(TTSymbol("Recall"));
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Output(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v;
	
	// get cue name
	if (inputValue.getType() == kTypeSymbol) {
		inputValue.get(0, mCurrent);
		
		TTSymbol name;
		for (TTInt32 i = 0; i < mOrder.getSize(); i++) {
			mOrder.get(i, name);
			if (name == mCurrent) {
				mCurrentPosition = i+1;
				break;
			}
		}
	}
	
	// get cue at position
	if (inputValue.getType(0) == kTypeInt32) {
		inputValue.get(0, mCurrentPosition);
		mOrder.get(mCurrentPosition-1, mCurrent);
	}
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
		if (mCurrentCue)
			return mCurrentCue->sendMessage(TTSymbol("Output"));
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
	
	if (inputValue.getSize() == 3) {
		
        // get cues by name
		if (inputValue.getType(0) == kTypeSymbol && inputValue.getType(1) == kTypeSymbol && inputValue.getType(2) == kTypeFloat64) {
			
			inputValue.get(0, name1);
			inputValue.get(1, name2);
			inputValue.get(2, position);
        }
        
        // get cues by position
        else if (inputValue.getType(0) == kTypeInt32 && inputValue.getType(1) == kTypeInt32 && inputValue.getType(2) == kTypeFloat64) {
            
            inputValue.get(0, i1);
            mOrder.get(i1-1, name1);
            
            inputValue.get(1, i2);
            mOrder.get(i2-1, name2);
            
            inputValue.get(2, position);
        }
			
        // if cues exist
        if (!mCues->lookup(name1, v1) && !mCues->lookup(name2, v2)) {
            
            v1.get(0, (TTPtr*)&cue1);
            v2.get(0, (TTPtr*)&cue2);
            
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
	
	mixSize = inputValue.getSize() / 2;
	if (inputValue.getSize() != mixSize * 2)
		return kTTErrGeneric;
	
	for (i = 0; i < mixSize * 2; i = i+2) {
		
        if (inputValue.getType(i) == kTypeSymbol && inputValue.getType(i+1) == kTypeFloat64) {
            
			inputValue.get(i, name);
        }
        else if (inputValue.getType(i) == kTypeInt32 && inputValue.getType(i+1) == kTypeFloat64) {
            
            inputValue.get(i, id);
            mOrder.get(id-1, name);
        }
        
        // if cue exist
        if (!mCues->lookup(name, v)) {
            
            v.get(0, (TTPtr*)&cue);
            
            if (cue) {
                cues.append((TTPtr)cue);
                factors.append((TTFloat64)inputValue.getFloat32(i+1));
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
	
	if (inputValue.getSize() != 2)
		return kTTErrGeneric;
	
	// get cue name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, mCurrent);
	
	// get cue at position
	if (inputValue.getType() == kTypeInt32) {
		inputValue.get(0, mCurrentPosition);
		mOrder.get(mCurrentPosition-1, mCurrent);
	}
	
	// get new position
	if (inputValue.getType(1) == kTypeInt32)
		inputValue.get(1, newPosition);
	
	if (newPosition < 1 || newPosition > mOrder.getSize())
		return kTTErrGeneric;
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
		// copy all the mOrder names into a TTList
		// except the mCurrent
		for (i=0; i < mOrder.getSize(); i++) {
			mOrder.get(i, name);
			
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
			temp.current().get(0, name);
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
	TTSymbol name;
	TTValue		v, newOrder;
	
	// get cue name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, mCurrent);
	
	// get cue at position
	if (inputValue.getType() == kTypeInt32) {
		inputValue.get(0, mCurrentPosition);
		mOrder.get(mCurrentPosition-1, mCurrent);
	}
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		TTObjectRelease(TTObjectHandle(&mCurrentCue));
		mCues->remove(mCurrent);
		
		// remove the name without changing the order
		for (TTUInt32 i=0; i<mOrder.getSize(); i++) {
			
			mOrder.get(i, name);
			
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
	TTSymbol name, newName;
	TTUInt32	i;
	TTValue		v;
	
	if (inputValue.getSize() != 2)
		return kTTErrGeneric;
	
	// get cue name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, mCurrent);
	
	// get cue at position
	if (inputValue.getType() == kTypeInt32) {
		inputValue.get(0, mCurrentPosition);
		mOrder.get(mCurrentPosition-1, mCurrent);
	}
	
	// get new name
	if (inputValue.getType(1) == kTypeSymbol)
		inputValue.get(1, newName);
	
	if (newName == kTTSymEmpty)
		return kTTErrGeneric;
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
		// replace the name in the hash table
		mCues->remove(mCurrent);
		mCues->append(newName, v);
		
		mCurrentCue->setAttributeValue(kTTSym_name, newName);
		
		// replace the name in the order
		for (i=0; i<mOrder.getSize(); i++) {
			
			mOrder.get(i, name);
			
			if (name == mCurrent) {
				mOrder.set(i, newName);
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
	TTSymbol nameCopy;
	TTString	s;
    TTInt32     positionCopy;
	TTValue		v, args;
	
	// get cue name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, mCurrent);
	
	// get cue at position
	if (inputValue.getType() == kTypeInt32) {

// the following checks for whether we are using the new TTValue or the old one
#ifdef __TT_ELEMENT_H__
		mCurrentPosition = inputValue[0];
#else
		inputValue.get(0, mCurrentPosition);
#endif
		mOrder.get(mCurrentPosition-1, mCurrent);
	}
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
		// prepare arguments
		args.append((TTPtr)mReturnLineCallback);
		
		// create a new cue
		aCueCopy = NULL;
		TTObjectInstantiate(kTTSym_Cue, TTObjectHandle(&aCueCopy), args);
		
		// copy the current cue into
		TTCueCopy(mCurrentCue, aCueCopy);
		
        // maybe there is a name for the copy
        if (inputValue.getSize() >= 2 && inputValue.getType(1) == kTypeSymbol) {
            inputValue.get(1, nameCopy);
            
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
		v = TTValue((TTPtr)aCueCopy);
		mCues->append(nameCopy, v);
		mOrder.append(nameCopy);
		mCurrent = nameCopy;
		mCurrentPosition = mOrder.getSize();
		
        // maybe there is a position for the copy
        if (inputValue.getSize() == 3 && inputValue.getType(2) == kTypeInt32) {
            
            inputValue.get(2, positionCopy);
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
	TTObjectInstantiate(kTTSym_Cue, TTObjectHandle(&stateCue), kTTValNONE);
	
	// merge and optimize each cues except the first
	for (i = 1; i < inputValue.getSize(); i++) {
		
		if (inputValue.getType(i-1) == kTypeSymbol && inputValue.getType(i) == kTypeSymbol) {
			
			inputValue.get(i-1, nameToMerge);
			inputValue.get(i, nameToOptimize);
			
			// if cue exists
			aCueToMerge = NULL;
			if (!mCues->lookup(nameToMerge, v))
				v.get(0, (TTPtr*)&aCueToMerge);
			
			aCueToOptimize = NULL;
			if (!mCues->lookup(nameToOptimize, v))
				v.get(0, (TTPtr*)&aCueToOptimize);
			
			if (aCueToMerge && aCueToOptimize) {
				
				// merge the cue before into the current state
				TTCueMerge(aCueToMerge, stateCue);
				
				// create an empty cue to store the result of optimization
				optimizedCue = NULL;
				TTObjectInstantiate(kTTSym_Cue, TTObjectHandle(&optimizedCue), kTTValNONE);
				optimizedCue->setAttributeValue(kTTSym_name, nameToOptimize);
				
				// optimize the cue considering the current state
				err = TTCueOptimize(aCueToOptimize, stateCue, optimizedCue);
				
				if (!err) {
					
					// replace the cue to optimize by the optimized cue
					TTObjectRelease(TTObjectHandle(&aCueToOptimize));
					mCues->remove(nameToOptimize);
					v = TTValue((TTPtr)optimizedCue);
					mCues->append(nameToOptimize, v);
				}
				else
					TTObjectRelease(TTObjectHandle(&optimizedCue));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbol			cueName;
    TTValue				v;
	TTUInt32			i;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	for (i = 0; i < mOrder.getSize(); i++) {
		
		mOrder.get(i, cueName);
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
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
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
		
		mOrder.get(0, mCurrent);
		if (!mCues->lookup(mCurrent, v)) {
			
			v.get(0, (TTPtr*)&mCurrentCue);
			
			// send the end file to the cue to process the namespace
			v = TTValue(TTPtr(mCurrentCue));
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
			
			if (v.getType() == kTypeSymbol) {
				
				v.get(0, mCurrent);
				
				// Create a new cue
				mCurrentCue = NULL;
				TTObjectInstantiate(kTTSym_Cue, TTObjectHandle(&mCurrentCue), kTTValNONE);
				
				mCurrentCue->setAttributeValue(kTTSym_name, mCurrent);
				
				v = TTValue((TTPtr)mCurrentCue);
				mCues->append(mCurrent, v);
				mOrder.append(mCurrent);
			}
		}
		
		// go back to the element to allow the cue to parse it
		xmlTextReaderMoveToElement((xmlTextReaderPtr)aXmlHandler->mReader);
	}
	
	// edit the current cue from the xml file using the XmlHandler
	if (mCurrentCue) {
		
		v = TTValue(TTPtr(mCurrentCue));
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
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	buffer = aTextHandler->mWriter;
	
	for (TTUInt32 i = 0; i < mOrder.getSize(); i++) {
		
		mOrder.get(i, cueName);
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
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
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
			v.get(0, flagName);
			
			if (flagName == TTSymbol("cue")) {
				
				// get cue name
				if (!line->getValue(v)) {
					
					v.get(0, mCurrent);
					
					// Create a new cue
					mCurrentCue = NULL;
					TTObjectInstantiate(kTTSym_Cue, TTObjectHandle(&mCurrentCue), kTTValNONE);
					
					mCurrentCue->setAttributeValue(kTTSym_name, mCurrent);
					
					v = TTValue((TTPtr)mCurrentCue);
					mCues->append(mCurrent, v);
					mOrder.append(mCurrent);
				}
			}
		}
	}
	
	// edit the current cue with the line
	if (mCurrentCue) {
		
		v = TTValue(TTPtr(mCurrentCue));
		aTextHandler->setAttributeValue(kTTSym_object, v);
		aTextHandler->sendMessage(TTSymbol("Read"));
	}
	
	// if it is the last line : bind on the first cue
	if (aTextHandler->mLastLine) {
		
		mOrder.get(0, mCurrent);
		if (!mCues->lookup(mCurrent, v)) {
			v.get(0, (TTPtr*)&mCurrentCue);
			
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
