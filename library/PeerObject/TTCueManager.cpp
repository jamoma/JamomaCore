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
mCurrentNamespace(kTTValNONE),
mNamespace(NULL),
mCues(NULL),
mCurrentCue(NULL)
{
	addAttributeWithSetter(Names, kTypeLocalValue);
	
	addAttribute(Current, kTypeSymbol);
	addAttributeProperty(Current, readOnly, YES);
	
	addAttributeWithGetter(CurrentNamespace, kTypeLocalValue);
	addAttributeProperty(CurrentNamespace, readOnly, YES);
	
	registerAttribute(TT("namespace"), kTypeLocalValue, NULL, (TTGetterMethod)&TTCueManager::getNamespace, (TTSetterMethod)&TTCueManager::setNamespace);
	
	addAttribute(Cues, kTypePointer);
	addAttributeProperty(Cues, readOnly, YES);
	addAttributeProperty(Cues, hidden, YES);
	
	addMessage(NamespaceClear);
	addMessageWithArguments(NamespaceAppend);
	addMessageWithArguments(NamespaceRemove);
	
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
	
	mCues = new TTHash();
	mNamespace = new TTList();
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
	
	delete mNamespace;
	mNamespace = NULL;
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

TTErr TTCueManager::getCurrentNamespace(TTValue& value)
{
	value = mCurrentNamespace;
	return kTTErrNone;
}

TTErr TTCueManager::getNamespace(TTValue& value)
{
	return TTCueNamespaceEdit(mNamespace, value);
}

TTErr TTCueManager::setNamespace(const TTValue& value)
{
	mNamespace = TTCueNamespaceParse(value);
	return kTTErrNone;
}

TTErr TTCueManager::NamespaceClear()
{
	delete mNamespace;
	mNamespace = new TTList();
	return kTTErrNone;
}

TTErr TTCueManager::NamespaceAppend(const TTValue& inputValue, TTValue& outputValue)
{
	NamespacePtr aNamespaceToAppend = TTCueNamespaceParse(inputValue);
	
	TTCueNamespaceAppend(aNamespaceToAppend, mNamespace);
	
	TTCueNamespaceEdit(mNamespace, outputValue);
	
	return kTTErrNone;
}

TTErr TTCueManager::NamespaceRemove(const TTValue& inputValue, TTValue& outputValue)
{
	NamespacePtr aNamespaceToRemove = TTCueNamespaceParse(inputValue);
	
	TTCueNamespaceRemove(aNamespaceToRemove, mNamespace);
	
	TTCueNamespaceEdit(mNamespace, outputValue);
	
	return kTTErrNone;
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
		mCurrentNamespace = kTTValNONE;
		mNames = kTTValNONE;
		delete mNamespace;
		mNamespace = new TTList();
		
		notifyNamesObservers();
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
	
	v = TTValue((TTPtr)mNamespace);
	mCurrentCue->sendMessage(TT("Store"), v, mCurrentNamespace);
	
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
			mCurrentCue->getAttributeValue(TT("namespace"), mCurrentNamespace);
			return mCurrentCue->sendMessage(TT("Recall"));
		}
	}
	
	return kTTErrGeneric;
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
		mCurrentNamespace = kTTValNONE;
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
			
			// start to write a preset
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "cue");
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST cueName->getCString());
			
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TT("Write"));
			
			// end to write a preset
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
		
		mNames.get(0, &mCurrent);
		if (!mCues->lookup(mCurrent, v)) {
			
			v.get(0, (TTPtr*)&mCurrentCue);
			
			// send the end file to the cue to process the namespace
			v = TTValue(TTPtr(mCurrentCue));
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TT("Read"));
			
			mCurrentCue->getAttributeValue(TT("namespace"), mCurrentNamespace);
		}
		
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	// Flag node :
	if (aXmlHandler->mXmlNodeName == TT("cue")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// Get preset name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
			
			if (v.getType() == kTypeSymbol) {
				
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
	
	for (TTUInt32 i = 0; i < mNames.getSize(); i++) {
		
		mNames.get(i, &cueName);
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
					mNames.append(mCurrent);
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
			
			mNames.get(0, &mCurrent);
			if (!mCues->lookup(mCurrent, v)) {
				
				v.get(0, (TTPtr*)&mCurrentCue);
				mCurrentCue->getAttributeValue(TT("namespace"), mCurrentNamespace);
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
