/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Script Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTScript.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTScript
#define thisTTClassName		"Script"
#define thisTTClassTags		"script"

TT_MODULAR_CONSTRUCTOR,
mFlattened(NO),
mLines(NULL),
mFlattenedLines(NULL),
mSubScript(NULL),
mParentScript(NULL),
mReturnLineCallback(NULL)
{
	TT_ASSERT("Correct number of args to create TTScript", arguments.size() == 0 || arguments.size() == 1);
	
	if (arguments.size() == 1)
		mReturnLineCallback = TTCallbackPtr((TTObjectBasePtr)arguments[0]);
	
	TT_ASSERT("Return Line Callback passed to TTScript is not NULL", mReturnLineCallback);

    addAttribute(Flattened, kTypeBoolean);
    addAttributeProperty(Flattened, readOnly, YES);
    
	addAttribute(Lines, kTypePointer);
	addAttributeProperty(Lines, readOnly, YES);
    
    addAttribute(FlattenedLines, kTypePointer);
	addAttributeProperty(FlattenedLines, readOnly, YES);
	
	addAttribute(SubScript, kTypeObject);
	addAttributeProperty(SubScript, hidden, YES);
	
	addAttribute(ParentScript, kTypeObject);
	addAttributeProperty(ParentScript, hidden, YES);
	
	addMessage(Clear);
	addMessageWithArguments(Run);
    addMessageWithArguments(RunCommand);
    addMessageWithArguments(RemoveCommand);
    
	addMessageWithArguments(Dump);
    addMessageWithArguments(DumpLine);
    
    addMessageWithArguments(Flatten);
	addMessageProperty(Flatten, hidden, YES);
    
    addMessageWithArguments(Unflatten);
	addMessageProperty(Unflatten, hidden, YES);
	
	addMessageWithArguments(Append);
	addMessageWithArguments(AppendCommand);
	addMessageWithArguments(AppendComment);
	addMessageWithArguments(AppendFlag);
	addMessageWithArguments(AppendScript);
	
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
    
	mLines = new TTList();
    mFlattenedLines = new TTList();
}

TTScript::~TTScript()
{
	TTDictionaryBasePtr aLine = NULL;
	TTValue			v;
	
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)mLines->current()[0]);
		
		if (aLine) {
			
			if (aLine->getSchema() == kTTSym_script) {
				
				// get script
				aLine->getValue(v);
				mSubScript = v[0];
				
				TTObjectBaseRelease(&mSubScript);
			}
			
			delete aLine;
			aLine = NULL;
		}
	}
    
    // don't delete the lines into the mFlattenedLines because
    // it stores only pointers to the lines stored into the mLines
	
	delete mLines;
	mLines = NULL;
    
    delete mFlattenedLines;
	mFlattenedLines = NULL;
}

TTErr TTScript::Clear()
{
	TTDictionaryBasePtr aLine = NULL;
	TTValue			v;
	
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)mLines->current()[0]);
		
		if (aLine) {
			
			if (aLine->getSchema() == kTTSym_script) {
				
				// get script
				aLine->getValue(v);
				mSubScript = v[0];
				
				TTObjectBaseRelease(&mSubScript);
			}
			
			delete aLine;
			aLine = NULL;
		}
	}
    
    // don't delete the lines into the mFlattenedLines because
    // it stores only pointers to the lines stored into the mLines
	
	delete mLines;
	mLines = new TTList();
    
	delete mFlattenedLines;
	mFlattenedLines = new TTList();
    
     mFlattened = NO;
    
	return kTTErrNone;
}

TTErr TTScript::Flatten(const TTValue& inputValue, TTValue& outputValue)
{
    TTScriptPtr     aScriptToFlatten = NULL;
    TTDictionaryBasePtr	aLine;
	TTSymbol		schema;
	TTAddress       address, parentAddress = kTTAdrsRoot;
	TTValue			v, none;
	
	// It is possible to flatten the script from a parent address
    if (inputValue.size() >= 1)
        if (inputValue[0].type() == kTypeSymbol)
            parentAddress = inputValue[0];
    
    // It is possible to flatten another script and store into the mFlattenedLines of this script
    if (inputValue.size() == 2) {
        
        if (inputValue[1].type() == kTypeObject) {
            aScriptToFlatten = TTScriptPtr((TTObjectBasePtr)inputValue[1]);
        }
    }
    
    // else start to flatten this script
    if (!aScriptToFlatten) {
        Unflatten();
        aScriptToFlatten = this;
        mFlattened = YES;
    }
	
	// flatten each command line of the script
	for (aScriptToFlatten->mLines->begin(); aScriptToFlatten->mLines->end(); aScriptToFlatten->mLines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)aScriptToFlatten->mLines->current()[0]);
		
        schema = aLine->getSchema();
		if (schema == kTTSym_command) {
            
            // clear target field
            aLine->remove(kTTSym_target);
            
            // edit the absolute address and bind to the node
			aLine->lookup(kTTSym_address, v);
			address = v[0];
            
			// use parentAddress for relative address
			if (address.getType() == kAddressRelative)
				address = parentAddress.appendAddress(address);

            // keep the absolute address in mind under a target field
            aLine->append(kTTSym_target, address);
            
            // append the command line to the Flattened lines list
            this->mFlattenedLines->append((TTPtr)aLine);
            
		}
        else if (schema == kTTSym_script) {
            
            // get the script
            aLine->getValue(v);
            mSubScript = TTScriptPtr((TTObjectBasePtr)v[0]);
            
            // get the address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
            
			// use parentAddress for relative address
			if (address.getType() == kAddressRelative)
				address = parentAddress.appendAddress(address);
            
            v = TTValue(address);
            v.append(mSubScript);
            
            // flatten the sub script into this script
            this->sendMessage(kTTSym_Flatten, v, none);
        }
	}
	
	return kTTErrNone;
}

TTErr TTScript::Unflatten()
{
    // don't delete the lines into the mFlattenedLines because
    // it stores only pointers to the lines stored into the mLines
	
	delete mFlattenedLines;
	mFlattenedLines = new TTList();
    
    mFlattened = NO;
    
    return kTTErrNone;
}

TTErr TTScript::Run(const TTValue& inputValue, TTValue& outputValue)
{
    // use the Flattened lines if they are ready
    if (mFlattened)
        return RunFlattened();
    
    // else use the none Flattened lines
    TTDictionaryBasePtr	aLine;
	TTSymbol		schema, name, attribute;
	TTNodePtr		aNode;
	TTAddress       address, parentAddress = kTTAdrsRoot;
	TTObjectBasePtr	anObject, aContainer, aParentContainer = NULL;
	TTValue			v, c, none;
	TTErr			err;
	
	// get the parent address
    if (inputValue.size() >= 1)
        if (inputValue[0].type() == kTypeSymbol)
            parentAddress = inputValue[0];
    
    // eventually get a container to go faster
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeObject)
            aParentContainer = inputValue[1];
	
	// run each line of the script
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)mLines->current()[0]);
		
		// run script line depending on his schema
        schema = aLine->getSchema();
		if (schema == kTTSym_flag) {
			
			// get flag name
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			
			// TODO : output current flag to display it
		}
		else if (schema == kTTSym_comment) {
			
			// TODO : output current comment to display it
			continue;
		}
		else if (schema == kTTSym_command) {
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
            
			// if there is a parent container
			if (aParentContainer) {
				
                // use container to send relative address command
                if (aLine->getSchema() == kTTSym_command && address.getType() == kAddressRelative) {
                    
                    v = TTValue(address);
                    c = TTValue((TTPtr)aLine);
                    v.append((TTPtr)&c);
                    
                    aParentContainer->sendMessage(kTTSym_Send, v, none);
                }
			}
			// or retreive the node
			else {
                
                // bind to the node
                // (each time ! this is why using flattened list could be usefull but dangerous)
                if (address.getType() == kAddressRelative)
                    err = getDirectoryFrom(address)->getTTNode(parentAddress.appendAddress(address), &aNode);
                else
                    err = getDirectoryFrom(address)->getTTNode(address, &aNode);
                
                // if there is a node
                if (!err) {
                    
                    anObject = aNode->getObject();
                    
                    // check object type
                    if (anObject) {
                        
                        // default attribute is value attribute
                        if (address.getAttribute() == kTTSymEmpty)
                            attribute = kTTSym_value;
                        else
                            attribute = address.getAttribute();
                        
                        // for data object
                        if (anObject->getName() == kTTSym_Data) {
                            
                            // send the line using the command message
                            if (attribute == kTTSym_value) {
                                
                                v = TTValue((TTPtr)aLine);
                                anObject->sendMessage(kTTSym_Command, v, none);
                                continue;
                            }
                        }
                        
                        // any other case : set attribute
                        aLine->getValue(v);
                        anObject->setAttributeValue(attribute, v);
                    }
                }
            }
        }
        else if (schema == kTTSym_script) {
            
            // get the script
            aLine->getValue(v);
            mSubScript = TTScriptPtr((TTPtr)v[0]);
            
            // get the address
            aLine->lookup(kTTSym_address, v);
            address = v[0];
            
            // bind to the node
            // (each time ! this why using flattened list could be usefull but dangerous)
            if (address.getType() == kAddressRelative)
                err = getDirectoryFrom(address)->getTTNode(parentAddress.appendAddress(address), &aNode);
            else
                err = getDirectoryFrom(address)->getTTNode(address, &aNode);
            
            // if there is a node
            aContainer = NULL;
            if (!err) {
                
                anObject = aNode->getObject();
                
                // check object type
                if (anObject) {
                    
                    // for container object
                    if (anObject->getName() == kTTSym_Container) {
                        
                        // get the container
                        aContainer = anObject;
                    }
                }
            }
            
            // prepare argument to run the sub script
            if (address.getType() == kAddressRelative)
                v = parentAddress.appendAddress(address);
            else
                v = address;
            
            // use container to go faster
            if (aContainer)
                v.append(TTObjectBasePtr(aContainer));
                
            mSubScript->sendMessage(kTTSym_Run, v, none);
        }
	}

	return kTTErrNone;
}

TTErr TTScript::RunFlattened()
{
    TTDictionaryBasePtr	aLine;
	TTNodePtr		aNode;
	TTAddress       address;
    TTSymbol        attribute;
	TTObjectBasePtr	anObject;
	TTValue			v, none;
	TTErr			err;
    
    // run each line of the script
    for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
        
        aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
        
        // note : Flattened lines are only command with absolute address
          
        // get the target address
        aLine->lookup(kTTSym_target, v);
       address = v[0];
        
        err = getDirectoryFrom(address)->getTTNode(address, &aNode);

        if (!err) {
            
            anObject = aNode->getObject();
            
            // DEBUG : check if the object is still valid
            if (!anObject->valid) {
                
                // DEBUG : this means there is a bad tree managment : we need to trace this
                std::cout << "TTScript::RunFlattened -- object at " << (const char*)address.c_str() << " is not valid" << std::endl;
                
                // DEBUG : we have to exit because it's going to crash
                return kTTErrGeneric;
            }
            
            // check object type
            if (anObject) {
                
                // default attribute is value attribute
                if (address.getAttribute() == kTTSymEmpty)
                    attribute = kTTSym_value;
                else
                    attribute = address.getAttribute();
                
                // for data object
                if (anObject->getName() == kTTSym_Data) {
                    
                    // send the line using the command message
                    if (attribute == kTTSym_value) {
                        
                        v = TTValue((TTPtr)aLine);
                        anObject->sendMessage(kTTSym_Command, v, none);
                        continue;
                    }
                }
                
                // any other case : set attribute
                aLine->getValue(v);
                anObject->setAttributeValue(attribute, v);
            }
        }
    }
    
    return kTTErrNone;
}

TTErr TTScript::RunCommand(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryBasePtr	aLine;
	TTNodePtr		aNode;
	TTAddress       address, addressToRun;
    TTSymbol        attribute;
	TTObjectBasePtr	anObject;
	TTValue			v, none;
    TTErr           err;
    TTInt8          depthDifference;
    TTAddressComparisonFlag	comp;
    
    if (inputValue.size() == 1) {
        
        addressToRun = inputValue[0];
        
        // compare each line of the script
        for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
            
            aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
            
            // note : Flattened lines are only command with absolute address
            
            // get the target address
            aLine->lookup(kTTSym_target, v);
            address = v[0];
            
            // compare the address
            comp = addressToRun.compare(address, depthDifference);
            if (comp == kAddressEqual || comp == kAddressUpper) {
                
                err = getDirectoryFrom(address)->getTTNode(address, &aNode);
                
                if (!err) {
                    
                    anObject = aNode->getObject();
                    
                    // DEBUG : check if the object is still valid
                    if (!anObject->valid) {
                        
                        // DEBUG : this means there is a bad tree managment : we need to trace this
                        std::cout << "TTScript::RunCommand -- object at " << (const char*)address.c_str() << " is not valid" << std::endl;
                        
                        // DEBUG : we have to exit because it's going to crash
                        return kTTErrGeneric;
                    }
                    
                    // check object type
                    if (anObject) {
                        
                        // default attribute is value attribute
                        if (address.getAttribute() == kTTSymEmpty)
                            attribute = kTTSym_value;
                        else
                            attribute = address.getAttribute();
                        
                        // for data object
                        if (anObject->getName() == kTTSym_Data) {
                            
                            // send the line using the command message
                            if (attribute == kTTSym_value) {
                                
                                v = TTValue((TTPtr)aLine);
                                anObject->sendMessage(kTTSym_Command, v, none);
                                continue;
                            }
                        }
                        
                        // any other case : set attribute
                        aLine->getValue(v);
                        anObject->setAttributeValue(attribute, v);
                    }
                }
            }
        }
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTScript::RemoveCommand(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryBasePtr	aLine;
	TTAddress       address, addressToRemove;
	TTValue			v;
    TTInt8          depthDifference;
    TTList          linesToRemove;
    TTAddressComparisonFlag	comp;
    
    if (inputValue.size() == 1) {
        
        addressToRemove = inputValue[0];
        
        // compare each line of the script
        for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
            
            aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
            
            // note : Flattened lines are only command with absolute address
            
            // get the target address
            aLine->lookup(kTTSym_target, v);
            address = v[0];
            
            // compare the address
            comp = addressToRemove.compare(address, depthDifference);
            if (comp == kAddressEqual || comp == kAddressUpper)
                
                // append to the list of lines to remove
                linesToRemove.append(mFlattenedLines->current());
        }
        
        // remove each lines from the flattened line list
        for (linesToRemove.begin(); linesToRemove.end(); linesToRemove.next())
            mFlattenedLines->remove(linesToRemove.current());
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTScript::Dump(const TTValue& inputValue, TTValue& outputValue)
{
    // use the Flattened lines if they are ready
    if (mFlattened)
        return DumpFlattened();
    
	TTDictionaryBasePtr	aLine;
	TTSymbol		schema, name, unit;
	TTAddress		address, parentAddress = kTTAdrsRoot;
	TTValue			v, valueToDump, none;
	TTUInt32		ramp;
	
	if (!mReturnLineCallback)
		return kTTErrGeneric;
	
	// It is possible to output the command address relatively to a container address
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            parentAddress = inputValue[0];
	
	// output each line of the script
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		valueToDump.clear();
		aLine = TTDictionaryBasePtr((TTPtr)mLines->current()[0]);
		
		// output script line depending on his schema
        schema = aLine->getSchema();
		if (schema == kTTSym_flag) {
			
			// get flag value
			aLine->getValue(valueToDump);
			
			// prepend flag name
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			valueToDump.prepend(name);
			
			// prepend dash
			valueToDump.prepend(kTTSym_dash);
			
			// output line value
			mReturnLineCallback->deliver(valueToDump);
		}	
		else if (schema == kTTSym_comment) {
			
			// get comment value
			aLine->getValue(valueToDump);
			
			// prepend sharp
			valueToDump.prepend(kTTSym_sharp);
			
			// output line value
			mReturnLineCallback->deliver(valueToDump);
		}
		else if (schema == kTTSym_command) {
			
			// get command value
			aLine->getValue(valueToDump);
			
			// get the unit
			if (!aLine->lookup(kTTSym_unit, v)) {
				unit = v[0];
				valueToDump.append(unit);
			}
			
			// get the ramp
			if (!aLine->lookup(kTTSym_ramp, v)) {
				ramp = v[0];
				valueToDump.append(kTTSym_ramp);
				valueToDump.append(ramp);
			}
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
			
			// if relative, append to container address
			if (address.getType() == kAddressRelative)
				address = parentAddress.appendAddress(address);
			
			// append the address
			valueToDump.prepend(address);
			
			// output line value
			mReturnLineCallback->deliver(valueToDump);
		}
		else if (schema == kTTSym_script) {
			
			// get the script
			aLine->getValue(v);
			mSubScript = v[0];
			
			TTScriptPtr(mSubScript)->mReturnLineCallback = mReturnLineCallback;
			
			// get address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
			
			// if relative, append to container address
			if (address.getType() == kAddressRelative)
				address = parentAddress.appendAddress(address);
			
			// dump the subscript
			mSubScript->sendMessage(kTTSym_Dump, address, none);
		}
	}
	
	return kTTErrNone;
}

TTErr TTScript::DumpFlattened()
{
    TTDictionaryBasePtr	aLine;
	TTAddress       address;
    TTSymbol        unit;
	TTValue			v, valueToDump;
    TTUInt32		ramp;
    
    // run each line of the script
    for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
        
        aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
        
        // note : Flattened lines are only command with absolute address
        
        // get command value
        aLine->getValue(valueToDump);
        
        // get the unit
        if (!aLine->lookup(kTTSym_unit, v)) {
            unit = v[0];
            valueToDump.append(unit);
        }
        
        // get the ramp
        if (!aLine->lookup(kTTSym_ramp, v)) {
            ramp = v[0];
            valueToDump.append(kTTSym_ramp);
            valueToDump.append(ramp);
        }
        
        // get the target address
        aLine->lookup(kTTSym_target, v);
        address = v[0];
                
        // append the address
        valueToDump.prepend(address);
        
        // output line value
        mReturnLineCallback->deliver(valueToDump);
    }
    
    return kTTErrNone;
}

TTErr TTScript::DumpLine(const TTValue& inputValue, TTValue& outputValue)
{
    TTDictionaryBasePtr	aLine;
    TTAddress       address, addressToDump;;
    TTSymbol        unit;
    TTValue			v, valueToDump;
    TTUInt32		ramp;
    TTInt8          depthDifference;
    TTAddressComparisonFlag	comp;
    
    if (inputValue.size() == 1) {
        
        addressToDump = inputValue[0];
        
        // run each line of the script
        for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
            
            aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
            
            // note : Flattened lines are only command with absolute address
            
            // get the target address
            aLine->lookup(kTTSym_target, v);
            address = v[0];
            
            // compare the address
            comp = addressToDump.compare(address, depthDifference);
            if (comp == kAddressEqual || comp == kAddressUpper) {
                
                // get command value
                aLine->getValue(valueToDump);
                
                // get the unit
                if (!aLine->lookup(kTTSym_unit, v)) {
                    unit = v[0];
                    valueToDump.append(unit);
                }
                
                // get the ramp
                if (!aLine->lookup(kTTSym_ramp, v)) {
                    ramp = v[0];
                    valueToDump.append(kTTSym_ramp);
                    valueToDump.append(ramp);
                }
                
                // append the address
                valueToDump.prepend(address);
                
                // output line value
                mReturnLineCallback->deliver(valueToDump);
            }
        }
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTScript::Append(const TTValue& newLine, TTValue& outputValue)
{
	TTDictionaryBasePtr line = NULL;
    TTAddress       address;
	TTValue			v;
	
	// if the line is already parsed into a TTDictionnary
	// append it directly (this allows script owners to parse a line before to append it)
    if (newLine.size() == 1) {
        
        if (newLine[0].type() == kTypePointer) {
            
            mLines->append(newLine);
            outputValue = newLine;
            return kTTErrNone;
        }
    }
		
	line = TTScriptParseLine(newLine);
	
	if (line) {
		
		// append the line
		v = TTValue((TTPtr)line);
		mLines->append(v);
        
        // append the line to the flatenned line if possible
        if (mFlattened && (line->getSchema() == kTTSym_command || line->getSchema() == kTTSym_script)) {
            
            line->lookup(kTTSym_address, v);
            address = v[0];
            
            if (address.getType() == kAddressAbsolute) {
                line->append(kTTSym_target, address);
                
                v = TTValue((TTPtr)line);
                mFlattenedLines->append(v);
            }
        }
		
		outputValue = v;
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::AppendCommand(const TTValue& newCommand, TTValue& outputValue)
{
	TTDictionaryBasePtr	line = NULL;
	TTAddress       address;
	TTValue			v;
	
	line = TTScriptParseCommand(newCommand);
	
	if (line) {
		
		// append the line
		v = TTValue((TTPtr)line);
		mLines->append(v);
        
        // append the line to the flatenned line if possible
        if (mFlattened) {
            
            line->lookup(kTTSym_address, v);
            address = v[0];
            
            if (address.getType() == kAddressAbsolute) {
                line->append(kTTSym_target, address);
                
                v = TTValue((TTPtr)line);
                mFlattenedLines->append(v);
            }
        }
        
		outputValue = v;
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::AppendComment(const TTValue& newComment, TTValue& outputValue)
{
	TTDictionaryBasePtr line = NULL;
	TTValue			v;
	
	line = TTScriptParseComment(newComment);
	
	if (line) {
		
		// append the line
		v = TTValue((TTPtr)line);
		mLines->append(v);
		
		outputValue = v;
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::AppendScript(const TTValue& newScript, TTValue& outputValue)
{
	TTDictionaryBasePtr	line = new TTDictionaryBase();
	TTAddress       address;
	TTValue			v;
	
	line = TTScriptParseScript(newScript);
	
	if (line) {
		
		// get the sub script
		line->getValue(v);
		mSubScript = v[0];
		
		// append the line
		v = TTValue((TTPtr)line);
		mLines->append(v);
        mFlattenedLines->append(v);
		outputValue = v;
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::AppendFlag(const TTValue& newflagAndArguments, TTValue& outputValue)
{
	TTDictionaryBasePtr line = NULL;
	TTValue			v;
	
	line = TTScriptParseFlag(newflagAndArguments);
	
	if (line) {
		
		// append the line
		v = TTValue((TTPtr)line);
		mLines->append(v);
		
		outputValue = v;
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler;
	TTDictionaryBasePtr	aLine = NULL;
	TTSymbol		name, unit;
	TTAddress       address;
//	TTNodePtr		aNode;
//	TTObjectBasePtr	anObject;
	TTValue			v;
	TTString		aString;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
	// Write all lines
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)mLines->current()[0]);
		
		// Write script line depending on his schema
		if (aLine->getSchema() == kTTSym_flag) {
			
			// get flag name
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			
			// dont't write preset or cue flags
			// TODO : we need to filter those flag line before (in TTPreset or TTCue)
			if (name == TTSymbol("preset") || name == TTSymbol("cue"))
				continue;
			
			// else get flag arguments value
			aLine->getValue(v);
			v.toString();
			aString = TTString(v[0]);
			
			// write flag name and arguments as an Element
			xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "flag");
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST name.c_str());
			xmlTextWriterWriteRaw((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST aString.data());
			xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
		}	
		if (aLine->getSchema() == kTTSym_comment) {
			
			// get comment value
			aLine->getValue(v);
			v.toString();
			aString = TTString(v[0]);
			
			// write comment attribute
			xmlTextWriterWriteFormatComment((xmlTextWriterPtr)aXmlHandler->mWriter, "%s", BAD_CAST aString.data());
		}
		else if (aLine->getSchema() == kTTSym_command) {
			
			// get address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
					
			// start command Element
			xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST kTTSym_command.c_str());
			
			// write name attribute
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST address.c_str());
			
			// write unit attribute
			if (!aLine->lookup(kTTSym_unit, v)) {
				unit = v[0];
				
				xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "unit", BAD_CAST unit.c_str());
			}
			
			// write ramp attribute
			if (!aLine->lookup(kTTSym_ramp, v)) {
				v.toString();
				aString = TTString(v[0]);
				
				xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "ramp", BAD_CAST aString.data());
			}
			
			// write value
			if (!aLine->getValue(v)) {
				v.toString();
				aString = TTString(v[0]);
				
				xmlTextWriterWriteRaw((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST aString.data());
			}
			
			// close command Element
			xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
		}
		else if (aLine->getSchema() == kTTSym_script) {
			
			// get address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
			
			// start script Element
			xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST kTTSym_script.c_str());
			
			// write address attribute
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST address.c_str());
			
			// get the script
			aLine->getValue(v);
			mSubScript = v[0];
			
			// use WriteAsXml of the script
			v = TTValue(mSubScript);
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TTSymbol("Write"));
			
			// close script Element
			xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
		}
	}
	
	return kTTErrNone;
}

TTErr TTScript::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTDictionaryBasePtr	aLine;
	TTSymbol			name, attributeName;
	TTAddress           address;
	TTValue				v, parsedLine;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// if there is a current sub script : pass it the XML content
	if (mSubScript) {
		
		// use ReadFromXml of the sub script
		return mSubScript->sendMessage(TTSymbol("ReadFromXml"), inputValue, outputValue);
	}
	
	// Switch on the name of the XML node
	
	// Starts file reading
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingStarts) {
		Clear();
		return kTTErrNone;
	}
	
	// Ends file reading
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingEnds)
		return kTTErrNone;
	
	// Comment node : edit comment line
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingComment) {
		
		// edit comment line
		aLine = new TTDictionaryBase();
		aLine->setSchema(kTTSym_comment);
		aLine->setValue(aXmlHandler->mXmlNodeValue);
		
		// append the line
		v = TTValue((TTPtr)aLine);
		mLines->append(v);
		
		return kTTErrNone;
	}
	
	// Flag node : edit flag line
	if (aXmlHandler->mXmlNodeName == kTTSym_flag) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// Get flag name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v)) {
			
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeSymbol) {
                    
                    name = v[0];
                    
                    // edit flag line
                    aLine = new TTDictionaryBase();
                    aLine->setSchema(kTTSym_flag);
                    aLine->append(kTTSym_name, name);
                    aLine->setValue(aXmlHandler->mXmlNodeValue);
                    
                    // append the line
                    v = TTValue((TTPtr)aLine);
                    mLines->append(v);
                }
            }
		}
		
		return kTTErrNone;
	}
	
	// Command node : edit command line
	if (aXmlHandler->mXmlNodeName == kTTSym_command) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// get address attribute
		if (!aXmlHandler->getXmlAttribute(kTTSym_address, v)) {
			
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeSymbol) {
                    
                    address = v[0];
                }
                else {
                    
                    v.toString();
                    address = TTAddress(TTString(v[0]));
                }
                    
                // edit command line
                aLine = new TTDictionaryBase();
                aLine->setSchema(kTTSym_command);
                aLine->append(kTTSym_address, address);
                aLine->setValue(aXmlHandler->mXmlNodeValue);
                
                // get all other command line attribute (unit, ramp, ...)
                while (!aXmlHandler->getXmlNextAttribute(attributeName, v)) {
                    
                    // append attribute to the command line
                    aLine->append(attributeName, v);
                }
                
                // append the line
                v = TTValue((TTPtr)aLine);
                mLines->append(v);
                
                return kTTErrNone;
            }
		}
	}
	
	// Script node : edit script line
	if (aXmlHandler->mXmlNodeName == kTTSym_script) {
		
		// end of the script node
		if (!aXmlHandler->mXmlNodeStart) {
			
			if (mParentScript) {
				
				// set NULL as sub script of the parent script
				v = TTValue((TTObjectBasePtr)NULL);
				mParentScript->setAttributeValue(TTSymbol("subScript"), v);
			}
		}
		
		// get address attribute of the node
		else if (!aXmlHandler->getXmlAttribute(kTTSym_address, v)) {
			
            if (v.size() == 1) {
                
                // edit sub script line
                this->AppendScript(v, parsedLine);
                
                // set this as parent script of the subscript
                v = TTValue(TTObjectBasePtr(this));
                mSubScript->setAttributeValue(TTSymbol("parentScript"), v);
            }
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr	aTextHandler;
	TTString			*buffer;
	TTDictionaryBasePtr		aLine;
	TTAddress           address;
	TTSymbol			name;
	TTString			aString;
    TTBoolean           addQuote;
	TTUInt8				i;
	TTValue				v;
	
	aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)inputValue[0]);
	buffer = aTextHandler->mWriter;
	
	// write a new line for level 0
	if (!aTextHandler->mTabCount)
		*buffer += "\n";
	
	// Write all lines
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)mLines->current()[0]);
		
		// write tabulation
		for (i = 0; i < aTextHandler->mTabCount; i++)
			*buffer += "\t";
		
		// Write script line depending on his schema
		if (aLine->getSchema() == kTTSym_flag) {
			
			// get flag name
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			
			// get flag arguments value if exists
			if (!aLine->getValue(v)) {
                
                // if the value is an unique symbol : add quote
                addQuote = v.size() == 1 && v[0].type() == kTypeSymbol;
                    
				v.toString();
				aString = TTString(v[0]);
			}
			else aString = "";
			
			// write flag name and arguments
			*buffer += "- ";
			*buffer += name.c_str();
			*buffer += " ";
            if (addQuote) *buffer += "\"";
			*buffer += aString.data();
            if (addQuote) *buffer += "\"";
			*buffer += "\n";
		}	
		if (aLine->getSchema() == kTTSym_comment) {
			
			// get comment value
			if (!aLine->getValue(v)) {
				v.toString();
				aString = TTString(v[0]);
			}
			else aString = "";
			
			// write comment
			*buffer += "# ";
			*buffer += aString.data();
			*buffer += "\n";
		}
		else if (aLine->getSchema() == kTTSym_command) {
			
			// get name
			if (!aLine->lookup(kTTSym_address, v)) {
				address = v[0];

				// write address
				*buffer += address.c_str();
				
				// get and write value
				if (!aLine->getValue(v)) {	
					v.toString();
					aString = TTString(v[0]);
					
					*buffer += " ";
					*buffer += aString.data();
					
					// get and write unit
					if (!aLine->lookup(kTTSym_unit, v)) {
						v.toString();
						aString = TTString(v[0]);
						
						*buffer += " ";
						*buffer += aString.data();
					}
					
					// get and write ramp
					if (!aLine->lookup(kTTSym_ramp, v)) {
						v.toString();
						aString = TTString(v[0]);
						
						*buffer += " ramp ";
						*buffer += aString.data();
					}
				}
				
				*buffer += "\n";
			}
		}
		else if (aLine->getSchema() == kTTSym_script) {
		
			// get address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
			
			// write address
			*buffer += address.c_str();
			*buffer += "\n";
			
			// get the script
			aLine->getValue(v);
			mSubScript = v[0];
			
			// set this as parent script of the subscript
			v = TTValue(TTObjectBasePtr(this));
			mSubScript->setAttributeValue(TTSymbol("parentScript"), v);
			
			// increment the tab count to indent lines
			aTextHandler->mTabCount++;
			
			// use WriteAsText of the sub script
			mSubScript->sendMessage(TTSymbol("WriteAsText"), inputValue, outputValue);
			
			// decrement the tab count
			aTextHandler->mTabCount--;
		}
	}
	
	if (mParentScript) {
		
		// set NULL as sub script of the parent script
		v = TTValue((TTObjectBasePtr)NULL);
		mParentScript->setAttributeValue(TTSymbol("subScript"), v);
	}
	
	return kTTErrNone;	
}

TTErr TTScript::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr	aTextHandler;
	TTDictionaryBasePtr		aLine;
	TTValue				v, parsedLine;
	
	aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
	// this line is for this script
	if (aTextHandler->mTabCount == 0) {
		
		this->Append(*(aTextHandler->mLine), parsedLine);
		
		// check for script line to set it as current mSubScript
		aLine = TTDictionaryBasePtr((TTPtr)parsedLine[0]);
		
		if (aLine) {
			
			if (aLine->getSchema() == kTTSym_script) {
				
				// get script
				aLine->getValue(v);
				mSubScript = v[0];
			}
		}
	}
	
	// else it is for a sub script
	else {
		
		// if no sub script something goes wrong
		if (!mSubScript) 
			return kTTErrGeneric;
			
		aTextHandler->mTabCount--;
		
		// set this as parent script of the subscript
		v = TTValue(TTObjectBasePtr(this));
		mSubScript->setAttributeValue(TTSymbol("parentScript"), v);
		
		// use ReadFromText of the sub script
		v = TTValue(mSubScript);
		aTextHandler->setAttributeValue(kTTSym_object, v);
		aTextHandler->sendMessage(TTSymbol("Read"));
	}

	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTDictionaryBasePtr TTScriptParseLine(const TTValue& newLine)
{
	TTSymbol	firstSymbol;
	TTValue		v, rest, none;
    TTUInt32    size = newLine.size();
	
    if (size >= 1) {
        
        // get the first symbol
        if (newLine[0].type() == kTypeSymbol) {
            
            firstSymbol = newLine[0];
        }
        // if the first element is not a symbol
        else {
            
            v = newLine[0];
            v.toString();
            firstSymbol = TTString(v[0]);
        }
        
        // if starts by a "-" : flag line
        if (firstSymbol == kTTSym_dash) {
            
            if (size >= 2) {
                if (newLine[1].type() == kTypeSymbol) {
                    
                    rest.copyFrom(newLine, 1);
                    return TTScriptParseFlag(rest);
                }
            }
        }
        // if starts by a "#" : comment line
        else if (firstSymbol == kTTSym_sharp) {
            
            if (size >= 2) {
                if (newLine[1].type() == kTypeSymbol) {
                    
                    rest.copyFrom(newLine, 1);
                    return TTScriptParseComment(rest);
                }
            }
            else
                return TTScriptParseComment(none);
        }
    }
    
    // else if more than one symbol : append a command
    if (size > 1)
        return TTScriptParseCommand(newLine);
    
    // else : append a sub script
    else
        return TTScriptParseScript(newLine);
}

TTDictionaryBasePtr TTScriptParseComment(const TTValue& newComment)
{
	TTDictionaryBasePtr line = new TTDictionaryBase();
	
	line->setSchema(kTTSym_comment);
	line->setValue(newComment);
	
	return line;
}

TTDictionaryBasePtr TTScriptParseFlag(const TTValue& newflagAndArguments)
{
	TTDictionaryBasePtr line = NULL;
	TTSymbol		flagName;
	TTValue			v, arguments;
	
    if (newflagAndArguments.size() >= 1) {
        
        // get the first symbol
        if (newflagAndArguments[0].type() == kTypeSymbol) {
            
            flagName = newflagAndArguments[0];
        }
        // if the first element is not a symbol
        else {
            
            v = newflagAndArguments[0];
            v.toString();
            flagName = TTString(v[0]);
        }
        
        arguments.copyFrom(newflagAndArguments, 1);
        
        line = new TTDictionaryBase();
        line->setSchema(kTTSym_flag);
        line->append(kTTSym_name, flagName);
        line->setValue(arguments);
    }
	
	return line;
}

TTDictionaryBasePtr TTScriptParseCommand(const TTValue& newCommand)
{
	TTDictionaryBasePtr line = NULL;
	TTSymbol		firstSymbol;
	TTValue			v, commandValue;
	
	// parse name + command
    if (newCommand.size() >= 1 ) {
        
        if (newCommand[0].type() == kTypeSymbol) {
            
            firstSymbol = newCommand[0];
        }
        else {
            
            v = newCommand[0];
            v.toString();
            firstSymbol = TTString(v[0]);
        }
        
        commandValue.copyFrom(newCommand, 1);
        
        line = TTDataParseCommand(commandValue);
        
        if (line)
            line->append(kTTSym_address, firstSymbol);
    }
	
	return line;
}

TTDictionaryBasePtr TTScriptParseScript(const TTValue& newScript)
{
	TTDictionaryBasePtr line = NULL;
	TTSymbol		firstSymbol;
	TTObjectBasePtr	script = NULL;
	TTValue			v, none;
	
	// parse script address
    if (newScript.size() >= 1 ) {
        
        if (newScript[0].type() == kTypeSymbol) {
            
            firstSymbol = newScript[0];
        }
        else {
            
            v = newScript[0];
            v.toString();
            firstSymbol = TTString(v[0]);
        }
        
        line = new TTDictionaryBase();
        
        if (line) {
            
            line->setSchema(kTTSym_script);
            line->append(kTTSym_address, firstSymbol);
            
            TTObjectBaseInstantiate(kTTSym_Script, &script, none);
            
            v = TTValue(script);
            line->setValue(v);
        }

    }
	
	return line;
}

TTErr TTScriptInterpolate(TTScriptPtr script1, TTScriptPtr script2, TTFloat64 position)
{
	TTDictionaryBasePtr line1, line2;
    TTAddress       adrs1, adrs2;
    TTValue			v1, v2, v, newValue;
	TTSymbol		attribute, type, function;
    TTNodePtr       aNode;
    TTObjectBasePtr aData;
	TTValue			found, none;
	TTUInt32		i, s;
    
	for (script1->mFlattenedLines->begin(), script2->mFlattenedLines->begin();
		 script1->mFlattenedLines->end() && script2->mFlattenedLines->end(); 
		 script1->mFlattenedLines->next(), script2->mFlattenedLines->next()) {
		
        line1 = TTDictionaryBasePtr((TTPtr)script1->mFlattenedLines->current()[0]);
        line2 = TTDictionaryBasePtr((TTPtr)script2->mFlattenedLines->current()[0]);
		
        // get the target address
        line1->lookup(kTTSym_target, v);
        adrs1 = v[0];
        
        line2->lookup(kTTSym_target, v);
        adrs2 = v[0];
        
        // adrs1 and adrs2 have to be the same
        if (adrs1 != adrs2) {
            
            script2->mFlattenedLines->find(&TTScriptFindTarget, (TTPtr)&adrs1, found);
            
            // couldn't find the same address in script2 : skip the command
            if (found.empty()) {
                script2->mFlattenedLines->begin();
                continue;
            }
            else
                line2 = TTDictionaryBasePtr((TTPtr)found[0]);
        }
        
        // bind to the node
		if (!getDirectoryFrom(adrs1)->getTTNode(adrs1, &aNode)) {
            
            aData = aNode->getObject();
            if (aData) {
                
                // check type
                if (!aData->getAttributeValue(kTTSym_type, v)) {
                    
                    type = v[0];
                    
                    // get line values
                    line1->getValue(v1);
                    line2->getValue(v2);
                    
                    // don't interpolate attribute
                    attribute = adrs1.getAttribute();
                    if (attribute != kTTSymEmpty && attribute != kTTSym_value)
                        continue;
                    
                    // check function
                    if (!aData->getAttributeValue(kTTSym_rampFunction, v)) {
                        
                        function = v[0];
                        
                        if (function != kTTSym_none) {
                    
                            // set the starting value
                            aData->sendMessage(kTTSym_RampSet, v1, none);
                            
                            // set the target value
                            aData->sendMessage(kTTSym_RampTarget, v2, none);
                            
                            // set interpolate using the ramp function
                            aData->sendMessage(kTTSym_RampSlide, position, none);
                        }
                        
                        // process the interpolation our self
                        else {
                            
                            if (type == kTTSym_integer) {
                                newValue = TTValue(TTInt32(v1[0]) * (1. - position) + TTInt32(v2[0]) * position);
                                
                            } else if (type == kTTSym_decimal) {
                                newValue = TTValue(TTFloat64(v1[0]) * (1. - position) + TTFloat64(v2[0]) * position);
                                
                            } else if (type == kTTSym_array) {
                                s = v1.size();
                                if (s == v2.size()) {
                                    
                                    newValue.resize(s);
                                    for (i = 0; i < s; i++)
                                        newValue[i] = TTFloat64(v1[i]) * (1. - position) + TTFloat64(v2[i]) * position;
                                }
                                
                            } else
                                newValue = position == 0. ? v1 : v2;
                            
                            // set the interpolated value
                            aData->setAttributeValue(kTTSym_value, newValue);
                        }
                    }
                }
            }
        }
    }
	
	return kTTErrNone;
}

TTErr TTScriptMix(const TTValue& scripts, const TTValue& factors)
{
	TTScriptPtr		firstScript, aScript;
	TTDictionaryBasePtr firstScriptLine, aLine;
    TTAddress       firstAdrs, adrs;
    TTValue			v, valueToMix, mixedValue, found;
    TTSymbol		type;
    TTNodePtr       aNode;
    TTObjectBasePtr anObject;
    TTFloat64		sumFactors;
    TTUInt32		i, mixSize;
	
    if (scripts.empty())
		return kTTErrGeneric;
	
	mixSize = scripts.size();
	
	// initialized lines list iterator
	firstScript = TTScriptPtr((TTObjectBasePtr)scripts[0]);
	firstScript->mFlattenedLines->begin();
	
    for (i = 1; i < mixSize; i++) {
        
		aScript = TTScriptPtr((TTObjectBasePtr)scripts[i]);
		aScript->mFlattenedLines->begin();
    }
	
	// iterate over all flattened lines of first given script
    for (; firstScript->mFlattenedLines->end(); firstScript->mFlattenedLines->next()) {
		
		firstScriptLine = TTDictionaryBasePtr((TTPtr)firstScript->mFlattenedLines->current()[0]);
        
		// get the target address
        firstScriptLine->lookup(kTTSym_target, v);
        firstAdrs = v[0];
        
        // bind to the node
		if (!getDirectoryFrom(firstAdrs)->getTTNode(firstAdrs, &aNode)) {
            
            anObject = aNode->getObject();
            
            if (anObject) {
                
                if (!anObject->getAttributeValue(kTTSym_type, v)) {
                    
                    type = v[0];
                    
                    // initialize the mix with the command of the first script
                    sumFactors = TTScriptMixLine(firstScriptLine, type, mixSize, TTFloat64(factors[0]), mixedValue, YES);
                    
                    // then look for same line into the other script
                    for (i = 1; i < mixSize; i++) {
                        
                        aScript = TTScriptPtr((TTObjectBasePtr)scripts[i]);
                        
                        aLine = NULL;
                        if (!aScript->mFlattenedLines->end()) {
                            
                            // go to the next line
                            aScript->mFlattenedLines->next();
                            aLine = TTDictionaryBasePtr((TTPtr)aScript->mFlattenedLines->current()[0]);
                            
                            // get the target address
                            aLine->lookup(kTTSym_target, v);
                            adrs = v[0];
                            
                            // is the address equal ?
                            if (adrs != firstAdrs)
                                aLine = NULL;
                        }
                        
                        // if the next line is not the good line
                        if (!aLine) {
                            
                            // try to find the same line
                            aScript->mFlattenedLines->find(&TTScriptFindTarget, (TTPtr)&firstAdrs, found);
                            
                            // couldn't find the same node in the script :
                            // look into to next script for this command
                            if (found.empty()) {
                                aScript->mFlattenedLines->begin();
                                continue;
                            }
                            else
                                aLine = TTDictionaryBasePtr((TTPtr)found[0]);
                        }
                        
                        // if a line have been found
                        if (aLine) {
                            
                            // mix the command of this script
                            // TODO : introduce a mixWeight information into command lines
                            sumFactors += TTScriptMixLine(aLine, type, mixSize, TTFloat64(factors[i]), mixedValue, NO);
                            
                            aScript->mFlattenedLines->next();
                        }
                    }
                    
                    // prepare and send the mixed value
                    if (sumFactors > 0) {
                        
                        // if numeric : normalise by sum of mixWeight
                        if (type == kTTSym_integer)
                            mixedValue[0] = TTInt32(mixedValue[0]) / sumFactors + 1; // +1 because the value is truncate in TTData::setValue
                        
                        else if (type == kTTSym_decimal)
                            mixedValue[0] = TTFloat64(mixedValue[0]) / sumFactors;
                        
                        else if (type == kTTSym_array)
                            for (int i = 0; i < mixedValue.size(); i++)
                                mixedValue[i] = TTFloat64(mixedValue[i]) / sumFactors;
                        // for any other type : remove the coef at the end of the value
                        else
                            mixedValue.resize(mixedValue.size()-1);
                        
                        // set the mixed value
                        anObject->setAttributeValue(kTTSym_value, mixedValue);
                    }
                }
            }
        }
    }

    return kTTErrNone;
}

TTFloat64 TTScriptMixLine(TTDictionaryBasePtr lineToMix, TTSymbol dataType, TTUInt32 mixSize, TTFloat64 factor, TTValue& mixedValue, TTBoolean init)
{
	TTUInt32	i, s;
	TTFloat64	mixWeight = 1.;	// TODO : introduce a mixWeight information into command lines
	TTValue		valueToMix;
	
	lineToMix->getValue(valueToMix);
	
	if (init) {
		mixedValue.clear();
		for (i = 0; i < valueToMix.size(); i++)
			mixedValue.append(0);
	}
	
    if (dataType == kTTSym_integer)
		mixedValue[0] = TTInt32(mixedValue[0]) + (TTInt32(valueToMix[0]) * factor * mixWeight);

	else if (dataType == kTTSym_decimal)
		mixedValue[0] = TTFloat64(mixedValue[0]) + (TTFloat64(valueToMix[0]) * factor * mixWeight);

	else if (dataType == kTTSym_array) {
		
		s = valueToMix.size();
		if (s == mixedValue.size()) {
			
			for (i = 0; i < s; i++)
				mixedValue[i] = TTFloat64(mixedValue[i]) + (TTFloat64(valueToMix[i]) * factor * mixWeight);
		}
	}
	// for any other type : store the coef at the end of the value to keep only the max coef
    else {
		
		if (init) mixedValue.append((TTFloat64)0.);
		
		if (factor * mixWeight >= TTFloat64(mixedValue[mixedValue.size()-1])) {
			
			mixedValue = valueToMix;
			mixedValue.append((TTFloat64) factor * mixWeight);
		}
	}
	
    return factor * mixWeight;
}

TTErr TTScriptMerge(TTScriptPtr scriptToMerge, TTScriptPtr mergedScript)
{
	TTDictionaryBasePtr		lineToMerge, mergedLine;
	TTScriptPtr			subScriptToMerge, mergedSubScript;
	TTAddress           addressToMerged, mergedAddress;
	TTValue				v, valueToMerged, mergedValue, found, parsedLine;
	TTBoolean			merged = NO; // to know if a line have already been merged
	TTErr				err;
	
	if (!scriptToMerge->mLines || !mergedScript->mLines)
		return kTTErrGeneric;
	
	for (scriptToMerge->mLines->begin(); scriptToMerge->mLines->end(); scriptToMerge->mLines->next()) {
		
		lineToMerge = TTDictionaryBasePtr((TTPtr)scriptToMerge->mLines->current()[0]);
		
		// get address
		addressToMerged = kTTAdrsEmpty;
		if (!lineToMerge->lookup(kTTSym_address, v))
			addressToMerged = v[0];
		
		if (addressToMerged != kTTAdrsEmpty) {
			
			// try to find a line for this address into the merged script
			merged = NO;
			if (mergedScript->mLines) {
				
				mergedScript->mLines->find(&TTScriptFindAddress, (TTPtr)&addressToMerged, found);
				
				if (!(found.empty())) {
					mergedLine = TTDictionaryBasePtr((TTPtr)found[0]);
					merged = YES;
				}
			}
			
			// merge a line depending on his schema
			if (lineToMerge->getSchema() == kTTSym_command) {
				
				// if this script line haven't been merged yet
				if (!merged) {
					// copy the command line and append it to the merged script
					v = TTValue((TTPtr)TTScriptCopyLine(lineToMerge));
					mergedScript->Append(v, parsedLine);
				}
				else {
					// get lines value
					lineToMerge->getValue(valueToMerged);
					mergedLine->getValue(mergedValue);
				
					// don't merge a command if it already exists
					if (valueToMerged == mergedValue)
						continue;
					
					// otherwise replace by the value to merge
					mergedLine->setValue(valueToMerged);
				}
			}
			else if (lineToMerge->getSchema() == kTTSym_script) {
				
				// get the sub scripts
				subScriptToMerge = NULL;
				if (!lineToMerge->getValue(v))
					subScriptToMerge = TTScriptPtr((TTObjectBasePtr)v[0]);
				
				// if this script line haven't been merged yet
				if (!merged)
					// create a line for the merged sub script
					mergedLine = TTScriptParseScript(addressToMerged);
				
				// get the new sub script
				mergedSubScript = NULL;
				mergedLine->getValue(v);
				mergedSubScript = TTScriptPtr((TTObjectBasePtr)v[0]);
				
				// merge the sub scripts if they exist
				if (subScriptToMerge && mergedSubScript) {
					
					err = TTScriptMerge(subScriptToMerge, mergedSubScript);
					
					// if this script line haven't been merged yet
					if (!merged) {
						
						// append the line to the merged script
						v = TTValue((TTPtr)mergedLine);
						mergedScript->Append(v, parsedLine);
					}
				}
			}
		}
		// else copy the line and append it to the merged script
		else {
			v = TTValue((TTPtr)TTScriptCopyLine(lineToMerge));
			mergedScript->Append(v, parsedLine);
		}
	}
	
	return kTTErrNone;	
}

TTErr TTScriptOptimize(TTScriptPtr aScriptToOptimize, TTScriptPtr aScript, TTScriptPtr optimizedScript)
{
	TTDictionaryBasePtr		lineToOptimize, aLine, optimizedLine;
	TTScriptPtr			subScriptToOptimize, aSubScript, optimizedSubScript;
	TTAddress           addressToOptimize, address;
	TTValue				v, valueToOptimize, value, found, parsedLine;
	TTBoolean			empty = YES; // to know if the optimized script contains at least one command
	TTErr				err;
	
	if (!aScriptToOptimize->mLines || !aScript->mLines)
		return kTTErrGeneric;
	
	for (aScriptToOptimize->mLines->begin(), aScript->mLines->begin(); 
		 aScriptToOptimize->mLines->end() && aScript->mLines->end(); 
		 aScriptToOptimize->mLines->next(), aScript->mLines->next()) {
		
		lineToOptimize = TTDictionaryBasePtr((TTPtr)aScriptToOptimize->mLines->current()[0]);
		aLine = TTDictionaryBasePtr((TTPtr)aScript->mLines->current()[0]);
		
		// get addresses
		addressToOptimize = kTTAdrsEmpty;
		if (!lineToOptimize->lookup(kTTSym_address, v))
			addressToOptimize = v[0];

		address = kTTAdrsEmpty;
		if (!aLine->lookup(kTTSym_address, v))
			address = v[0];
		
		if (addressToOptimize != kTTAdrsEmpty && address != kTTAdrsEmpty) {
			
			// the both addresses have to be the same
			if (addressToOptimize != address) {
				aScript->mLines->find(&TTScriptFindAddress, (TTPtr)&addressToOptimize, found);
				
				// couldn't find the same address in the script : skip the command
				if (found.empty()) {
					aScript->mLines->begin();
					continue;
				}
				else
					aLine = TTDictionaryBasePtr((TTPtr)found[0]);
			}
			
			// optimize the line depending on the schema
			if (lineToOptimize->getSchema() == kTTSym_command && aLine->getSchema() == kTTSym_command) {
				
				// get line values
				lineToOptimize->getValue(valueToOptimize);
				aLine->getValue(value);
				
				// don't copy a command if it already exists
				if (valueToOptimize == value)
					continue;
				
				// copy the command line and append it to the optimized script
				v = TTValue((TTPtr)TTScriptCopyLine(lineToOptimize));
				optimizedScript->Append(v, parsedLine);
				
				// the optimized script contains at least one command line now
				empty = NO;
			}
			else if (lineToOptimize->getSchema() == kTTSym_script && aLine->getSchema() == kTTSym_script) {
				
				// get the sub scripts
				subScriptToOptimize = NULL;
				if (!lineToOptimize->getValue(v))
					subScriptToOptimize = TTScriptPtr((TTObjectBasePtr)v[0]);
				
				aSubScript = NULL;
				if (!aLine->getValue(v))
					aSubScript = TTScriptPtr((TTObjectBasePtr)v[0]);
				
				// optimize the sub scripts if they exist
				if (subScriptToOptimize && aSubScript) {
					
					// create a line for the optimized sub script
					optimizedLine = TTScriptParseScript(addressToOptimize);
					
					// get the new sub script
					optimizedSubScript = NULL;
					optimizedLine->getValue(v);
					optimizedSubScript = TTScriptPtr((TTObjectBasePtr)v[0]);
					
					err = TTScriptOptimize(subScriptToOptimize, aSubScript, optimizedSubScript);
					
					// if no error occurs during th optimization of the sub script
					if (!err) {
						
						// copy the script line and append it to the optimized script
						v = TTValue((TTPtr)optimizedLine);
						optimizedScript->Append(v, parsedLine);
						
						// the optimized script contains at least one command line now
						empty = NO;
					}
					else {
						
						// delete the line and his sub script
						TTObjectBaseRelease(TTObjectBaseHandle(&optimizedSubScript));
						delete optimizedLine;
					}
				}
			}
		}
		// else copy the line and append it to the optimized script
		else {
			v = TTValue((TTPtr)TTScriptCopyLine(lineToOptimize));
			optimizedScript->Append(v, parsedLine);
		}
	}
	
	if (empty)
		return kTTErrGeneric;
	
	return kTTErrNone;	
}

TTErr TTScriptCopy(TTScriptPtr scriptTocopy, TTScriptPtr aScriptCopy)
{
	TTScriptPtr			aSubScriptToCopy, aSubScriptCopy;
	TTDictionaryBasePtr		aLine, aLineCopy;
	TTValue				v, args;
	
	// copy each line of the script
	for (scriptTocopy->mLines->begin(); scriptTocopy->mLines->end(); scriptTocopy->mLines->next()) {
		
		aSubScriptToCopy = NULL;
		aSubScriptCopy = NULL;
		aLine = TTDictionaryBasePtr((TTPtr)scriptTocopy->mLines->current()[0]);
		
		aLineCopy = TTScriptCopyLine(aLine);
		
		if (aLineCopy->getSchema() == kTTSym_script) {
			
			// get the subscript
			aLineCopy->getValue(v);
			aSubScriptToCopy = TTScriptPtr((TTObjectBasePtr)v[0]);
			
			// prepare arguments
			args.append(scriptTocopy->mReturnLineCallback);
			
			// create a subscript copy
			TTObjectBaseInstantiate(kTTSym_Script, TTObjectBaseHandle(&aSubScriptCopy), args);
			
			// copy the subscript into
			TTScriptCopy(aSubScriptToCopy, aSubScriptCopy);
			
			v = TTValue(aSubScriptCopy);
			aLineCopy->setValue(v);
		}
		
		aScriptCopy->mLines->append(aLineCopy);
	}
	
	return kTTErrNone;
}

void TTScriptFindAddress(const TTValue& lineValue, TTPtr addressPtrToMatch, TTBoolean& found)
{
	TTDictionaryBasePtr		aLine;
	TTAddress			address;
	TTValue				v;
	
	aLine = TTDictionaryBasePtr((TTPtr)lineValue[0]);
	
	if (!aLine->lookup(kTTSym_address, v))
		address = v[0];
	
	found = address == *((TTAddress*)addressPtrToMatch);
}

void TTScriptFindTarget(const TTValue& lineValue, TTPtr addressPtrToMatch, TTBoolean& found)
{
	TTDictionaryBasePtr		aLine;
	TTAddress			address;
	TTValue				v;
	
	aLine = TTDictionaryBasePtr((TTPtr)lineValue[0]);
	
	if (!aLine->lookup(kTTSym_target, v))
		address = v[0];
	
	found = address == *((TTAddress*)addressPtrToMatch);
}

TTDictionaryBasePtr TTScriptCopyLine(TTDictionaryBasePtr lineTocopy)
{
    TTValue     v;
	//TTValue	keys, v;
	//TTSymbol	key;
	//TTUInt32	i;
	
	TTDictionaryBasePtr newLine = new TTDictionaryBase();
	
    /* TTDictionary::getKeys is broken
	lineTocopy->getKeys(keys);
	for (i = 0; i < keys.size(); i++) {
		key = keys[i];
		lineTocopy->lookup(key, v);
		newLine->append(key, v);
	}
    */
    
    if (!lineTocopy->lookup(kTTSym_schema, v))
        newLine->append(kTTSym_schema, v);
    
    if (!lineTocopy->lookup(kTTSym_value, v))
        newLine->append(kTTSym_value, v);
    
    if (!lineTocopy->lookup(kTTSym_name, v))
        newLine->append(kTTSym_name, v);
    
    if (!lineTocopy->lookup(kTTSym_address, v))
        newLine->append(kTTSym_address, v);
    
    if (!lineTocopy->lookup(kTTSym_unit, v))
        newLine->append(kTTSym_unit, v);
    
    if (!lineTocopy->lookup(kTTSym_ramp, v))
        newLine->append(kTTSym_address, v);
	
	return newLine;
}
