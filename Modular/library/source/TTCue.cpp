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
mDescription("something about this cue"),
mRamp(0),
mAddress(kTTAdrsRoot)
{
	addAttributeWithGetterAndSetter(Name, kTypeSymbol);
	addAttributeWithGetterAndSetter(Description, kTypeSymbol);
	addAttributeWithGetterAndSetter(Ramp, kTypeUInt32);
    addAttribute(Address, kTypeSymbol);
	
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
	
    mScript = TTObject(kTTSym_Script, arguments);
}

TTCue::~TTCue()
{}


TTErr TTCue::getName(TTValue& value)
{
	TTListPtr		lines;
	TTDictionaryBasePtr	aLine;
	TTSymbol		name;
	TTValue			v;
	
	mScript.get(kTTSym_lines, v);
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
	TTDictionaryBasePtr aLine;
	TTSymbol			name;
	TTValue				v;
	
	mScript.get(kTTSym_lines, v);
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
	
	mScript.get(kTTSym_lines, v);
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
	
	mScript.get(kTTSym_lines, v);
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

TTErr TTCue::searchRamp(TTObject aScript, TTUInt32& ramp)
{
	TTListPtr		lines;
	TTObject		aSubScript;
	TTDictionaryBasePtr	aLine;
	TTValue			v, r;
	
	aScript.get(kTTSym_lines, v);
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
			aSubScript = v[0];
			
			if (aSubScript.valid())
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
    mScript.get(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript.send(kTTSym_Flatten, kTTAdrsRoot);
	
	// TODO : don't change line with a ramp value different from the mRamp
	return processRamp(mScript, mRamp);
}

TTErr TTCue::processRamp(TTObject aScript, TTUInt32 ramp)
{
	TTListPtr		lines;
	TTDictionaryBasePtr	aLine;
    TTAddress       anAddress;
    TTNodePtr       aNode;
	TTObject        anObject;
	TTSymbol		rampDrive;
	TTValue			v, r;
    TTErr           err;
	
	r = TTValue((int)ramp);
	
	aScript.get("flattenedLines", v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
        
        // if it is a Data object with a ramp drive
        if (!aLine->lookup(kTTSym_target, v)) {
            
            anAddress = v[0];
            err = accessApplicationDirectoryFrom(anAddress)->getTTNode(anAddress, &aNode);
            
            if (!err) {
            
                anObject = aNode->getObject();
                
                if (anObject.valid()) {
                    
                    if (anObject.name() == kTTSym_Data) {
                        
                        anObject.get(kTTSym_rampDrive, v);
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
	TTAddressItemPtr    aSelection = NULL;
    TTNodePtr           aNode;
	TTSymbol			name;
	TTValue				v, parsedLine;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypePointer)
            aSelection = TTAddressItemPtr((TTPtr)inputValue[0]);
        
        else if (inputValue[0].type() == kTypeSymbol) {
            name = inputValue[0];
            aSelection = TTModularSelectionLookup(name);
        }
    }
	
	if (aSelection) {
		
		Clear();

		// 1. Append a cue flag with the name
		v = TTValue(TTSymbol("cue"));
		v.append(mName);
		mScript.send("AppendFlag", v, parsedLine);
		
		// 2. Append a description flag
		v = TTValue(TTSymbol("description"));
		v.append(mDescription);
		mScript.send("AppendFlag", v, parsedLine);
        
        // 3. Append a comment line
		v = TTValue(TTSymbol("###########################################"));
		mScript.send("AppendComment", v, parsedLine);
		
		// 4. Process namespace storage from the mAddress
        // (but others directories are handled too. see in processStore)
        if (mAddress != kTTAdrsRoot)
            if (aSelection->find(mAddress, & aSelection))
                return kTTErrGeneric;
        
        accessApplicationDirectoryFrom(mAddress)->getTTNode(mAddress, &aNode);
        
        processStore(mScript, aSelection, aNode);
        
        // 5. Append an empty comment line
        v.clear();
		mScript.send("AppendComment", v, parsedLine);
        
        // 6. Append a comment line at the end
		v = TTValue(TTSymbol("###########################################"));
		mScript.send("AppendComment", v, parsedLine);
		
		// 7. Process ramp
		if (mRamp) setRamp(mRamp);
        
        // théo - since the workshop in june 2014 in Albi we decide to force the script to be flattened
        // but we should review all the #TTCue and #TTScript architecture to improve this
        mScript.send("Flatten");
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTCue::processStore(TTObject aScript, const TTAddressItemPtr aSelection, TTNodePtr nodeToProcess)
{
    // stop recursion if the selection is empty
    if (aSelection->isEmpty())
        return kTTErrNone;
    
	TTAddressItemPtr nameItem, instanceItem;
	TTString		nameInstance;
	TTNodePtr		scriptNode, aNode;
	TTDictionaryBasePtr	aLine;
	TTObject        anObject, aSubScript;
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
	for (aSelection->begin(); aSelection->end(); aSelection->next()) {
		
		nameItem = aSelection->current();
        
        // at root : check if the item is an application name
        if (scriptAddress == kTTAdrsRoot) {
            
            // TODO : find a solution for case where applications are named with an instance part (like myApp.1)
            // in this case we will need to test if each name.instance is an application name ...
            // for the moment the nameItem should be with 1 "" item
            if (nameItem->getSize() == 1) {
                
                // TODO : do not test only with the nameItem
                TTNodeDirectoryPtr aDirectory = accessApplicationDirectory(nameItem->getSymbol());
            
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
                    aSubScript = v[0];
                    
                    // process namespace item on sub script
                    err = processStore(aSubScript, instanceItem, scriptNode);
                    
                    // if the sub script is not empty
                    if (!err) {
                        
                        // append 2 comment lines to the script before the sub script line
                        aScript.send("AppendComment", none, parsedLine);
                        aScript.send("AppendComment", none, parsedLine);
                        
                        // append the sub script line
                        v = TTValue((TTPtr)aLine);
                        aScript.send("Append", v, parsedLine);
                        
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
				if (anObject.valid()) {
					
					// DATA case : get value attribute
					if (anObject.name() == kTTSym_Data)
                    {
						v.clear();
						anObject.get(kTTSym_service, v);
						service = v[0];
						
						if (service == kTTSym_parameter)
                        {
                            // create a line for each option of the item
                            instanceOptions = instanceItem->getOptions();
                            
                            for (instanceOptions->begin(); instanceOptions->end(); instanceOptions->next())
                            {
                                option = instanceOptions->current()[0];
                                
                                if (option == kTTSymEmpty)
                                    option = kTTSym_value;
                                
                                v.clear();
                                anObject.get(option, v);
                                
                                if (v.empty())
                                    continue;
                                
                                if (option == kTTSym_value)
                                    address = TTAddress(nameInstance);
                                else
                                    address = TTAddress(nameInstance).appendAttribute(option);
                                
                                // append a command line
                                v.prepend(address);
                                aScript.send("AppendCommand", v, parsedLine);
                                
                                // the script is not empty
                                empty = NO;
                            }
                        }
					}
				}
				
				// Any other case : create a sub script
				
				// edit a sub script line
				v = TTValue(TTSymbol(nameInstance));
				aLine = TTScriptParseScript(v);
				
				// get the sub script
				aLine->getValue(v);
				aSubScript = v[0];
				
				// process namespace item on sub script
				err = processStore(aSubScript, instanceItem, aNode);
				
				// if the sub script is not empty
				if (!err)
                {
					if (anObject.valid())
                    {
						// CONTAINER case : append a comment line to the script before the sub script line
						if (anObject.name() == kTTSym_Container)
							aScript.send("AppendComment", none, parsedLine);
					}
					
					// append the sub script line
					v = TTValue((TTPtr)aLine);
					aScript.send("Append", v, parsedLine);
					
					// the script is not empty
					empty = NO;
				}
                else
                {
                    // unselect this item from the namespace
                    instanceItem->setSelection(NO);
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
    mScript.get(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript.send(kTTSym_Flatten, kTTAdrsRoot);
	
	return processUpdate(mScript);
}

TTErr TTCue::processUpdate(TTObject aScript)
{
	TTListPtr	lines;
	TTDictionaryBasePtr	aLine;
    TTAddress   anAddress;
    TTNodePtr   aNode;
	TTObject    anObject;
    TTSymbol    service;
	TTValue		v;
    TTErr       err;
	
	aScript.get("flattenedLines", v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// lookat each line of the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
        
        // if it is a Data object
        if (!aLine->lookup(kTTSym_target, v)) {
            
            anAddress = v[0];
            err = accessApplicationDirectoryFrom(anAddress)->getTTNode(anAddress, &aNode);
            
            if (!err) {
                
                anObject = aNode->getObject();
                
                if (anObject.valid()) {
                    
                    if (anObject.name() == kTTSym_Data) {
                        
                        // get his service attribute value
                        anObject.get(kTTSym_service, v);
                        service = v[0];
                        
                        // update only parameters
                        if (service == kTTSym_parameter) {
                            
                            // get his current value
                            err = anObject.get(kTTSym_value, v);
                            
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
    return mScript.send("Append", inputValue, outputValue);
}

TTErr TTCue::Clear()
{
	return mScript.send("Clear");
}

TTErr TTCue::Recall(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddress   anAddress = kTTAdrsRoot;
    TTBoolean   flattened;
    TTValue     v, none;
    
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol) {
            
            anAddress = inputValue[0];
            
            if (anAddress.getType() == kAddressRelative)
                anAddress = mAddress.appendAddress(anAddress);
        }
    
    // is the cue already flattened ?
    mScript.get(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript.send(kTTSym_Flatten, mAddress);
    
    // if an address is passed, run the line at address
    if (anAddress != kTTAdrsRoot)
        return mScript.send("RunCommand", anAddress);
    
    // else run all the script
    else
        return mScript.send(kTTSym_Run, inputValue);
}

TTErr TTCue::Output(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddress   anAddress = kTTAdrsRoot;
    TTBoolean   flattened;
    TTValue     v, none;
    
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol) {
            
            anAddress = inputValue[0];
            
            if (anAddress.getType() == kAddressRelative)
                anAddress = mAddress.appendAddress(anAddress);
        }
    
    // is the cue already flattened ?
    mScript.get(kTTSym_flattened, v);
    flattened = v[0];
    
    if (!flattened)
        mScript.send(kTTSym_Flatten, mAddress);
    
    // if an address is passed, dump the line at address
    if (anAddress != kTTAdrsRoot)
        return mScript.send("DumpLine", anAddress);
    
    // else dump all the script
    else
        return mScript.send(kTTSym_Dump, inputValue);
}

TTErr TTCue::Select(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aSelection = NULL;
	TTSymbol			name;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypePointer)
            aSelection = TTAddressItemPtr((TTPtr)inputValue[0]);
        
        else if (inputValue[0].type() == kTypeSymbol) {
            name = inputValue[0];
            aSelection = TTModularSelectionLookup(name);
        }
    }
	
	if (aSelection) {
		
		// unselect all the namespace
		aSelection->setSelection(NO, YES);
		
		// edit selection
		return processSelect(mScript, aSelection);
	}
    
    return kTTErrNone;
}

TTErr TTCue::processSelect(TTObject aScript, TTAddressItemPtr aSelection)
{
	TTListPtr			lines;
	TTAddressItemPtr    anItem;
	TTObject			aSubScript;
	TTDictionaryBasePtr aLine;
	TTAddress           address;
	TTValue				v;
	TTErr				err;
	
	aScript.get(kTTSym_lines, v);
	lines = TTListPtr((TTPtr)v[0]);
	
	// select all items which are in the script
	for (lines->begin(); lines->end(); lines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)lines->current()[0]);
		
		if (aLine->getSchema() == kTTSym_command || aLine->getSchema() == kTTSym_script) {
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
			
			// find item into the namespace
			err = aSelection->find(address, &anItem);
			
			if (!err) {
				
				// select it
				anItem->setSelection(YES);
				
				// process select on the subscript
				if (aLine->getSchema() == kTTSym_script) {
					
					// get the script
					aLine->getValue(v);
					aSubScript = v[0];
					
					if (aSubScript.valid())
						processSelect(aSubScript, anItem);
				}
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTCue::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTValue v;
	
	// use WriteAsXml of the script
	v = TTValue(mScript);
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->sendMessage(TTSymbol("Write"));
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTValue v, parsedLine;
	
	// Cue node : append a cue flag with the name
	if (aXmlHandler->mXmlNodeName == TTSymbol("cue")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		v = TTValue(TTSymbol("cue"));
		v.append(mName);
		mScript.send("AppendFlag", v, parsedLine);
		
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
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;

	TTValue	v;
	
	/* get the address of the script
	mScript.get(kTTSym_address, v);
	address = v[0];
	
	// write address of the script
	*buffer += "\t";
	*buffer += mAddress->getCString();
	*buffer += "\n";
	*/
    
    // théo - since the workshop in june 2014 in Albi we decide to force the script to be flattened
    // but we should review all the #TTCue and #TTScript architecture to improve this
    mScript.send("Flatten");
	
	// use WriteAsText of the script
	v = TTValue(mScript);
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TTSymbol("Write"));
	
	return kTTErrNone;
}

TTErr TTCue::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
    
	TTDictionaryBasePtr line;
	TTValue	v;

	// if it is the first line :
	if (aTextHandler->mFirstLine)
		Clear();
    
    if (aTextHandler->mLine->size() == 0)
        return kTTErrGeneric;
    
    // if needed : parse the buffer line into TTDictionary
    if ((*(aTextHandler->mLine))[0].type() != kTypePointer) {
        
        line = TTScriptParseLine(*(aTextHandler->mLine));
        
        if (line)
            
            // replace the buffer line value by the parsed line dictionary
            aTextHandler->mLine = new TTValue((TTPtr)line);
    }
    else
        line = TTDictionaryBasePtr((TTPtr)aTextHandler->mLine[0]);
    
    // match description or tag flag lines :
    if (line->getSchema() == kTTSym_flag) {
        
        line->lookup(kTTSym_name, v);
        TTSymbol flagName = v[0];
        
        if (flagName == TTSymbol("description")) {
            
            // get description
            if (!line->getValue(v)) {
                
                mDescription = v[0];
            }
        }
    }
	
	// use ReadFromText of the script
	v = TTValue(mScript);
	aTextHandler->setAttributeValue(kTTSym_object, v);
	aTextHandler->sendMessage(TTSymbol("Read"));
    
    // théo - since the workshop in june 2014 in Albi we decide to force the script to be flattened
    // but we should review all the #TTCue and #TTScript architecture to improve this
    if (aTextHandler->mLastLine)
        mScript.send("Flatten");
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTCueInterpolate(TTObject cue1, TTObject cue2, TTFloat64 position)
{
    TTBoolean   flattened1, flattened2;
    TTValue     v, none;
    
    // is the cue1 already flattened ?
    TTCuePtr(cue1.instance())->mScript.get(kTTSym_flattened, v);
    flattened1 = v[0];
    
    if (!flattened1)
        TTCuePtr(cue1.instance())->mScript.send(kTTSym_Flatten, kTTAdrsRoot);
    
    // is the cue2 already flattened ?
    TTCuePtr(cue2.instance())->mScript.get(kTTSym_flattened, v);
    flattened2 = v[0];
    
    if (!flattened2)
        TTCuePtr(cue2.instance())->mScript.send(kTTSym_Flatten, kTTAdrsRoot);
    
	return TTScriptInterpolate(TTCuePtr(cue1.instance())->mScript, TTCuePtr(cue2.instance())->mScript, position);
}

TTErr TTCueMix(const TTValue& cues, const TTValue& factors)
{
	TTObject	aCue;
	TTValue		scripts;
    TTBoolean   flattened;
    TTValue     v, none;
	TTUInt32	i;
	
	for (i = 0; i < cues.size(); i++) {
        
		aCue = cues[i];
        
        // is the cue already flattened ?
        TTCuePtr(aCue.instance())->mScript.get(kTTSym_flattened, v);
        flattened = v[0];
        
        if (!flattened)
            TTCuePtr(aCue.instance())->mScript.send(kTTSym_Flatten, kTTAdrsRoot);
        
		scripts.append(TTCuePtr(aCue.instance())->mScript);
	}
	
	return TTScriptMix(scripts, factors);
}

TTErr TTCueMerge(TTObject aCueToMerge, TTObject mergedCue)
{
	return TTScriptMerge(TTCuePtr(aCueToMerge.instance())->mScript, TTCuePtr(mergedCue.instance())->mScript);
}

TTErr TTCueOptimize(TTObject aCueToOptimize, TTObject aCue, TTObject optimizedCue)
{
	return TTScriptOptimize(TTCuePtr(aCueToOptimize.instance())->mScript, TTCuePtr(aCue.instance())->mScript, TTCuePtr(optimizedCue.instance())->mScript);
}

TTErr TTCueCopy(TTObject aCueToCopy, TTObject aCueCopy)
{
	TTValue v, args;
	
	TTCuePtr(aCueCopy.instance())->mName = TTCuePtr(aCueToCopy.instance())->mName;
	TTCuePtr(aCueCopy.instance())->mDescription = TTCuePtr(aCueToCopy.instance())->mDescription;
	TTCuePtr(aCueCopy.instance())->mRamp = TTCuePtr(aCueToCopy.instance())->mRamp;
    TTCuePtr(aCueCopy.instance())->mAddress = TTCuePtr(aCueToCopy.instance())->mAddress;
	return TTScriptCopy(TTCuePtr(aCueToCopy.instance())->mScript, TTCuePtr(aCueCopy.instance())->mScript);
}