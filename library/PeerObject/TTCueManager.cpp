/* 
 * A TTCueManager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTCueManager.h"

#define thisTTClass			TTCueManager
#define thisTTClassName		"CueManager"
#define thisTTClassTags		"cue, manager"

TT_MODULAR_CONSTRUCTOR,
mOrder(kTTValNONE),
mCurrent(kTTSymEmpty),
mNamespace(kTTSymEmpty),
mCues(NULL),
mCurrentCue(NULL)
{
	addAttributeWithSetter(Order, kTypeLocalValue);
	
	addAttribute(Current, kTypeSymbol);
	addAttributeProperty(Current, readOnly, YES);
	
	addAttribute(Namespace, kTypeSymbol);
	
	registerAttribute(TT("currentRamp"), kTypeLocalValue, NULL, (TTGetterMethod)&TTCueManager::getCurrentRamp, (TTSetterMethod)&TTCueManager::setCurrentRamp);
	
	addAttribute(Cues, kTypePointer);
	addAttributeProperty(Cues, readOnly, YES);
	addAttributeProperty(Cues, hidden, YES);
	
	addMessageWithArguments(NamespaceClear);
	addMessageWithArguments(NamespaceAppend);
	addMessageWithArguments(NamespaceRemove);
	
	addMessage(New);
	
	addMessageWithArguments(Store);
	addMessageWithArguments(Recall);
	addMessageWithArguments(Select);
	addMessageWithArguments(Interpolate);
	addMessageWithArguments(Mix);
	addMessageWithArguments(Remove);
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
}

TTCueManager::~TTCueManager()
{
	TTCuePtr oldCue;
	TTSymbolPtr cueName;
	TTValue		v, names;
	TTUInt32	i;
	
	mCues->getKeys(names);
	for (i = 0; i < names.getSize(); i++) {
		names.get(i, &cueName);
		mCues->lookup(cueName, v);
		v.get(0, (TTPtr*)&oldCue);
		TTObjectRelease(TTObjectHandle(&oldCue));
	}
	
	delete mCues;
	mCues = NULL;
}

TTErr TTCueManager::setOrder(const TTValue& value)
{	
	TTSymbolPtr name;
	TTValue		v, newOrder;
	
	// check if each name is part of the list
	for (TTUInt32 i=0; i<value.getSize(); i++) {
		
		value.get(i, &name);
		
		if (!mCues->lookup(name, v))
			newOrder.append(name);
	}
	
	// if the newOrder size is equal to the current name list 
	if (newOrder.getSize() != mOrder.getSize())
		return kTTErrGeneric;
	
	mOrder = newOrder;
	return kTTErrNone;
}

TTErr TTCueManager::getCurrentRamp(TTValue& value)
{
	TTValue v;
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
		if (mCurrentCue) {
			return mCurrentCue->getAttributeValue(TT("ramp"), value);
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
			mCurrentCue->setAttributeValue(TT("ramp"), v);
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::NamespaceClear(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeAddressItemPtr aNamespace;
	TTNodeAddressPtr	address;
	
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, &address);
	
	aNamespace = lookupNamespace(mNamespace);
	
	if (aNamespace) {
		
		if (address != kTTAdrsEmpty)
			aNamespace->find(address, &aNamespace);
		
		aNamespace->clear();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::NamespaceAppend(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeAddressItemPtr aNamespace, anItem;
	TTNodeAddressPtr	address;
	
	if (inputValue.getType() == kTypeSymbol) {
		
		inputValue.get(0, &address);
		
		aNamespace = lookupNamespace(mNamespace);
		
		if (aNamespace)
			return aNamespace->append(address, &anItem);
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::NamespaceRemove(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeAddressItemPtr aNamespace;
	TTNodeAddressPtr	address;
	
	if (inputValue.getType() == kTypeSymbol) {
		
		inputValue.get(0, &address);
		
		aNamespace = lookupNamespace(mNamespace);
		
		if (aNamespace)
			return aNamespace->remove(address);
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::New()
{
	TTCuePtr	oldCue;
	TTSymbolPtr cueName;
	TTValue		v, names;
	TTUInt32	i;
	
	mCues->getKeys(names);
	if (names.getSize()) {
		
		for (i = 0; i < names.getSize(); i++) {
			
			names.get(i, &cueName);
			mCues->lookup(cueName, v);
			v.get(0, (TTPtr*)&oldCue);
			TTObjectRelease(TTObjectHandle(&oldCue));
		}
		
		delete mCues;
		mCues = new TTHash();
		mCurrentCue = NULL;
		mCurrent = kTTSymEmpty;
		mOrder = kTTValNONE;
		
		notifyOrderObservers();
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::Store(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue	v;
	
	// get cue name
	if (inputValue.getType(0) == kTypeSymbol)
		inputValue.get(0, &mCurrent);
	
	if (mCurrent == kTTSymEmpty)
		return kTTErrGeneric;
	
	// don't create two cues with the same name
	if (mCues->lookup(mCurrent, v)) {
		
		// Create a new cue
		mCurrentCue = NULL;
		TTObjectInstantiate(TT("Cue"), TTObjectHandle(&mCurrentCue), kTTValNONE);
		
		mCurrentCue->setAttributeValue(kTTSym_name, mCurrent);
		mCurrentCue->setAttributeValue(kTTSym_namespace, mNamespace);
		
		// Append the new cue
		v = TTValue((TTPtr)mCurrentCue);
		mCues->append(mCurrent, v);
		mOrder.append(mCurrent);
		
		notifyOrderObservers();
	}
	else {
		v.get(0, (TTPtr*)&mCurrentCue);
		mCurrentCue->sendMessage(TT("Clear"));
	}
	
	return mCurrentCue->sendMessage(TT("Store"), mNamespace, kTTValNONE);
}

TTErr TTCueManager::Recall(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v;
	
	// get cue name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, &mCurrent);
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
		if (mCurrentCue)
			return mCurrentCue->sendMessage(TT("Recall"));
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Select(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v;
	
	// get cue name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, &mCurrent);
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		
		if (mCurrentCue)
			return mCurrentCue->sendMessage(TT("Select"));
	}
	
	return kTTErrGeneric;
}


TTErr TTCueManager::Interpolate(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v1, v2;
	TTSymbolPtr name1, name2;
	TTCuePtr	cue1, cue2;
	TTFloat32	position;
	
	// get cues name
	if (inputValue.getSize() == 3) {
		
		if (inputValue.getType(0) == kTypeSymbol && inputValue.getType(1) == kTypeSymbol && inputValue.getType(2) == kTypeFloat32) {
			
			inputValue.get(0, &name1);
			inputValue.get(1, &name2);
			inputValue.get(2, position);
			
			// if cues exist
			if (!mCues->lookup(name1, v1) && !mCues->lookup(name2, v2)) {
				
				v1.get(0, (TTPtr*)&cue1);
				v2.get(0, (TTPtr*)&cue2);
				
				if (cue1 && cue2)
					return TTCueInterpolate(cue1, cue2, position);
			}
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Mix(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i, mixSize;
	TTSymbolPtr name;
	TTCuePtr	cue;
	TTValue		v, cues, factors;
	
	mixSize = inputValue.getSize() / 2;
	if (inputValue.getSize() != mixSize * 2)
		return kTTErrGeneric;
	
	for (i = 0; i < mixSize * 2; i = i+2) {
		
		if (inputValue.getType(i) == kTypeSymbol && inputValue.getType(i+1) == kTypeFloat32) {
			
			inputValue.get(i, &name);
			
			// if cue exist
			if (!mCues->lookup(name, v)) {
				
				v.get(0, (TTPtr*)&cue);
				
				if (cue) {
					cues.append((TTPtr)cue);
					factors.append((TTFloat64)inputValue.getFloat32(i+1));
				}
			}
		}
	}
	
	return TTCueMix(cues, factors);
}

TTErr TTCueManager::Remove(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbolPtr name;
	TTValue		v, newOrder;
	
	// get cue name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, &mCurrent);
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		TTObjectRelease(TTObjectHandle(&mCurrentCue));
		mCues->remove(mCurrent);
		
		// remove the name without changing the order
		for (TTUInt32 i=0; i<newOrder.getSize(); i++) {
			
			newOrder.get(i, &name);
			
			if (name != mCurrent)
				newOrder.append(name);
		}
		
		mCurrentCue = NULL;
		mCurrent = kTTSymEmpty;
		mOrder = newOrder;
		
		notifyOrderObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::Sequence(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i;
	TTSymbolPtr nameToMerge, nameToOptimize;
	TTCuePtr	aCueToMerge, aCueToOptimize, stateCue, optimizedCue;
	TTValue		v;
	TTErr		err;
	
	// create an empty cue to merge the current state into
	stateCue = NULL;
	TTObjectInstantiate(TT("Cue"), TTObjectHandle(&stateCue), kTTValNONE);
	
	// merge and optimize each cues except the first
	for (i = 1; i < inputValue.getSize(); i++) {
		
		if (inputValue.getType(i-1) == kTypeSymbol && inputValue.getType(i) == kTypeSymbol) {
			
			inputValue.get(i-1, &nameToMerge);
			inputValue.get(i, &nameToOptimize);
			
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
				TTObjectInstantiate(TT("Cue"), TTObjectHandle(&optimizedCue), kTTValNONE);
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
	TTSymbolPtr			cueName;
    TTValue				v;
	TTUInt32			i;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	for (i = 0; i < mOrder.getSize(); i++) {
		
		mOrder.get(i, &cueName);
		if (!mCues->lookup(cueName, v)) {
			
			// start to write a cue
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "cue");
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST cueName->getCString());
			
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TT("Write"));
			
			// end to write a cue
			xmlTextWriterEndElement(aXmlHandler->mWriter);
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
		New();
		return kTTErrNone;
	}
	
	// Ends file reading : bind on first cue
	if (aXmlHandler->mXmlNodeName == kTTSym_stop) {
		
		mOrder.get(0, &mCurrent);
		if (!mCues->lookup(mCurrent, v)) {
			
			v.get(0, (TTPtr*)&mCurrentCue);
			
			// send the end file to the cue to process the namespace
			v = TTValue(TTPtr(mCurrentCue));
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TT("Read"));
		}
		
		notifyOrderObservers();
		
		return kTTErrNone;
	}
	
	// Flag node :
	if (aXmlHandler->mXmlNodeName == TT("cue")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// Get cue name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
			
			if (v.getType() == kTypeSymbol) {
				
				v.get(0, &mCurrent);
				
				// Create a new cue
				mCurrentCue = NULL;
				TTObjectInstantiate(TT("Cue"), TTObjectHandle(&mCurrentCue), kTTValNONE);
				
				mCurrentCue->setAttributeValue(kTTSym_name, mCurrent);
				
				v = TTValue((TTPtr)mCurrentCue);
				mCues->append(mCurrent, v);
				mOrder.append(mCurrent);
			}
		}
		
		// go back to the element to allow the cue to parse it
		xmlTextReaderMoveToElement(aXmlHandler->mReader);
	}
	
	// edit the current cue from the xml file using the XmlHandler
	if (mCurrentCue) {
		
		v = TTValue(TTPtr(mCurrentCue));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		return aXmlHandler->sendMessage(TT("Read"));
	}
	else
		return kTTErrGeneric;
}

TTErr TTCueManager::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTString	*buffer;
	TTSymbolPtr cueName;
	TTValue		v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	buffer = aTextHandler->mWriter;
	
	for (TTUInt32 i = 0; i < mOrder.getSize(); i++) {
		
		mOrder.get(i, &cueName);
		if (!mCues->lookup(cueName, v)) {
			
			*buffer += "\n";
			
			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TT("Write"));
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
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
		delete aTextHandler->mLine;
		aTextHandler->mLine = new TTValue((TTPtr)line);
		
		// match cue flag line : # (cue) name
		if (line->getSchema() == kTTSym_flag) {
			
			line->lookup(kTTSym_name, v);
			v.get(0, &flagName);
			
			if (flagName == TT("cue")) {
				
				// get cue name
				if (!line->getValue(v)) {
					
					v.get(0, &mCurrent);
					
					// Create a new cue
					mCurrentCue = NULL;
					TTObjectInstantiate(TT("Cue"), TTObjectHandle(&mCurrentCue), kTTValNONE);
					
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
		aTextHandler->sendMessage(TT("Read"));
	}
	
	// if it is the last line : bind on the first cue
	if (aTextHandler->mLastLine) {
		
		mOrder.get(0, &mCurrent);
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
