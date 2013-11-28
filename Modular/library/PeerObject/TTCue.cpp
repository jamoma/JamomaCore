/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Cue Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTCue.h"

#define thisTTClass			TTCue
#define thisTTClassName		"Cue"
#define thisTTClassTags		"cue"

TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mDescription(kTTSym_none),
mRamp(0),
mScript(NULL)
{
	TT_ASSERT("Correct number of args to create TTCue", arguments.size() == 0 || arguments.size() == 1);
	
	addAttributeWithGetterAndSetter(Name, kTypeSymbol);
	addAttributeWithGetterAndSetter(Description, kTypeSymbol);
	addAttributeWithGetterAndSetter(Ramp, kTypeUInt32);
	
	addMessage(Clear);
	addMessageWithArguments(Store);
    addMessageWithArguments(Update);
    addMessageWithArguments(Append);
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
    if (mScript) {
        TTObjectBaseRelease(TTObjectBaseHandle(&mScript));
        mScript = NULL;
    }
}


TTErr TTCue::getName(TTValue& value)
{
	TTListPtr		lines;
	TTDictionaryBasePtr	aLine;
	TTSymbol		name;
	TTValue			v;
	
	mScript->getAttributeValue(kTTSym_lines, v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
		
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
	TTDictionaryBasePtr		aLine;
	TTSymbol			name;
	TTValue				v;
	
	mScript->getAttributeValue(kTTSym_lines, v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
		
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
	TTDictionaryBasePtr	aLine;
	TTSymbol		name;
	TTValue			v;
	
	mScript->getAttributeValue(kTTSym_lines, v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
		
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
	TTDictionaryBasePtr	aLine;
	TTSymbol		name;
	TTValue			v;
	
	mScript->getAttributeValue(kTTSym_lines, v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
		
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
	TTDictionaryBasePtr	aLine;
	TTValue			v, r;
	
	aScript->getAttributeValue(kTTSym_lines, v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
		
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
    TTValue     v, none;
    TTBoolean   flattened;
    
	mRamp = value;
	
    // is the cue already flattened ?
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, none);
	
	// TODO : don't change line with a ramp value different from the mRamp
	return processRamp(mScript, mRamp);
}

TTErr TTCue::processRamp(TTObjectBasePtr aScript, TTUInt32 ramp)
{
	TTListPtr		lines;
	TTDictionaryBasePtr	aLine;
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
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
        
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
    //TTAddressItemPtr    topItem;
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
		
		// 3. Process namespace storage from the root
        // (but others directories are handled too. see in processStore)
        processStore(mScript, aNamespace, getDirectoryFrom(kTTAdrsRoot)->getRoot());
		
		// 5. Process ramp
		if (mRamp) setRamp(mRamp);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCue::processStore(TTObjectBasePtr aScript, const TTAddressItemPtr aNamespace, TTNodePtr nodeToProcess)
{
	TTAddressItemPtr nameItem, instanceItem;
	TTString		nameInstance;
	TTNodePtr		scriptNode, aNode;
	TTDictionaryBasePtr	aLine;
	TTObjectBasePtr	anObject, aSubScript;
	TTList			aNodeList, childrenNodes;
    TTListPtr       instanceOptions;
	TTAddress		scriptAddress, childAddress, address;
	TTSymbol		service, option;
	TTValue			v, parsedLine, none;
	TTBoolean		empty = YES;
	TTErr			err;
    
    scriptNode = nodeToProcess;
    
    // get the scriptNode address
    scriptNode->getAddress(scriptAddress);
    
	// each script line is a name.instance (which means 2 levels of the namespace)
    // but the first level name can be directory:/name sometimes to include other directory
	
	// for all names
	for (aNamespace->begin(); aNamespace->end(); aNamespace->next()) {
		
		nameItem = aNamespace->current();
        
        // at root : check if the item is an application name
        if (scriptAddress == kTTAdrsRoot) {
            
            // TODO : find a solution for case where applications are named with an instance part (like myApp.1)
            // in this case we will need to test if each name.instance is an application name ...
            // for the moment the nameItem should be with 1 "" item
            if (nameItem->getSize() == 1) {
                
                // TODO : do not test only with the nameItem
                TTNodeDirectoryPtr aDirectory = getApplicationDirectory(nameItem->getSymbol());
            
                if (aDirectory) {
            
                    scriptNode = aDirectory->getRoot();
                    
                    // TODO : do not take only the first instanceItem
                    nameItem->begin();
                    instanceItem = nameItem->current();
                    
                    // TODO : do not use only the nameItem
                    nameInstance = nameItem->getSymbol().c_str();
                    nameInstance += ":"; //S_DIRECTORY.string();
                    
                    // edit a sub script line
                    v = TTValue(TTSymbol(nameInstance));
                    aLine = TTScriptParseScript(v);
                    
                    // get the sub script
                    aLine->getValue(v);
                    aSubScript = TTScriptPtr((TTObjectBasePtr)v[0]);
                    
                    // process namespace item on sub script
                    err = processStore(aSubScript, instanceItem, scriptNode);
                    
                    // if the sub script is not empty
                    if (!err) {
                        
                        // append 2 comment lines to the script before the sub script line
                        aScript->sendMessage(TTSymbol("AppendComment"), none, parsedLine);
                        aScript->sendMessage(TTSymbol("AppendComment"), none, parsedLine);
                        
                        // append the sub script line
                        v = TTValue((TTPtr)aLine);
                        aScript->sendMessage(TTSymbol("Append"), v, parsedLine);
                        
                        // the script is not empty
                        empty = NO;
                    }
                    
                    // go to the next application
                    continue;
                }
            }
        }
		
		// for all instances of a name
		for (nameItem->begin(); nameItem->end(); nameItem->next()) {
			
			instanceItem = nameItem->current();
			
			if (!instanceItem->getSelection())
				continue;
			
            // get children
            scriptNode->getChildren(nameItem->getSymbol(), instanceItem->getSymbol(), childrenNodes);

            for (childrenNodes.begin(); childrenNodes.end(); childrenNodes.next()) {
                
				aNode = TTNodePtr((TTPtr)childrenNodes.current()[0]);
                
                // edit name.instance using effective node's name and instance
                nameInstance = aNode->getName().c_str();
                
                if (aNode->getInstance() != kTTSymEmpty) {
                    nameInstance += C_INSTANCE;
                    nameInstance += aNode->getInstance().c_str();
                }
                
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
						
                        // create a line for each option of the item
                        instanceOptions = instanceItem->getOptions();
                        
                        for (instanceOptions->begin(); instanceOptions->end(); instanceOptions->next()) {
                            
                            option = instanceOptions->current()[0];
                            
                            if (option == kTTSymEmpty)
                                option = kTTSym_value;
                                
                            v.clear();
                            anObject->getAttributeValue(option, v);
                            
                            if (v.empty())
                                continue;
                            
                            if (option == kTTSym_value)
                                address = TTAddress(nameInstance);
                            else
                                address = TTAddress(nameInstance).appendAttribute(option);
                            
                            // append a command line
                            v.prepend(address);
                            aScript->sendMessage(TTSymbol("AppendCommand"), v, parsedLine);
                            
                            // the script is not empty
                            empty = NO;
                        }
					}
				}
				
				// Any other case : create a sub script
				
				// edit a sub script line
				v = TTValue(TTSymbol(nameInstance));
				aLine = TTScriptParseScript(v);
				
				// get the sub script
				aLine->getValue(v);
				aSubScript = TTScriptPtr((TTObjectBasePtr)v[0]);
				
				// process namespace item on sub script
				err = processStore(aSubScript, instanceItem, aNode);
				
				// if the sub script is not empty
				if (!err) {
					
					if (anObject) {
						
						// CONTAINER case : append a comment line to the script before the sub script line
						if (anObject->getName() == kTTSym_Container)
							aScript->sendMessage(TTSymbol("AppendComment"), none, parsedLine);
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

TTErr TTCue::Update(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue     v, none;
    TTBoolean   flattened;
    
    // TODO : update from an address
    
    // is the cue already flattened ?
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
    mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, none);
	
	return processUpdate(mScript);
}

TTErr TTCue::processUpdate(TTObjectBasePtr aScript)
{
	TTListPtr		lines;
	TTDictionaryBasePtr	aLine;
    TTAddress       anAddress;
    TTNodePtr       aNode;
	TTObjectBasePtr	anObject;
    TTSymbol        service;
	TTValue			v;
    TTErr           err;
	
	aScript->getAttributeValue(TTSymbol("flattenedLines"), v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
        
        // if it is a Data object
        if (!aLine->lookup(kTTSym_target, v)) {
            
            anAddress = v[0];
            err = getDirectoryFrom(anAddress)->getTTNode(anAddress, &aNode);
            
            if (!err) {
                
                anObject = aNode->getObject();
                
                if (anObject) {
                    
                    if (anObject->getName() == kTTSym_Data) {
                        
                        // get his service attribute value
                        anObject->getAttributeValue(kTTSym_service, v);
                        service = v[0];
                        
                        // update only parameters
                        if (service == kTTSym_parameter) {
                            
                            // get his current value
                            err = anObject->getAttributeValue(kTTSym_value, v);
                            
                            if (!err) {
                                
                                // replace the former value
                                aLine->remove(kTTSym_value);
                                aLine->append(kTTSym_value, v);
                            }
                        }
                    }
                }
            }
        }
	}
	
	return kTTErrNone;
}

TTErr TTCue::Append(const TTValue& inputValue, TTValue& outputValue)
{
    return mScript->sendMessage(TTSymbol("Append"), inputValue, outputValue);
}

TTErr TTCue::Clear()
{
	return mScript->sendMessage(TTSymbol("Clear"));
}

TTErr TTCue::Recall(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddress   anAddress = kTTAdrsRoot;
    TTBoolean   flattened;
    TTValue     v, none;
    
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            anAddress = inputValue[0];
    
    // is the cue already flattened ?
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, none);
    
    // if an address is passed, run the line at address
    if (anAddress != kTTAdrsRoot)
        return mScript->sendMessage(TTSymbol("RunCommand"), inputValue, none);
    
    // else run all the script
    else
        return mScript->sendMessage(kTTSym_Run, inputValue, none);
}

TTErr TTCue::Output(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddress   anAddress = kTTAdrsRoot;
    TTBoolean   flattened;
    TTValue     v, none;
    
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            anAddress = inputValue[0];
    
    // is the cue already flattened ?
    mScript->getAttributeValue(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, none);
    
    // if an address is passed, dump the line at address
    if (anAddress != kTTAdrsRoot)
        return mScript->sendMessage(TTSymbol("DumpLine"), inputValue, none);
    
    // else dump all the script
    else
        return mScript->sendMessage(kTTSym_Dump, inputValue, none);
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
		
		// edit selection
		return processSelect(mScript, aNamespace);
	}
    
    return kTTErrNone;
}

TTErr TTCue::processSelect(TTObjectBasePtr aScript, TTAddressItemPtr aNamespace)
{
	TTListPtr			lines;
	TTAddressItemPtr    anItem;
	TTScriptPtr			aSubScript;
	TTDictionaryBasePtr		aLine;
	TTAddress           address;
	TTValue				v;
	TTErr				err;
	
	aScript->getAttributeValue(kTTSym_lines, v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// select all items which are in the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
		
		if (aLine->getSchema() == kTTSym_command || aLine->getSchema() == kTTSym_script) {
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
			
			// find item into the namespace
			err = aNamespace->find(address, &anItem);
			
			if (!err) {
				
				// select it
				anItem->setSelection(YES);
				
				// process select on the subscript
				if (aLine->getSchema() == kTTSym_script) {
					
					// get the script
					aLine->getValue(v);
					aSubScript = TTScriptPtr((TTObjectBasePtr)v[0]);
					
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

TTErr TTCueInterpolate(TTCue* cue1, TTCue* cue2, TTFloat64 position)
{
    TTBoolean   flattened1, flattened2;
    TTValue     v, none;
    
    // is the cue1 already flattened ?
    cue1->mScript->getAttributeValue(kTTSym_flattened, v);
    flattened1 = v[0];
    
    if (!flattened1)
        cue1->mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, none);
    
    // is the cue2 already flattened ?
    cue2->mScript->getAttributeValue(kTTSym_flattened, v);
    flattened2 = v[0];
    
    if (!flattened2)
        cue2->mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, none);
    
	return TTScriptInterpolate(cue1->mScript, cue2->mScript, position);
}

TTErr TTCueMix(const TTValue& cues, const TTValue& factors)
{
	TTCuePtr	aCue;
	TTValue		scripts;
    TTBoolean   flattened;
    TTValue     v, none;
	TTUInt32	i;
	
	for (i = 0; i < cues.size(); i++) {
        
		aCue = TTCuePtr((TTObjectBasePtr)cues[i]);
        
        // is the cue already flattened ?
        aCue->mScript->getAttributeValue(kTTSym_flattened, v);
        flattened = v[0];
        
        if (!flattened)
            aCue->mScript->sendMessage(kTTSym_Flatten, kTTAdrsRoot, none);
        
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