/* 
 * A TTHarvester Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTPresetManager.h"

#define thisTTClass			TTPresetManager
#define thisTTClassName		"PresetManager"
#define thisTTClassTags		"preset, manager"

TT_MODULAR_CONSTRUCTOR,
mAddress(kTTSymEmpty),
mDirectory(NULL),
mPresetList(NULL),
mCurrentIndex(0),
mReturnValueCallback(NULL)
{
	TTValue v;
	
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTPresetManager is not NULL", mDirectory);
	
	if(arguments.getSize() == 2)
		arguments.get(1, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addMessage(New);
	addMessageWithArgument(Info);
	
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
	addMessageWithArgument(writeAsXml);
	addMessageWithArgument(readFromXml);
	
	mPresetList = new TTList();
}

TTPresetManager::~TTPresetManager()
{
	New();
	
	delete mPresetList;
	mPresetList = NULL;
	
	if (mReturnValueCallback)
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
}

TTErr TTPresetManager::setAddress(const TTValue& value)
{	
	New();
	mAddress = value;
	return kTTErrNone;
}

TTErr TTPresetManager::New()
{
	TTPresetPtr oldPreset;
	
	for (mPresetList->begin(); mPresetList->end(); mPresetList->next()) {
		mPresetList->current().get(0, (TTPtr*)&oldPreset);
		TTObjectRelease(TTObjectHandle(&oldPreset));
	}
	
	delete mPresetList;
	mPresetList = NULL;
	mPresetList = new TTList();
	mCurrentIndex = 0;
	
	return kTTErrNone;
}

TTErr TTPresetManager::Info(const TTValue& value)
{
	TTPresetPtr aPreset;
	TTValue		presetList, presetCurrent;
	
	if (!mReturnValueCallback)
		return kTTErrGeneric;
	
	// to -- this is not a good way to output informations ...
	
	// Preset list
	presetList.append(TT("preset/list"));
	for (mPresetList->begin(); mPresetList->end(); mPresetList->next()) {
		mPresetList->current().get(0, (TTPtr*)&aPreset);
		presetList.append(aPreset->mName);
	}
	
	mReturnValueCallback->notify(presetList);
	
	// Preset current
	presetCurrent.append(TT("preset/current"));
	aPreset = getPresetCurrent();
	if (aPreset) {
		presetCurrent.append(mCurrentIndex);
		presetCurrent.append(aPreset->mName);
	
		mReturnValueCallback->notify(presetCurrent);
	}
	
	return kTTErrNone;
}

TTErr TTPresetManager::Store(const TTValue& value)
{
	TTUInt8		index;
	TTSymbolPtr	presetName = kTTSymEmpty;
	TTPresetPtr	newPreset = NULL;
	TTValue		args;
	
	// First arg : index
	if (value.getType(0) == kTypeInt32) {
		value.get(0, index);
		if (index < 1)
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
	
	// Second arg : preset name
	if (value.getType(1) == kTypeSymbol) {
		value.get(1, &presetName);
		if (presetName == kTTSymEmpty)
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
	
	// Create a new preset
	args.append(mDirectory);
	TTObjectInstantiate(TT("Preset"), TTObjectHandle(&newPreset), args);
	
	newPreset->setAttributeValue(TT("Address"), mAddress);
	newPreset->setAttributeValue(TT("Name"), presetName);
	
	newPreset->sendMessage(TT("Fill"));
	
	// Insert at index
	mCurrentIndex = index;
	mPresetList->insert(mCurrentIndex-1, new TTValue((TTPtr)newPreset));		// -1 because user starts at 1 and TTList starts at 0
	
	return kTTErrNone;
}

TTErr TTPresetManager::StoreCurrent()
{
	TTPresetPtr currentPreset;
	
	currentPreset = getPresetCurrent();
	if (!currentPreset)
		return kTTErrGeneric;
	
	currentPreset->sendMessage(TT("Clear"));
	currentPreset->sendMessage(TT("Fill"));
	
	return kTTErrNone;
}

TTErr TTPresetManager::StoreNext(const TTValue& value)
{
	TTSymbolPtr	presetName = kTTSymEmpty;
	TTPresetPtr	newPreset = NULL;
	TTValue		args;
	
	// First arg : preset name
	if (value.getType() == kTypeSymbol) {
		value.get(0, &presetName);
		if (presetName == kTTSymEmpty)
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
	
	// Create a new preset
	args.append(mDirectory);
	TTObjectInstantiate(TT("Preset"), TTObjectHandle(&newPreset), args);
	
	newPreset->setAttributeValue(TT("Address"), mAddress);
	newPreset->setAttributeValue(TT("Name"), presetName);
	
	newPreset->sendMessage(TT("Fill"));
	
	// Insert AFTER current
	mCurrentIndex++;
	mPresetList->insert(mCurrentIndex-1, new TTValue((TTPtr)newPreset));		// -1 because user starts at 1 and TTList starts at 0
	
	return kTTErrNone;
}

TTErr TTPresetManager::StorePrevious(const TTValue& value)
{
	TTSymbolPtr	presetName = kTTSymEmpty;
	TTPresetPtr	newPreset = NULL;
	TTValue		args;
	
	// First arg : preset name
	if (value.getType() == kTypeSymbol) {
		value.get(0, &presetName);
		if (presetName == kTTSymEmpty)
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
	
	// Create a new preset
	args.append(mDirectory);
	TTObjectInstantiate(TT("Preset"), TTObjectHandle(&newPreset), args);
	
	newPreset->setAttributeValue(TT("Address"), mAddress);
	newPreset->setAttributeValue(TT("Name"), presetName);
	
	newPreset->sendMessage(TT("Fill"));
	
	// Insert BEFORE current
	mCurrentIndex--;
	if (mCurrentIndex < 1) 
		mCurrentIndex = 1;
	mPresetList->insert(mCurrentIndex-1, new TTValue((TTPtr)newPreset));		// -1 because user starts at 1 and TTList starts at 0
	
	return kTTErrNone;
}

TTErr TTPresetManager::Recall(const TTValue& value)
{
	TTUInt8		index;
	TTSymbolPtr	presetName = kTTSymEmpty;
	TTPresetPtr currentPreset;
	
	// First arg could be an index
	if (value.getType() == kTypeInt32) {
		value.get(0, index);
		if (index == 0)
			return kTTErrGeneric;
		
		mCurrentIndex = index;
		currentPreset = getPresetCurrent();
	}
	// or a preset name
	else if (value.getType() == kTypeSymbol) {
		value.get(0, &presetName);
		if (presetName == kTTSymEmpty)
			return kTTErrGeneric;
		
		currentPreset = getPresetWithName(presetName);
	}
	else
		return kTTErrGeneric;
	
	// Is the asked preset exists
	if (!currentPreset)
		return kTTErrGeneric;
	
	currentPreset->sendMessage(TT("Send"));
	
	return kTTErrNone;
}

TTErr TTPresetManager::RecallCurrent()
{
	TTPresetPtr currentPreset;
	
	currentPreset = getPresetCurrent();
	if (!currentPreset)
		return kTTErrGeneric;
	
	currentPreset->sendMessage(TT("Send"));
	
	return kTTErrNone;
}

TTErr TTPresetManager::RecallNext()
{
	TTPresetPtr nextPreset;
	
	mCurrentIndex++;
	nextPreset = getPresetCurrent();
	if (!nextPreset)
		return kTTErrGeneric;
		
	nextPreset->sendMessage(TT("Send"));
			
	return kTTErrNone;
}

TTErr TTPresetManager::RecallPrevious()
{
	TTPresetPtr previousPreset;
	
	mCurrentIndex--;
	previousPreset = getPresetCurrent();
	if (!previousPreset)
		return kTTErrGeneric;
	
	previousPreset->sendMessage(TT("Send"));
	
	return kTTErrNone;
}

TTErr TTPresetManager::Remove(const TTValue& value)
{
	TTUInt8		index;
	TTSymbolPtr	presetName = kTTSymEmpty;
	TTPresetPtr currentPreset;
	
	// First arg could be an index
	if (value.getType() == kTypeInt32) {
		value.get(0, index);
		if (index == 0)
			return kTTErrGeneric;
		
		mCurrentIndex = index;
		currentPreset = getPresetCurrent();
	}
	// or a preset name
	else if (value.getType() == kTypeSymbol) {
		value.get(0, &presetName);
		if (presetName == kTTSymEmpty)
			return kTTErrGeneric;
		
		currentPreset = getPresetWithName(presetName);
	}
	else
		return kTTErrGeneric;
	
	// Is the asked preset exists
	if (!currentPreset)
		return kTTErrGeneric;
	
	mPresetList->remove(TTValue((TTPtr)currentPreset));
	TTObjectRelease(TTObjectHandle(&currentPreset));
	
	return kTTErrNone;
}

TTErr TTPresetManager::RemoveCurrent()
{
	TTPresetPtr currentPreset;
	
	currentPreset = getPresetCurrent();
	if (!currentPreset)
		return kTTErrGeneric;
	
	mPresetList->remove(TTValue((TTPtr)currentPreset));
	TTObjectRelease(TTObjectHandle(&currentPreset));
	
	return kTTErrNone;
}

TTErr TTPresetManager::RemoveNext()
{
	TTPresetPtr nextPreset;
	
	mCurrentIndex++;
	nextPreset = getPresetCurrent();
	if (!nextPreset)
		return kTTErrGeneric;
	
	mPresetList->remove(TTValue((TTPtr)nextPreset));
	TTObjectRelease(TTObjectHandle(&nextPreset));
	
	return kTTErrNone;
}

TTErr TTPresetManager::RemovePrevious()
{
	TTPresetPtr previousPreset;
	
	mCurrentIndex--;
	previousPreset = getPresetCurrent();
	if (!previousPreset)
		return kTTErrGeneric;
	
	mPresetList->remove(TTValue((TTPtr)previousPreset));
	TTObjectRelease(TTObjectHandle(&previousPreset));
	
	return kTTErrNone;
}

TTErr TTPresetManager::writeAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTPresetPtr			aPreset;
    TTValue				v;
	TTUInt8				i;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	
    xmlTextWriterWriteComment(aXmlHandler->mWriter, BAD_CAST "TODO : TTContainer Description at mAddress");
	
	// Check if current preset exists
	i = 1;
	for (mPresetList->begin(); mPresetList->end(); mPresetList->next()) {
		
		xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "preset");
		xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "number", "%ld", BAD_CAST i);

		mPresetList->current().get(0, (TTPtr*)&aPreset);
		
		v.clear();
		v.append((TTPtr)aPreset);
		aXmlHandler->sendMessage(TT("Write"), v);
		
		// End a preset
		xmlTextWriterEndElement(aXmlHandler->mWriter);
		
		i++;
	}
    	
	return kTTErrNone;
}

TTErr TTPresetManager::readFromXml(const TTValue& value)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTSymbolPtr		presetName;
	TTUInt8			presetNumber;
	TTPresetPtr		newPreset, currentPreset;
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
		return kTTErrNone;
	}
	
	// Comment Node
	if (aXmlHandler->mXmlNodeName == TT("#comment"))
		return kTTErrNone;

	// Preset node
	if (aXmlHandler->mXmlNodeName == TT("preset")) {
		
		currentPreset = getPresetCurrent();
		presetName = kTTSymEmpty;
		presetNumber = 0;
		
		// get number
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "number") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
			if (v.getType() == kTypeInt32)
				v.get(0, presetNumber);
		}
		
		// get name
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "name") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v, true);
			if (v.getType() == kTypeSymbol)
				v.get(0, &presetName);
		}
		
		// Is it the beginning of a new preset or the end of one ?
		if (currentPreset)
			if (presetName == currentPreset->mName && presetNumber == mCurrentIndex)
				return kTTErrNone;
		
		// Create a new preset
		newPreset = NULL;
		args.append(mDirectory);
		TTObjectInstantiate(TT("Preset"), TTObjectHandle(&newPreset), args);
		
		newPreset->setAttributeValue(TT("Address"), mAddress);
		newPreset->setAttributeValue(TT("Name"), presetName);
		
		mPresetList->append(new TTValue((TTPtr)newPreset));
		
		mCurrentIndex++;
		
		return kTTErrNone;
	}
	
	// if there is a current preset
	currentPreset = getPresetCurrent();
	if (!currentPreset)
		return kTTErrGeneric;
	
	// fill the current preset by reading his content 
	// from the xml file using the XmlHandler
	v.clear();
	v.append((TTPtr)currentPreset);
	return aXmlHandler->sendMessage(TT("Read"), v);
}

TTPresetPtr TTPresetManager::getPresetCurrent()
{
	TTPresetPtr	aPreset;
	TTUInt8		i;
	
	// Note : user starts at 1 and TTList starts at 0
	
	if (mPresetList->isEmpty()) {
		mCurrentIndex = 0;
		return NULL;
	}
	
	// if there are presets but no current
	// always set the current on the first
	if (mCurrentIndex < 1) {
		mCurrentIndex = 1;
		return NULL;
	}
	
	// if the current index is higher 
	if (mCurrentIndex > mPresetList->getSize()) {
		mCurrentIndex = mPresetList->getSize();
		return NULL;
	}
	
	i = 1;
	for (mPresetList->begin(); mPresetList->end(); mPresetList->next()) {
		
		mPresetList->current().get(0, (TTPtr*)&aPreset);
		
		if (i == mCurrentIndex)
			break;

		i++;
	}
	
	mCurrentIndex = i;
	return aPreset;
}

TTPresetPtr TTPresetManager::getPresetWithName(TTSymbolPtr name)
{
	TTPresetPtr	aPreset;
	TTValue		v;
	TTSymbolPtr n;
	TTUInt8		i;
	TTBoolean	found;
	
	if (mPresetList->isEmpty()) {
		mCurrentIndex = 0;
		return NULL;
	}
	
	i = 1;
	found = false;
	for (mPresetList->begin(); mPresetList->end(); mPresetList->next()) {

			mPresetList->current().get(0, (TTPtr*)&aPreset);
			
			aPreset->getAttributeValue(TT("Name"), v);
			v.get(0, &n);
			if (n == name) {
				found = true;
				break;
			}
			
			i++;
		}
	
	if (found) {
		mCurrentIndex = i;
		return aPreset;
	}
	else {
		mCurrentIndex = 0;
		return NULL;
	}
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif
