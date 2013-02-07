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
mRamp(0),
mScript(NULL)
{
	TT_ASSERT("Correct number of args to create TTCue", arguments.size() == 0 || arguments.size() == 1);
	
	addAttributeWithGetterAndSetter(Name, kTypeSymbol);
	addAttributeWithGetterAndSetter(Description, kTypeSymbol);
	addAttributeWithGetterAndSetter(Ramp, kTypeUInt32);
	
	addMessage(Clear);
	addMessageWithArguments(Store);
	addMessageWithArguments(Recall);
	addMessageWithArguments(Output);
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
	
	TTObjectBaseInstantiate(kTTSym_Script, TTObjectBaseHandle(&mScript), arguments); // use arguments to pass the returnLineCallback
}

TTCue::~TTCue()
{
	TTObjectBaseRelease(TTObjectBaseHandle(&mScript));
	mScript = NULL;
}


TTErr TTCue::getName(TTValue& value)
{
	TTListPtr		lines;
	TTDictionaryPtr	aLine;
	TTSymbol		name;
	TTValue			v;
	
	mScript->getAttributeValue(TTSymbol("lines"), v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)lines->current()[0]);
		
		if (aLine->getSchema() == kTTSym_flag) {
			
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			
			if (name == TTSymbol("cue")) {
				aLine->getValue(value);
				break;
			}
		}
	}
	
	mName = value;	// remind the name in case the cue is cleared
	
	return kTTErrNone;
}

TTErr TTCue::setName(const TTValue& value)
{
	TTListPtr			lines;
	TTDictionaryPtr		aLine;
	TTSymbol			name;
	TTValue				v;
	
	mScript->getAttributeValue(TTSymbol("lines"), v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)lines->current()[0]);
		
		if (aLine->getSchema() == kTTSym_flag) {
			
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			
			if (name == TTSymbol("cue")) {
				aLine->setValue(value);
				break;
			}
		}
	}
	
	mName = value;	// remind the name in case the cue is cleared
	
	return kTTErrNone;
}

TTErr TTCue::getDescription(TTValue& value)
{
	TTListPtr		lines;
	TTDictionaryPtr	aLine;
	TTSymbol		name;
	TTValue			v;
	
	mScript->getAttributeValue(TTSymbol("lines"), v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)lines->current()[0]);
		
		if (aLine->getSchema() == kTTSym_flag) {
			
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			
			if (name == kTTSym_description) {
				aLine->getValue(value);
				break;
			}
		}
	}
	
    if (value.size())
        mDescription = value[0];	// remind the description in case the cue is cleared
	
	return kTTErrNone;
}

TTErr TTCue::setDescription(const TTValue& value)
{
	TTListPtr		lines;
	TTDictionaryPtr	aLine;
	TTSymbol		name;
	TTValue			v;
	
	mScript->getAttributeValue(TTSymbol("lines"), v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)lines->current()[0]);
		
		if (aLine->getSchema() == kTTSym_flag) {
		
			aLine->lookup(kTTSym_name, v);
			name = v[0];
		
			if (name == kTTSym_description) {
				aLine->setValue(value);
				mDescription = value;	// remind the description in case the cue is cleared
				break;
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTCue::getRamp(TTValue& value)
{
	searchRamp(mScript, mRamp);
	
	value =	mRamp;

	return kTTErrNone;
}

TTErr TTCue::searchRamp(TTObjectBasePtr aScript, TTUInt32& ramp)
{
	TTListPtr		lines;
	TTScriptPtr		aSubScript;
	TTDictionaryPtr	aLine;
	TTValue			v, r;
	
	aScript->getAttributeValue(TTSymbol("lines"), v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)lines->current()[0]);
		
		if (aLine->getSchema() == kTTSym_command) {
			
			// if there is a ramp
			if (!aLine->lookup(kTTSym_ramp, v)) {
				
				ramp = v[0];
				break;
			}
		}
		else if (aLine->getSchema() == kTTSym_script) {
			
			// get the script
			aLine->getValue(v);
			aSubScript = TTScriptPtr((TTObjectBasePtr)v[0]);
			
			if (aSubScript)
				searchRamp(aSubScript, ramp);
		}
	}
	
	return kTTErrNone;	
}

TTErr TTCue::setRamp(const TTValue& value)
{
    TTValue     v;
    TTBoolean   flattened;
    
	mRamp = value;
	
    // is the cue already flattened ?
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, kTTValNONE);
	
	// TODO : don't change line with a ramp value different from the mRamp
	return processRamp(mScript, mRamp);
}

TTErr TTCue::processRamp(TTObjectBasePtr aScript, TTUInt32 ramp)
{
	TTListPtr		lines;
	TTDictionaryPtr	aLine;
    TTAddress       anAddress;
    TTNodePtr       aNode;
	TTObjectBasePtr	anObject;
	TTSymbol		rampDrive;
	TTValue			v, r;
    TTErr           err;
	
	r = TTValue((int)ramp);
	
	aScript->getAttributeValue(TTSymbol("flattenedLines"), v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)lines->current()[0]);
        
        // if it is a Data object with a ramp drive
        if (!aLine->lookup(kTTSym_target, v)) {
            
            anAddress = v[0];
            err = getDirectoryFrom(anAddress)->getTTNode(anAddress, &aNode);
            
            if (!err) {
            
                anObject = aNode->getObject();
                
                if (anObject) {
                    
                    if (anObject->getName() == kTTSym_Data) {
                        
                        anObject->getAttributeValue(kTTSym_rampDrive, v);
                        rampDrive = v[0];
                        
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
        }
	}
	
	return kTTErrNone;
}

TTErr TTCue::Store(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aNamespace = NULL;
	TTSymbol			name;
	TTValue				v, parsedLine;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypePointer)
            aNamespace = TTAddressItemPtr((TTPtr)inputValue[0]);
        
        else if (inputValue[0].type() == kTypeSymbol) {
            name = inputValue[0];
            aNamespace = lookupNamespace(name);
        }
    }
	
	if (aNamespace) {
		
		Clear();
		
		// 1. Append a cue flag with the name
		v = TTValue(TTSymbol("cue"));
		v.append(mName);
		mScript->sendMessage(TTSymbol("AppendFlag"), v, parsedLine);
		
		// 2. Append a description flag
		v = TTValue(TTSymbol("description"));
		v.append(mDescription);
		mScript->sendMessage(TTSymbol("AppendFlag"), v, parsedLine);
		
		// 3. Process namespace storage
        // TODO : deal with other Application directory
		processStore(mScript, kTTAdrsRoot, aNamespace);
		
		// 5. Process ramp
		if (mRamp) setRamp(mRamp);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCue::processStore(TTObjectBasePtr aScript, TTAddress scriptAddress, const TTAddressItemPtr aNamespace)
{
	TTAddressItemPtr nameItem, instanceItem, anItem;
	TTString		nameInstance;
	TTNodePtr		aNode;
	TTDictionaryPtr	aLine;
	TTObjectBasePtr		anObject, aSubScript;
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
						service = v[0];
						
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
						v.prepend(TTSymbol(nameInstance));
						aScript->sendMessage(TTSymbol("AppendCommand"), v, parsedLine);
						
						// the script is not empty
						empty = NO;
						
						continue;
					}
				}
				
				// Any other case : create a sub script
				
				// edit a sub script line
				v = TTValue(TTSymbol(nameInstance));
				aLine = TTScriptParseScript(v);
				
				// get the sub script
				aLine->getValue(v);
				aSubScript = TTScriptPtr((TTObjectBasePtr)v[0]);
				
				// if the namespace is empty : fill it with all children below
				if (instanceItem->isEmpty()) {
					
					// get all children of the node
					aNode->getChildren(S_WILDCARD, S_WILDCARD, childrenNodes);
					
					// sort the NodeList using object priority order
					childrenNodes.sort(&TTCueCompareNodePriority);
					
					// append each name.instance to the sub namespace
					for (childrenNodes.begin(); childrenNodes.end(); childrenNodes.next()) {
						
						aNode = TTNodePtr((TTPtr)childrenNodes.current()[0]);
						
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

TTErr TTCue::Recall(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddress   anAddress = kTTAdrsRoot;
    TTBoolean   flattened;
    TTValue     v;
    
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            anAddress = inputValue[0];
    
    // is the cue already flattened ?
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, kTTValNONE);
    
    // if an address is passed, run the line at address
    if (anAddress != kTTAdrsRoot)
        return mScript->sendMessage(TTSymbol("RunLine"), inputValue, kTTValNONE);
    
    // else run all the script
    else
        return mScript->sendMessage(kTTSym_Run, inputValue, kTTValNONE);
}

TTErr TTCue::Output(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddress   anAddress = kTTAdrsRoot;
    TTBoolean   flattened;
    TTValue     v;
    
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            anAddress = inputValue[0];
    
    // is the cue already flattened ?
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, kTTValNONE);
    
    // if an address is passed, dump the line at address
    if (anAddress != kTTAdrsRoot)
        return mScript->sendMessage(TTSymbol("DumpLine"), inputValue, kTTValNONE);
    
    // else dump all the script
    else
        return mScript->sendMessage(kTTSym_Dump, inputValue, kTTValNONE);
}

TTErr TTCue::Select(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aNamespace = NULL;
	TTSymbol			name;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypePointer)
            aNamespace = TTAddressItemPtr((TTPtr)inputValue[0]);
        
        else if (inputValue[0].type() == kTypeSymbol) {
            name = inputValue[0];
            aNamespace = lookupNamespace(name);
        }
    }
	
	if (aNamespace) {
		
		// unselect all the namespace
		aNamespace->setSelection(NO, YES);
		
		// edit selection (and fill it if the namespace is empty)
		return processSelect(mScript, aNamespace, aNamespace->isEmpty());
	}
    
    return kTTErrNone;
}

TTErr TTCue::processSelect(TTObjectBasePtr aScript, TTAddressItemPtr aNamespace, TTBoolean fill)
{
	TTListPtr			lines;
	TTAddressItemPtr    anItem;
	TTScriptPtr			aSubScript;
	TTDictionaryPtr		aLine;
	TTAddress           address;
	TTValue				v;
	TTErr				err;
	
	aScript->getAttributeValue(TTSymbol("lines"), v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// select all items which are in the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)lines->current()[0]);
		
		if (aLine->getSchema() == kTTSym_command || aLine->getSchema() == kTTSym_script) {
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
			
			// find item into the namespace
			err = aNamespace->find(address, &anItem);
			
			if (err && fill)
				err = aNamespace->append(address, &anItem);
			
			if (!err) {
				
				// select it
				anItem->setSelection(YES);
				
				// process select on the subscript
				if (aLine->getSchema() == kTTSym_script) {
					
					// get the script
					aLine->getValue(v);
					aSubScript = TTScriptPtr((TTObjectBasePtr)v[0]);
					
					if (aSubScript)
						processSelect(aSubScript, anItem, fill);
				}
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTCue::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTValue			v;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
	// use WriteAsXml of the script
	v = TTValue(mScript);
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TTSymbol("Write"));
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTValue			v, parsedLine;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
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
	v = TTValue(mScript);
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TTSymbol("Read"));
	
	return kTTErrNone;
}

TTErr TTCue::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr	aTextHandler;
	//TTNodeAddressPtr	address;
	TTValue				v;
	
	aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
	/* get the address of the script
	mScript->getAttributeValue(kTTSym_address, v);
	address = v[0];
	
	// write address of the script
	*buffer += "\t";
	*buffer += mAddress->getCString();
	*buffer += "\n";
	*/
	
	// use WriteAsText of the script
	v = TTValue(mScript);
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TTSymbol("Write"));
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTValue	v;
	
	aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
	
	// use ReadFromText of the script
	v = TTValue(mScript);
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
	TTObjectBasePtr o1, o2;
	TTValue		v;
	TTInt32		p1 = 0;
	TTInt32		p2 = 0;
	
	// get priority of v1
	n1 = TTNodePtr((TTPtr)v1[0]);
	if (n1) {
		o1 = n1->getObject();
		if (o1) 
			if (!o1->getAttributeValue(kTTSym_priority, v))
				p1 = v[0];
	}
	
	// get priority of v2
	n2 = TTNodePtr((TTPtr)v2[0]);
	if (n2) {
		o2 = n2->getObject();
		if (o2) 
			if (!o2->getAttributeValue(kTTSym_priority, v))
				p2 = v[0];
	}
	
	if (p1 == 0 && p2 == 0) return v1 < v2;
	
	if (p1 == 0) return NO;
	if (p2 == 0) return YES;
	
	return p1 < p2;
}

TTErr TTCueInterpolate(TTCue* cue1, TTCue* cue2, TTFloat64 position)
{
    TTBoolean   flattened1, flattened2;
    TTValue     v;
    
    // is the cue1 already flattened ?
    cue1->mScript->getAttributeValue(kTTSym_flattened, v);
    flattened1 = v[0];
    
    if (!flattened1)
        cue1->mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, kTTValNONE);
    
    // is the cue2 already flattened ?
    cue2->mScript->getAttributeValue(kTTSym_flattened, v);
    flattened2 = v[0];
    
    if (!flattened2)
        cue2->mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, kTTValNONE);
    
	return TTScriptInterpolate(cue1->mScript, cue2->mScript, position);
}

TTErr TTCueMix(const TTValue& cues, const TTValue& factors)
{
	TTCuePtr	aCue;
	TTValue		scripts;
    TTBoolean   flattened;
    TTValue     v;
	TTUInt32	i;
	
	for (i = 0; i < cues.size(); i++) {
        
		aCue = TTCuePtr((TTObjectBasePtr)cues[i]);
        
        // is the cue already flattened ?
        aCue->mScript->getAttributeValue(kTTSym_flattened, v);
        flattened = v[0];
        
        if (!flattened)
            aCue->mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, kTTValNONE);
        
		scripts.append(aCue->mScript);
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

TTErr TTCueCopy(TTCue* aCueToCopy, TTCue* aCueCopy)
{
	TTValue v, args;
	
	aCueCopy->mName = aCueToCopy->mName;
	aCueCopy->mDescription = aCueToCopy->mDescription;
	aCueCopy->mRamp = aCueToCopy->mRamp;
	return TTScriptCopy(aCueToCopy->mScript, aCueCopy->mScript);
}