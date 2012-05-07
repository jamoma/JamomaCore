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
mNames(kTTValNONE),
mCurrent(kTTSymEmpty),
mNamespace(kTTValNONE),
mCues(NULL),
mCurrentCue(NULL)
{
	TTValue v;
	
	addAttributeWithSetter(Names, kTypeLocalValue);
	
	addAttribute(Current, kTypeSymbol);
	addAttributeProperty(Current, readOnly, YES);
	
	addAttributeWithSetter(Namespace, kTypeLocalValue);
	
	addAttribute(Cues, kTypePointer);
	addAttributeProperty(Cues, readOnly, YES);
	addAttributeProperty(Cues, hidden, YES);
	
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
	
	// needed to be handled by a TTBufferHandler
	addMessageWithArguments(WriteAsBuffer);
	addMessageProperty(WriteAsBuffer, hidden, YES);
	addMessageWithArguments(ReadFromBuffer);
	addMessageProperty(ReadFromBuffer, hidden, YES);
	
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

TTErr TTCueManager::setNames(const TTValue& value)
{	
	TTSymbolPtr name;
	TTValue		v, newNames;
	
	// check if each name is part of the list
	for (TTUInt32 i=0; i<value.getSize(); i++) {
		
		value.get(i, &name);
		
		if (!mCues->lookup(name, v))
			newNames.append(name);
	}
	
	// if the newNames size is equal to the current name list 
	if (newNames.getSize() != mNames.getSize())
		return kTTErrGeneric;
	
	mNames = newNames;
	return kTTErrNone;
}

TTErr TTCueManager::setNamespace(const TTValue& value)
{
	mNamespace = value;
	
	return kTTErrNone;
}

TTErr TTCueManager::New()
{
	TTCuePtr oldCue;
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
		mNames = kTTValNONE;
		
		notifyNamesObservers();
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::Store(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue v;
	
	// get cue name
	if (inputValue.getType(0) == kTypeSymbol)
		inputValue.get(0, &mCurrent);
	
	if (mCurrent == kTTSymEmpty)
		return kTTErrGeneric;
	
	if (mNamespace == kTTValNONE)
		return kTTErrGeneric;
	
	// don't create two cues with the same name
	if (mCues->lookup(mCurrent, v)) {
		
		// Create a new cue
		mCurrentCue = NULL;
		TTObjectInstantiate(TT("Cue"), TTObjectHandle(&mCurrentCue), kTTValNONE);
		
		mCurrentCue->setAttributeValue(kTTSym_name, mCurrent);
		
		// Append the new cue
		v = TTValue((TTPtr)mCurrentCue);
		mCues->append(mCurrent, v);
		mNames.append(mCurrent);
		
		notifyNamesObservers();
	}
	else {
		v.get(0, (TTPtr*)&mCurrentCue);
		mCurrentCue->sendMessage(TT("Clear"));
	}
	
	mCurrentCue->setAttributeValue(TT("namespace"), mNamespace);
	mCurrentCue->sendMessage(TT("Store"));
	
	return kTTErrNone;
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
		
		if (mCurrentCue) {
			mCurrentCue->getAttributeValue(TT("namespace"), mNamespace);
			return mCurrentCue->sendMessage(TT("Recall"));
		}
	}
}

TTErr TTCueManager::Remove(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbolPtr name;
	TTValue		v, newNames;
	
	// get cue name
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, &mCurrent);
	
	// if cue exists
	if (!mCues->lookup(mCurrent, v)) {
		
		v.get(0, (TTPtr*)&mCurrentCue);
		TTObjectRelease(TTObjectHandle(&mCurrentCue));
		mCues->remove(mCurrent);
		
		// remove the name without changing the order
		for (TTUInt32 i=0; i<mNames.getSize(); i++) {
			
			mNames.get(i, &name);
			
			if (name != mCurrent)
				newNames.append(name);
		}
		
		mCurrentCue = NULL;
		mCurrent = kTTSymEmpty;
		mNamespace = kTTValNONE;
		mNames = newNames;
		
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbolPtr			cueName;
    TTValue				v;
	TTUInt32			i;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	for (i = 0; i < mNames.getSize(); i++) {
		
		mNames.get(i, &cueName);
		if (!mCues->lookup(cueName, v)) {
			
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TT("Write"));
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTSymbolPtr		flagName;
	TTCuePtr		aCue;
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
		
		mNames.get(0, &mCurrent);
		if (!mCues->lookup(mCurrent, v)) {
			v.get(0, (TTPtr*)&mCurrentCue);
			
			mCurrentCue->getAttributeValue(TT("namespace"), mNamespace);
		}
		
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	// Flag node :
	if (aXmlHandler->mXmlNodeName == kTTSym_flag) {
		
		// Get flag name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v)) {
			
			if (v.getType() == kTypeSymbol) {
				
				v.get(0, &flagName);
				
				// if it is a cue flag
				if (flagName == TT("cue")) {
					
					// get cue name
					aXmlHandler->mXmlNodeValue.get(0, &mCurrent);
					
					// Create a new cue
					mCurrentCue = NULL;
					TTObjectInstantiate(TT("Cue"), TTObjectHandle(&mCurrentCue), kTTValNONE);
					
					mCurrentCue->setAttributeValue(kTTSym_name, mCurrent);
					
					v = TTValue((TTPtr)mCurrentCue);
					mCues->append(mCurrent, v);
					mNames.append(mCurrent);
				}
			}
			
			// go back to the element to allow the cue to parse it
			xmlTextReaderMoveToElement(aXmlHandler->mReader);
		}
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
	TTTextHandlerPtr	aTextHandler;
	ofstream			*file;
	TTSymbolPtr			cueName;
    TTValue				v;
	TTUInt32			i;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	file = aTextHandler->mWriter;
	
	for (i = 0; i < mNames.getSize(); i++) {
		
		mNames.get(i, &cueName);
		if (!mCues->lookup(cueName, v)) {
			
			*file << "\n";
			
			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TT("Write"));
			
			*file << "\n";
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	//ifstream		*file;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	//file = aTextHandler->mReader;
	
	// TODO
	
	return kTTErrNone;
}

TTErr TTCueManager::WriteAsBuffer(const TTValue& inputValue, TTValue& outputValue)
{
	TTBufferHandlerPtr aBufferHandler;
	TTString	*buffer;
	TTSymbolPtr cueName;
	TTValue		v;
	
	inputValue.get(0, (TTPtr*)&aBufferHandler);
	
	buffer = aBufferHandler->mWriter;
	
	for (TTUInt32 i = 0; i < mNames.getSize(); i++) {
		
		mNames.get(i, &cueName);
		if (!mCues->lookup(cueName, v)) {
			
			*buffer += "\n";
			
			aBufferHandler->setAttributeValue(kTTSym_object, v);
			aBufferHandler->sendMessage(TT("Write"));
		}
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::ReadFromBuffer(const TTValue& inputValue, TTValue& outputValue)
{
	TTBufferHandlerPtr aBufferHandler;
	TTDictionaryPtr	line;
	TTSymbolPtr		flagName;
	TTValue			v;
	
	inputValue.get(0, (TTPtr*)&aBufferHandler);
	
	// if it is the first line :
	if (aBufferHandler->mFirstLine)
		New();
	
	// parse the buffer line into TTDictionary
	line = TTScriptParseLine(*(aBufferHandler->mLine));
	
	if (line) {
		
		// replace the buffer line value by the parsed line dictionary
		aBufferHandler->mLine = new TTValue((TTPtr)line);
		
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
					mNames.append(mCurrent);
				}
			}
		}
		
		// edit the current cue with the line
		if (mCurrentCue) {
			
			v = TTValue(TTPtr(mCurrentCue));
			aBufferHandler->setAttributeValue(kTTSym_object, v);
			aBufferHandler->sendMessage(TT("Read"));
		}
		
		// if it is the last line : bind on the first cue
		if (aBufferHandler->mLastLine) {
			
			mNames.get(0, &mCurrent);
			if (!mCues->lookup(mCurrent, v)) {
				v.get(0, (TTPtr*)&mCurrentCue);
				
				mCurrentCue->getAttributeValue(TT("namespace"), mNamespace);
			}
			
			notifyNamesObservers();
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCueManager::notifyNamesObservers()
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
