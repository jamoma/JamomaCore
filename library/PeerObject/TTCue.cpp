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
	addAttributeWithSetter(Ramp, kTypeUInt32);
	
	addMessage(Clear);
	addMessageWithArguments(Store);
	addMessage(Recall);
	addMessageWithArguments(Select);
	
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
	
	TTObjectInstantiate(kTTSym_Script, TTObjectHandle(&mScript), args);
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
	mScript->sendMessage(TTSymbol("Bind"), kTTAdrsRoot, kTTValNONE);
	
	return processRamp(mScript, mRamp);
}

TTErr TTCue::processRamp(TTObjectPtr aScript, TTUInt32 ramp)
{
	TTListPtr			lines;
	TTScriptPtr			aSubScript;
	TTDictionaryPtr		aLine;
	TTObjectPtr			anObject;
	TTSymbol			rampDrive;
	TTValue				v, r;
	
	r = TTValue((int)ramp);
	
	aScript->getAttributeValue(TTSymbol("lines"), v);
	v.get(0, (TTPtr*)&lines);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		lines->current().get(0, (TTPtr*)&aLine);
		
		if (aLine->getSchema() == kTTSym_command) {
			
			// if it is a Data object with a ramp drive
			if (!aLine->lookup(kTTSym_object, v)) {
				
				v.get(0, (TTPtr*)&anObject);
				
				if (anObject->getName() == kTTSym_Data) {
					
					anObject->getAttributeValue(kTTSym_rampDrive, v);
					v.get(0, rampDrive);
					
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

TTErr TTCue::Store(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr aNamespace = NULL;
	TTSymbol			name;
	TTValue				v, parsedLine;
	
	if (inputValue.getType() == kTypePointer)
		inputValue.get(0, (TTPtr*)&aNamespace);
	
	else if (inputValue.getType() == kTypeSymbol) {
		inputValue.get(0, name);
		aNamespace = lookupNamespace(name);
	}
	
	if (aNamespace) {
		
		Clear();
		
		// 1. Append a cue flag with the name
		v = TTValue(TTSymbol("cue"));
		v.append(mName);
		mScript->sendMessage(TTSymbol("AppendFlag"), v, parsedLine);
		
		// 2. Append a comment line
		v = TTValue(TTSymbol("edit a comment"));
		mScript->sendMessage(TTSymbol("AppendComment"), v, parsedLine);
		
		// 3. Process namespace storage
		processStore(mScript, kTTAdrsEmpty, aNamespace);
		
		// 4. Process ramp
		if (mRamp) setRamp(mRamp);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCue::processStore(TTObjectPtr aScript, TTAddress scriptAddress, const TTAddressItemPtr aNamespace)
{
	TTAddressItemPtr nameItem, instanceItem, anItem;
	TTString		nameInstance;
	TTNodePtr		aNode;
	TTDictionaryPtr	aLine;
	TTObjectPtr		anObject, aSubScript;
	TTList			aNodeList, childrenNodes;
	TTAddress		address, childAddress;
	TTSymbol		service;
	TTValue			v, parsedLine;
	TTBoolean		empty = YES;
	TTErr			err;

	// each script line is a name.instance (which means 2 levels of the namespace)
	
	// for all names
	for (aNamespace->begin(); aNamespace->end(); aNamespace->next()) {
		
		nameItem = aNamespace->current();
		
		// for all instances of a name
		for (nameItem->begin(); nameItem->end(); nameItem->next()) {
			
			instanceItem = nameItem->current();
			
			if (!instanceItem->getSelection())
				continue;
			
			// edit absolute address to retreive the node
			nameInstance = nameItem->getSymbol().c_str();
			if (instanceItem->getSymbol() != kTTSymEmpty) {
				nameInstance += C_INSTANCE;
				nameInstance += instanceItem->getSymbol().c_str();
			}
			
			address = scriptAddress.appendAddress(TTAddress(nameInstance));
			
			aNodeList.clear();
			err = getDirectoryFrom(address)->Lookup(address, aNodeList, &aNode);
			
			if (!err) {
				
				// get object
				anObject = aNode->getObject();
				
				// edit the script depending on the object type
				if (anObject) {
					
					// DATA case : get value attribute
					if (anObject->getName() == kTTSym_Data) {
						
						v.clear();
						anObject->getAttributeValue(kTTSym_service, v);
						v.get(0, service);
						
						if (service != kTTSym_parameter) {
							
							// unselect this item from the namespace
							instanceItem->setSelection(NO);
							continue;
						}
						
						v.clear();
						anObject->getAttributeValue(kTTSym_value, v);
						
						if (v == kTTValNONE)
							continue;
						
						// append a command line
						v.prepend(TT(nameInstance));
						aScript->sendMessage(TTSymbol("AppendCommand"), v, parsedLine);
						
						// the script is not empty
						empty = NO;
						
						continue;
					}
				}
				
				// Any other case : create a sub script
				
				// edit a sub script line
				v = TTValue(TT(nameInstance));
				aLine = TTScriptParseScript(v);
				
				// get the sub script
				aLine->getValue(v);
				v.get(0, (TTPtr*)&aSubScript);
				
				// if the namespace is empty : fill it with all children below
				if (instanceItem->isEmpty()) {
					
					// get all children of the node
					aNode->getChildren(S_WILDCARD, S_WILDCARD, childrenNodes);
					
					// sort the NodeList using object priority order
					childrenNodes.sort(&TTCueCompareNodePriority);
					
					// append each name.instance to the sub namespace
					for (childrenNodes.begin(); childrenNodes.end(); childrenNodes.next()) {
						
						childrenNodes.current().get(0, (TTPtr*)&aNode);
						
						// get name.instance
						aNode->getAddress(childAddress, address);
						
						// append to the namespace
						instanceItem->append(childAddress, &anItem);
						
						anItem->setSelection(YES);
					}
				}
				
				// process namespace item on sub script
				err = processStore(aSubScript, address, instanceItem);
				
				// if the sub script is not empty
				if (!err) {
					
					if (anObject) {
						
						// CONTAINER case : append a comment line to the script before the sub script line
						if (anObject->getName() == kTTSym_Container)
							aScript->sendMessage(TTSymbol("AppendComment"), kTTValNONE, parsedLine);
					}
					
					// append the sub script line
					v = TTValue((TTPtr)aLine);
					aScript->sendMessage(TTSymbol("Append"), v, parsedLine);
					
					// the script is not empty
					empty = NO;
				}
			}
		}
	}
	
	if (empty)
		return kTTErrGeneric;
	else
		return kTTErrNone;
}

TTErr TTCue::Clear()
{
	return mScript->sendMessage(TTSymbol("Clear"));
}

TTErr TTCue::Recall()
{
	return mScript->sendMessage(TTSymbol("Run"), kTTAdrsRoot, kTTValNONE);
}

TTErr TTCue::Select(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr aNamespace = NULL;
	TTSymbol			name;
	
	if (inputValue.getType() == kTypePointer)
		inputValue.get(0, (TTPtr*)&aNamespace);
	
	else if (inputValue.getType() == kTypeSymbol) {
		inputValue.get(0, name);
		aNamespace = lookupNamespace(name);
	}
	
	if (aNamespace) {
		
		// unselect all the namespace
		aNamespace->setSelection(NO, YES);
		
		return processSelect(mScript, aNamespace);
	}
}

TTErr TTCue::processSelect(TTObjectPtr aScript, TTAddressItemPtr aNamespace)
{
	TTListPtr			lines;
	TTAddressItemPtr anItem, parentItem;
	TTScriptPtr			aSubScript;
	TTDictionaryPtr		aLine;
	TTAddress	address;
	TTValue				v;
	
	aScript->getAttributeValue(TTSymbol("lines"), v);
	v.get(0, (TTPtr*)&lines);
	
	// select all items which are in the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		lines->current().get(0, (TTPtr*)&aLine);
		
		if (aLine->getSchema() == kTTSym_command || aLine->getSchema() == kTTSym_script) {
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			v.get(0, address);
			
			// find item into the namespace
			if (!aNamespace->find(address, &anItem)) {
				
				// select it
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
	aXmlHandler->sendMessage(TTSymbol("Write"));
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTValue				v, parsedLine;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	// Cue node : append a cue flag with the name
	if (aXmlHandler->mXmlNodeName == TTSymbol("cue")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		v = TTValue(TTSymbol("cue"));
		v.append(mName);
		mScript->sendMessage(TTSymbol("AppendFlag"), v, parsedLine);
		
		return kTTErrNone;
	}
	
	// use ReadFromXml of the script
	v = TTValue(TTPtr(mScript));
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TTSymbol("Read"));
	
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
	aTextHandler->sendMessage(TTSymbol("Write"));
	
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
	aTextHandler->sendMessage(TTSymbol("Read"));
	
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
	TTInt32		p1 = 0;
	TTInt32		p2 = 0;
	
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

TTErr TTCueInterpolate(TTCue* cue1, TTCue* cue2, TTFloat64 position)
{
	cue1->mScript->sendMessage(TTSymbol("Bind"), kTTAdrsRoot, kTTValNONE);
	cue2->mScript->sendMessage(TTSymbol("Bind"), kTTAdrsRoot, kTTValNONE);
	
	return TTScriptInterpolate(cue1->mScript, cue2->mScript, position);
}

TTErr TTCueMix(const TTValue& cues, const TTValue& factors)
{
	TTCuePtr	aCue;
	TTValue		scripts;
	TTUInt32	i;
	
	for (i = 0; i < cues.getSize(); i++) {
		cues.get(i, (TTPtr*)&aCue);
		aCue->mScript->sendMessage(TTSymbol("Bind"), kTTAdrsRoot, kTTValNONE);
		
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