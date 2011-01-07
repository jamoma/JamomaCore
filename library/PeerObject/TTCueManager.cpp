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
mAddresses(kTTValNONE),
mNames(kTTValNONE),
mCurrent(kTTValNONE),
mPresetArguments(kTTValNONE),
mCueList(NULL),
mCurrentIndex(0)
{
	TTValue v;
	
	mPresetArguments = arguments;
	
	addAttributeWithSetter(Addresses, kTypeLocalValue);
	
	addAttributeWithGetter(Names, kTypeLocalValue);
	addAttributeProperty(names, readOnly, YES);
	
	addAttributeWithGetter(Current, kTypeLocalValue);
	addAttributeProperty(current, readOnly, YES);
	
	addMessage(New);
	
	addMessageWithArgument(Store);
	addMessage(StoreCurrent);
	addMessageWithArgument(StoreNext);
	addMessageWithArgument(StorePrevious);

	addMessageWithArgument(Recall);
	addMessage(RecallCurrent);
	addMessage(RecallNext);
	addMessage(RecallPrevious);
	
	addMessageWithArgument(Remove);
	addMessage(RemoveCurrent);
	addMessage(RemoveNext);
	addMessage(RemovePrevious);

	// needed to be handled by a TTXmlHandler
	addMessageWithArgument(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	
	addMessageWithArgument(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	mCueList = new TTList();
	mAddresses = TTValue(kTTSymEmpty);
}

TTCueManager::~TTCueManager()
{
	TTCuePtr oldCue;
	TTCallbackPtr oldCallback = NULL;
	
	for (mCueList->begin(); mCueList->end(); mCueList->next()) {
		mCueList->current().get(0, (TTPtr*)&oldCue);
		TTObjectRelease(TTObjectHandle(&oldCue));
	}
	
	delete mCueList;
	mCueList = NULL;
	
	mPresetArguments.get(1, (TTPtr*)&oldCallback);
	if (oldCallback)
		TTObjectRelease(TTObjectHandle(&oldCallback));
	
	mPresetArguments.get(2, (TTPtr*)&oldCallback);
	if (oldCallback)
		TTObjectRelease(TTObjectHandle(&oldCallback));
	
	mPresetArguments.get(3, (TTPtr*)&oldCallback);
	if (oldCallback)
		TTObjectRelease(TTObjectHandle(&oldCallback));
	
	mPresetArguments.get(4, (TTPtr*)&oldCallback);
	if (oldCallback)
		TTObjectRelease(TTObjectHandle(&oldCallback));
	
	mPresetArguments.get(5, (TTPtr*)&oldCallback);
	if (oldCallback)
		TTObjectRelease(TTObjectHandle(&oldCallback));
}

TTErr TTCueManager::setAddresses(const TTValue& value)
{	
	mAddresses = value;
	return kTTErrNone;
}

TTErr TTCueManager::getNames(TTValue& value)
{	
	TTCuePtr aCue;
	
	if (mCueList->isEmpty())
		value = kTTSymEmpty;
	else
		for (mCueList->begin(); mCueList->end(); mCueList->next()) {
			mCueList->current().get(0, (TTPtr*)&aCue);
			value.append(aCue->mName);
		}
	
	return kTTErrNone;
}

TTErr TTCueManager::getCurrent(TTValue& value)
{	
	TTCuePtr aCue;
	
	aCue = getCueCurrent();
	
	if (aCue) {
		value.append(mCurrentIndex);
		value.append(aCue->mName);
	}
	
	return kTTErrNone;
}

TTErr TTCueManager::New()
{
	TTCuePtr oldCue;
	
	for (mCueList->begin(); mCueList->end(); mCueList->next()) {
		mCueList->current().get(0, (TTPtr*)&oldCue);
		TTObjectRelease(TTObjectHandle(&oldCue));
	}
	
	delete mCueList;
	mCueList = NULL;
	mCueList = new TTList();
	mCurrentIndex = 0;
	mAddresses = TTValue(kTTSymEmpty);
	
	// notify observers of the cue list
	notifyNamesObservers();
	
	return kTTErrNone;
}

TTErr TTCueManager::Store(const TTValue& value)
{
	TTUInt8		index;
	TTSymbolPtr	cueName = kTTSymEmpty;
	TTCuePtr	newCue = NULL;
	TTValue		args;
	
	// First arg : index
	if (value.getType(0) == kTypeInt32) {
		value.get(0, index);
		if (index < 1)
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
	
	// Second arg : cue name
	if (value.getType(1) == kTypeSymbol) {
		value.get(1, &cueName);
		if (cueName == kTTSymEmpty)
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
	
	// Create a new cue
	TTObjectInstantiate(TT("Cue"), TTObjectHandle(&newCue), mPresetArguments);
	
	newCue->setAttributeValue(kTTSym_addresses, mAddresses);
	newCue->setAttributeValue(kTTSym_name, cueName);
	
	newCue->sendMessage(kTTSym_Fill);
	
	// Insert at index
	mCurrentIndex = index;
	mCueList->insert(mCurrentIndex-1, new TTValue((TTPtr)newCue));		// -1 because user starts at 1 and TTList starts at 0
	
	// notify observers of the cue list
	notifyNamesObservers();
	
	return kTTErrNone;
}

TTErr TTCueManager::StoreCurrent()
{
	TTCuePtr currentCue;
	TTValue	newAddresses = mAddresses;	// to don't store with the current cue addresses
	
	currentCue = getCueCurrent();
	if (!currentCue)
		return kTTErrGeneric;
	
	mAddresses = newAddresses;
	currentCue->setAttributeValue(kTTSym_addresses, mAddresses);
	currentCue->sendMessage(kTTSym_Fill);
	
	// notify observers of the cue list
	notifyNamesObservers();
	
	return kTTErrNone;
}

TTErr TTCueManager::StoreNext(const TTValue& value)
{
	TTSymbolPtr	cueName = kTTSymEmpty;
	TTCuePtr	newCue = NULL;
	TTValue		args;
	
	// First arg : cue name
	if (value.getType() == kTypeSymbol) {
		value.get(0, &cueName);
		if (cueName == kTTSymEmpty)
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
	
	// Create a new cue
	TTObjectInstantiate(TT("Cue"), TTObjectHandle(&newCue), mPresetArguments);
	
	newCue->setAttributeValue(kTTSym_addresses, mAddresses);
	newCue->setAttributeValue(kTTSym_name, cueName);
	
	newCue->sendMessage(kTTSym_Fill);
	
	// Insert AFTER current
	mCurrentIndex++;
	mCueList->insert(mCurrentIndex-1, new TTValue((TTPtr)newCue));		// -1 because user starts at 1 and TTList starts at 0
	
	// notify observers of the cue list
	notifyNamesObservers();
	
	return kTTErrNone;
}

TTErr TTCueManager::StorePrevious(const TTValue& value)
{
	TTSymbolPtr	cueName = kTTSymEmpty;
	TTCuePtr	newCue = NULL;
	TTValue		args;
	
	// First arg : cue name
	if (value.getType() == kTypeSymbol) {
		value.get(0, &cueName);
		if (cueName == kTTSymEmpty)
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
	
	// Create a new cue
	TTObjectInstantiate(TT("Cue"), TTObjectHandle(&newCue), mPresetArguments);
	
	newCue->setAttributeValue(kTTSym_addresses, mAddresses);
	newCue->setAttributeValue(kTTSym_name, cueName);
	
	newCue->sendMessage(kTTSym_Fill);
	
	// Insert BEFORE current
	mCurrentIndex--;
	if (mCurrentIndex < 1) 
		mCurrentIndex = 1;
	mCueList->insert(mCurrentIndex-1, new TTValue((TTPtr)newCue));		// -1 because user starts at 1 and TTList starts at 0
	
	// notify observers of the cue list
	notifyNamesObservers();
	
	return kTTErrNone;
}

TTErr TTCueManager::Recall(const TTValue& value)
{
	TTUInt8		index;
	TTSymbolPtr	cueName = kTTSymEmpty;
	TTCuePtr currentCue;
	
	// First arg could be an index
	if (value.getType() == kTypeInt32) {
		value.get(0, index);
		if (index == 0)
			return kTTErrGeneric;
		
		mCurrentIndex = index;
		currentCue = getCueCurrent();
	}
	// or a cue name
	else if (value.getType() == kTypeSymbol) {
		value.get(0, &cueName);
		if (cueName == kTTSymEmpty)
			return kTTErrGeneric;
		
		currentCue = getCueWithName(cueName);
	}
	else
		return kTTErrGeneric;
	
	// Is the asked cue exists
	if (!currentCue)
		return kTTErrGeneric;
	
	currentCue->sendMessage(kTTSym_Send);
	
	return kTTErrNone;
}

TTErr TTCueManager::RecallCurrent()
{
	TTCuePtr currentCue;
	
	currentCue = getCueCurrent();
	if (!currentCue)
		return kTTErrGeneric;
	
	currentCue->sendMessage(kTTSym_Send);
	
	return kTTErrNone;
}

TTErr TTCueManager::RecallNext()
{
	TTCuePtr nextCue;
	
	mCurrentIndex++;
	nextCue = getCueCurrent();
	if (!nextCue)
		return kTTErrGeneric;
		
	nextCue->sendMessage(kTTSym_Send);
			
	return kTTErrNone;
}

TTErr TTCueManager::RecallPrevious()
{
	TTCuePtr previousCue;
	
	mCurrentIndex--;
	previousCue = getCueCurrent();
	if (!previousCue)
		return kTTErrGeneric;
	
	previousCue->sendMessage(kTTSym_Send);
	
	return kTTErrNone;
}

TTErr TTCueManager::Remove(const TTValue& value)
{
	TTUInt8		index;
	TTSymbolPtr	cueName = kTTSymEmpty;
	TTCuePtr currentCue;
	
	// First arg could be an index
	if (value.getType() == kTypeInt32) {
		value.get(0, index);
		if (index == 0)
			return kTTErrGeneric;
		
		mCurrentIndex = index;
		currentCue = getCueCurrent();
	}
	// or a cue name
	else if (value.getType() == kTypeSymbol) {
		value.get(0, &cueName);
		if (cueName == kTTSymEmpty)
			return kTTErrGeneric;
		
		currentCue = getCueWithName(cueName);
	}
	else
		return kTTErrGeneric;
	
	// Is the asked cue exists
	if (!currentCue)
		return kTTErrGeneric;
	
	mCueList->remove(TTValue((TTPtr)currentCue));
	TTObjectRelease(TTObjectHandle(&currentCue));
	
	// notify observers of the cue list
	notifyNamesObservers();
	
	return kTTErrNone;
}

TTErr TTCueManager::RemoveCurrent()
{
	TTCuePtr currentCue;
	
	currentCue = getCueCurrent();
	if (!currentCue)
		return kTTErrGeneric;
	
	mCueList->remove(TTValue((TTPtr)currentCue));
	TTObjectRelease(TTObjectHandle(&currentCue));
	
	// notify observers of the cue list
	notifyNamesObservers();
	
	return kTTErrNone;
}

TTErr TTCueManager::RemoveNext()
{
	TTCuePtr nextCue;
	
	mCurrentIndex++;
	nextCue = getCueCurrent();
	if (!nextCue)
		return kTTErrGeneric;
	
	mCueList->remove(TTValue((TTPtr)nextCue));
	TTObjectRelease(TTObjectHandle(&nextCue));
	
	// notify observers of the cue list
	notifyNamesObservers();
	
	return kTTErrNone;
}

TTErr TTCueManager::RemovePrevious()
{
	TTCuePtr previousCue;
	
	mCurrentIndex--;
	previousCue = getCueCurrent();
	if (!previousCue)
		return kTTErrGeneric;
	
	mCueList->remove(TTValue((TTPtr)previousCue));
	TTObjectRelease(TTObjectHandle(&previousCue));
	
	// notify observers of the cue list
	notifyNamesObservers();
	
	return kTTErrNone;
}

TTErr TTCueManager::WriteAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTCuePtr			aCue;
    TTValue				v;
	TTUInt8				i;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	
    xmlTextWriterWriteComment(aXmlHandler->mWriter, BAD_CAST "TODO : a description");
	
	// Check if current cue exists
	i = 1;
	for (mCueList->begin(); mCueList->end(); mCueList->next()) {
		
		xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "cue");
		xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "number", "%ld", BAD_CAST i);

		mCueList->current().get(0, (TTPtr*)&aCue);
		
		v = TTValue(TTPtr(aCue));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		aXmlHandler->sendMessage(TT("Write"));
		
		// End a cue
		xmlTextWriterEndElement(aXmlHandler->mWriter);
		
		i++;
	}
    	
	return kTTErrNone;
}

TTErr TTCueManager::ReadFromXml(const TTValue& value)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTSymbolPtr		cueName;
	TTUInt8			cueNumber;
	TTCuePtr		newCue, currentCue;
	TTValue			v, args;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// Switch on the name of the XML node
	
	// Starts reading
	if (aXmlHandler->mXmlNodeName == TT("start")) {
		New();
		return kTTErrNone;
	}
	
	// Ends reading
	if (aXmlHandler->mXmlNodeName == TT("end")) {
		mCurrentIndex = 1;
		getCueCurrent()->getAttributeValue(kTTSym_addresses, mAddresses);
		
		// notify observers of the cue list
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	// Comment Node
	if (aXmlHandler->mXmlNodeName == TT("#comment"))
		return kTTErrNone;

	// Cue node
	if (aXmlHandler->mXmlNodeName == TT("cue")) {
		
		currentCue = getCueCurrent();
		cueName = kTTSymEmpty;
		cueNumber = 0;
		
		// get number
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "number") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
			if (v.getType() == kTypeInt32)
				v.get(0, cueNumber);
		}
		
		// get name
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "name") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v, true);
			if (v.getType() == kTypeSymbol)
				v.get(0, &cueName);
		}
		
		// Is it the beginning of a new cue or the end of one ?
		if (currentCue)
			if (cueName == currentCue->mName && cueNumber == mCurrentIndex)
				return kTTErrNone;
		
		// Create a new cue
		newCue = NULL;
		TTObjectInstantiate(TT("Cue"), TTObjectHandle(&newCue), mPresetArguments);
		
		newCue->setAttributeValue(kTTSym_addresses, mAddresses);
		newCue->setAttributeValue(kTTSym_name, cueName);
		
		mCueList->append(new TTValue((TTPtr)newCue));
		
		mCurrentIndex++;
		
		return kTTErrNone;
	}
	
	// if there is a current cue
	currentCue = getCueCurrent();
	if (!currentCue)
		return kTTErrGeneric;
	
	// fill the current cue by reading his content 
	// from the xml file using the XmlHandler
	v = TTValue(TTPtr(currentCue));
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	return aXmlHandler->sendMessage(TT("Read"));
}

TTErr TTCueManager::WriteAsText(const TTValue& value)
{
	TTTextHandlerPtr aTextHandler;
	ofstream		*file;
	
	value.get(0, (TTPtr*)&aTextHandler);
	file = aTextHandler->mWriter;
	
	*file << "TTCueManager::WriteAsText -- TODO";
	
	return kTTErrNone;
}

TTErr TTCueManager::ReadFromText(const TTValue& value)
{
	TTTextHandlerPtr aTextHandler;
	ifstream		*file;
	
	value.get(0, (TTPtr*)&aTextHandler);
	file = aTextHandler->mReader;
	
	// TODO
	
	return kTTErrNone;
}

TTCuePtr TTCueManager::getCueCurrent()
{
	TTCuePtr	aCue;
	TTUInt8		i;
	
	// Note : user starts at 1 and TTList starts at 0
	
	if (mCueList->isEmpty()) {
		mCurrentIndex = 0;
		return NULL;
	}
	
	// if there are cues but no current
	// always set the current on the first
	if (mCurrentIndex < 1) {
		mCurrentIndex = 1;
		return NULL;
	}
	
	// if the current index is higher 
	if (mCurrentIndex > mCueList->getSize()) {
		mCurrentIndex = mCueList->getSize();
		return NULL;
	}
	
	i = 1;
	for (mCueList->begin(); mCueList->end(); mCueList->next()) {
		
		mCueList->current().get(0, (TTPtr*)&aCue);
		
		if (i == mCurrentIndex)
			break;

		i++;
	}
	
	mCurrentIndex = i;
	aCue->getAttributeValue(kTTSym_addresses, mAddresses);
	return aCue;
}

TTCuePtr TTCueManager::getCueWithName(TTSymbolPtr name)
{
	TTCuePtr	aCue;
	TTValue		v;
	TTSymbolPtr n;
	TTUInt8		i;
	TTBoolean	found;
	
	if (mCueList->isEmpty()) {
		mCurrentIndex = 0;
		return NULL;
	}
	
	i = 1;
	found = false;
	for (mCueList->begin(); mCueList->end(); mCueList->next()) {

			mCueList->current().get(0, (TTPtr*)&aCue);
			
			aCue->getAttributeValue(kTTSym_name, v);
			v.get(0, &n);
			if (n == name) {
				found = true;
				break;
			}
			
			i++;
		}
	
	if (found) {
		mCurrentIndex = i;
		aCue->getAttributeValue(kTTSym_addresses, mAddresses);
		return aCue;
	}
	else {
		mCurrentIndex = 0;
		mAddresses = kTTValNONE;
		return NULL;
	}
}

TTErr TTCueManager::notifyNamesObservers()
{
	TTValue v;
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(TT("names"), &anAttribute);
	
	if (!err) {
		getNames(v);
		anAttribute->sendNotification(kTTSym_notify, v);	// we use kTTSym_notify because we know that observers are TTCallback
	}
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif
