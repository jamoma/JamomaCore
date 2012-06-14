/* 
 * A Cue Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTCue.h"

#define thisTTClass			TTCue
#define thisTTClassName		"Cue"
#define thisTTClassTags		"cue"

TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mRamp(0),
mScript(NULL)
{
	TTValue args;
	
	addAttribute(Name, kTypeSymbol);
	addAttribute(Namespace, kTypeSymbol);
	addAttributeWithSetter(Ramp, kTypeUInt32);
	
	addMessage(Clear);
	addMessage(Store);
	addMessage(Recall);
	addMessage(Select);
	
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
	
	TTObjectInstantiate(TT("Script"), TTObjectHandle(&mScript), args);
}

TTCue::~TTCue()
{
	TTObjectRelease(TTObjectHandle(&mScript));
	mScript = NULL;
}

TTErr TTCue::setRamp(const TTValue& value)
{
	mRamp = value;
	
	// ask the script to bind each line on his TTObject 
	// to make test on the rampDrive attribute
	mScript->sendMessage(TT("Bind"), kTTAdrsRoot, kTTValNONE);
	
	return processRamp(mScript, mRamp);
}

TTErr TTCue::processRamp(TTObjectPtr aScript, TTUInt32 ramp)
{
	TTListPtr			lines;
	TTScriptPtr			aSubScript;
	TTDictionaryPtr		aLine;
	TTObjectPtr			anObject;
	TTSymbolPtr			rampDrive;
	TTValue				v, r;
	
	r = TTValue((int)ramp);
	
	aScript->getAttributeValue(TT("lines"), v);
	v.get(0, (TTPtr*)&lines);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		lines->current().get(0, (TTPtr*)&aLine);
		
		if (aLine->getSchema() == kTTSym_command) {
			
			// if it is a Data object with a ramp drive
			if (!aLine->lookup(kTTSym_object, v)) {
				
				v.get(0, (TTPtr*)&anObject);
				
				if (anObject->getName() == TT("Data")) {
					
					anObject->getAttributeValue(kTTSym_rampDrive, v);
					v.get(0, &rampDrive);
					
					if (rampDrive != kTTSym_none) {
						
						// set the ramp
						if (ramp)
							aLine->append(kTTSym_ramp, r);
						else
							aLine->remove(kTTSym_ramp);
					}
				}
			}
		}
		else if (aLine->getSchema() == kTTSym_script) {
			
			// get the script
			aLine->getValue(v);
			v.get(0, (TTPtr*)&aSubScript);
			
			if (aSubScript)
				processRamp(aSubScript, ramp);
		}
	}
	
	return kTTErrNone;
}

TTErr TTCue::Store()
{
	TTNodeAddressItemPtr aNamespace = NULL;
	TTValue	v, parsedLine;
	
	// get the namespace to follow
	aNamespace = lookupNamespace(mNamespace);
	
	if (aNamespace) {
		
		Clear();
		
		// 1. Append a cue flag with the name
		v = TTValue(TT("cue"));
		v.append(mName);
		mScript->sendMessage(TT("AppendFlag"), v, parsedLine);
		
		// 2. Append a comment line
		v = TTValue(TT("edit a comment"));
		mScript->sendMessage(TT("AppendComment"), v, parsedLine);
		
		// 3. Process namespace storage
		processStore(mScript, kTTAdrsEmpty, aNamespace);
		
		// 4. Process ramp
		if (mRamp) setRamp(mRamp);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCue::processStore(TTObjectPtr aScript, TTNodeAddressPtr scriptAddress, const TTNodeAddressItemPtr aNamespace)
{
	TTNodeAddressItemPtr anItem;
	TTNodePtr		aNode;
	TTDictionaryPtr	aLine;
	TTObjectPtr		anObject, aSubScript;
	TTList			aNodeList, childrenNodes;
	TTNodeAddressPtr address, dataAddress;
	TTSymbolPtr		service;
	TTValue			v, aSubNamespaceValue, parsedLine;
	TTErr			err;

	for (aNamespace->begin(); aNamespace->end(); aNamespace->next()) {
		
		anItem = aNamespace->current();
		
		if (!anItem->getSelection())
			continue;
		
		// edit absolute address to retreive the node
		address = TTADRS(anItem->getSymbol()->getCString());
		address = scriptAddress->appendAddress(address);
		
		aNodeList.clear();
		err = getDirectoryFrom(address)->Lookup(address, aNodeList, &aNode);
		
		if (!err) {
			
			// get object
			anObject = aNode->getObject();
			
			// edit the script depending on the object type
			if (anObject) {
				
				// DATA case : get value attribute
				if (anObject->getName() == TT("Data")) {
					
					v.clear();
					anObject->getAttributeValue(kTTSym_service, v);
					v.get(0, &service);
					
					if (service != kTTSym_parameter)
						continue;
					
					v.clear();
					anObject->getAttributeValue(kTTSym_value, v);
					
					if (v == kTTValNONE)
						continue;
					
					// append a command line
					v.prepend(anItem->getSymbol());
					aScript->sendMessage(TT("AppendCommand"), v, parsedLine);
				}
				
				// Any other case : create a sub script
				else {
					
					// edit a sub script line
					v = TTValue(anItem->getSymbol());
					aLine = TTScriptParseScript(v);
					
					// get the subscript
					aLine->getValue(v);
					v.get(0, (TTPtr*)&aSubScript);
						
					// process namespace item on sub script
					processStore(aSubScript, address, anItem);
											
					// CONTAINER case : append a comment line to the script before the sub script line
					if (anObject->getName() == TT("Container"))
						aScript->sendMessage(TT("AppendComment"), kTTValNONE, parsedLine);
					
					// append the sub script line
					v = TTValue((TTPtr)aLine);
					aScript->sendMessage(TT("Append"), v, parsedLine);
				}
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTCue::Clear()
{
	return mScript->sendMessage(TT("Clear"));
}

TTErr TTCue::Recall()
{
	return mScript->sendMessage(TT("Run"), kTTAdrsRoot, kTTValNONE);
}

TTErr TTCue::Select()
{
	TTNodeAddressItemPtr aNamespace = NULL;
	TTValue	v, parsedLine;
	
	// get the namespace to follow
	aNamespace = lookupNamespace(mNamespace);
	
	if (aNamespace)
		return processSelect(mScript, aNamespace);
}

TTErr TTCue::processSelect(TTObjectPtr aScript, TTNodeAddressItemPtr aNamespace)
{
	TTListPtr			lines;
	TTNodeAddressItemPtr		anItem;
	TTScriptPtr			aSubScript;
	TTDictionaryPtr		aLine;
	TTNodeAddressPtr	address;
	TTValue				v;
	
	aScript->getAttributeValue(TT("lines"), v);
	v.get(0, (TTPtr*)&lines);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		lines->current().get(0, (TTPtr*)&aLine);
		
		if (aLine->getSchema() == kTTSym_command || aLine->getSchema() == kTTSym_script) {
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			v.get(0, &address);
			
			// find item into the namespace
			if (!aNamespace->find(address, &anItem)) {
				
				// set it as select
				anItem->setSelection(YES);
				
				// process select on the subscript
				if (aLine->getSchema() == kTTSym_script) {
					
					// get the script
					aLine->getValue(v);
					v.get(0, (TTPtr*)&aSubScript);
					
					if (aSubScript)
						processSelect(aSubScript, anItem);
					
				}
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTCue::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTValue				v;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	// use WriteAsXml of the script
	v = TTValue(TTPtr(mScript));
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TT("Write"));
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTValue				v, parsedLine;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	// Cue node : append a cue flag with the name
	if (aXmlHandler->mXmlNodeName == TT("cue")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		v = TTValue(TT("cue"));
		v.append(mName);
		mScript->sendMessage(TT("AppendFlag"), v, parsedLine);
		
		return kTTErrNone;
	}
	
	// use ReadFromXml of the script
	v = TTValue(TTPtr(mScript));
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TT("Read"));
	
	return kTTErrNone;
}

TTErr TTCue::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr	aTextHandler;
	//TTNodeAddressPtr	address;
	TTValue				v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	/* get the address of the script
	mScript->getAttributeValue(kTTSym_address, v);
	v.get(0, &address);
	
	// write address of the script
	*buffer += "\t";
	*buffer += mAddress->getCString();
	*buffer += "\n";
	*/
	
	// use WriteAsText of the script
	v = TTValue(TTPtr(mScript));
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TT("Write"));
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTValue	v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
	
	// use ReadFromText of the script
	v = TTValue(TTPtr(mScript));
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TT("Read"));
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTBoolean TTCueCompareNodePriority(TTValue& v1, TTValue& v2) 
{
	TTNodePtr	n1, n2;
	TTObjectPtr o1, o2;
	TTValue		v;
	TTInt32		p1, p2;
	
	// get priority of v1
	v1.get(0, (TTPtr*)&n1);
	if (n1) {
		o1 = n1->getObject();
		if (o1) 
			if (!o1->getAttributeValue(kTTSym_priority, v))
				v.get(0, p1);
	}
	
	// get priority of v2
	v2.get(0, (TTPtr*)&n2);
	if (n2) {
		o2 = n2->getObject();
		if (o2) 
			if (!o2->getAttributeValue(kTTSym_priority, v))
				v.get(0, p2);
	}
	
	if (p1 == 0 && p2 == 0) return v1 < v2;
	
	if (p1 == 0) return NO;
	if (p2 == 0) return YES;
	
	return p1 < p2;
}

/*
TTNodeAddressItemPtr TTCueNamespaceParse(const TTValue& aNamespaceValue)
{
	TTNodeAddressItemPtr		returnedNamespace = new TTList();
	NamespaceItemPtr	anItem;
	TTSymbolPtr			aSymbol, nextSymbol;
	TTInt32				i, level;
	TTValue				aSubNamespaceValue;
	
	// for each address of the namespace value
	for (i = 0; i < aNamespaceValue.getSize(); i++) {
		
		aNamespaceValue.get(i, &aSymbol);
		
		if (aSymbol == TT("{") || aSymbol == TT("}"))
			continue;
		
		// create a namespace item
		anItem = new NamespaceItem(TTADRS(aSymbol->getCString()), NULL);
		
		// get sub namespace
		level = 0;
		aSubNamespaceValue.clear();
		while (i+1 < aNamespaceValue.getSize()) {
			
			aNamespaceValue.get(i+1, &nextSymbol);
			
			if (nextSymbol == TT("}"))
				level--;
			
			if (level)
				aSubNamespaceValue.append(nextSymbol);
			
			if (nextSymbol == TT("{"))
				level++;
			
			if (!level) break;
			else i++;
		}
		
		if (aSubNamespaceValue.getSize() > 0)
			anItem->children = TTCueNamespaceParse(aSubNamespaceValue);
		
		// append it to the namespace
		returnedNamespace->append((TTPtr)anItem);
	}
	
	return returnedNamespace;	
}

TTErr TTCueNamespaceEdit(const TTNodeAddressItemPtr aNamespace, TTValue& returnedNamespaceValue)
{
	NamespaceItemPtr anItem;
	
	if (!aNamespace)
		return kTTErrGeneric;
	
	for (aNamespace->begin(); aNamespace->end(); aNamespace->next()) {
		
		aNamespace->current().get(0, (TTPtr*)&anItem);
		returnedNamespaceValue.append(anItem->address);
		
		if (anItem->children) {
			
			if (anItem->children->getSize() > 0) {
				
				returnedNamespaceValue.append(TT("{"));
				TTCueNamespaceEdit(anItem->children, returnedNamespaceValue);
				returnedNamespaceValue.append(TT("}"));
			}
		}
	}
	
	return kTTErrNone;
}
 */

TTErr TTCueInterpolate(TTCue* cue1, TTCue* cue2, TTFloat64 position)
{
	cue1->mScript->sendMessage(TT("Bind"), kTTAdrsRoot, kTTValNONE);
	cue2->mScript->sendMessage(TT("Bind"), kTTAdrsRoot, kTTValNONE);
	
	return TTScriptInterpolate(cue1->mScript, cue2->mScript, position);
}

TTErr TTCueMix(const TTValue& cues, const TTValue& factors)
{
	TTCuePtr	aCue;
	TTValue		scripts;
	TTUInt32	i;
	
	for (i = 0; i < cues.getSize(); i++) {
		cues.get(i, (TTPtr*)&aCue);
		aCue->mScript->sendMessage(TT("Bind"), kTTAdrsRoot, kTTValNONE);
		
		scripts.append((TTPtr)aCue->mScript);
	}
	
	return TTScriptMix(scripts, factors);
}

TTErr TTCueMerge(TTCue* aCueToMerge, TTCue* mergedCue)
{
	return TTScriptMerge(aCueToMerge->mScript, mergedCue->mScript);
}

TTErr TTCueOptimize(TTCue* aCueToOptimize, TTCue* aCue, TTCue* optimizedCue)
{
	return TTScriptOptimize(aCueToOptimize->mScript, aCue->mScript, optimizedCue->mScript);
}