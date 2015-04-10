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
mFlattened(NO)
{
	if (arguments.size() == 1)
		mReturnLineCallback = arguments[0];

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
			
			delete aLine;
			aLine = NULL;
		}
	}
    
    // don't delete the lines into the mFlattenedLines because
    // it stores only pointers to the lines stored into the mLines
    delete mLines;
    delete mFlattenedLines;
}

TTErr TTScript::Clear()
{
	TTDictionaryBasePtr aLine = NULL;
	TTValue			v;
	
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)mLines->current()[0]);
		
		if (aLine) {
			
			delete aLine;
			aLine = NULL;
		}
	}
    
    // don't delete the lines into the mFlattenedLines because
    // it stores only pointers to the lines stored into the mLines
	
	mLines->clear();
	mFlattenedLines->clear();
    
    mFlattened = NO;
    
	return kTTErrNone;
}

TTErr TTScript::Flatten(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject        aScriptToFlatten;
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
            aScriptToFlatten = inputValue[1];
        }
    }
    
    // else start to flatten this script
    if (!aScriptToFlatten.valid()) {
        Unflatten();
        aScriptToFlatten = TTObject(this);
        mFlattened = YES;
    }
	
	// flatten each command line of the script
	for (TTScriptPtr(aScriptToFlatten.instance())->mLines->begin(); TTScriptPtr(aScriptToFlatten.instance())->mLines->end(); TTScriptPtr(aScriptToFlatten.instance())->mLines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)TTScriptPtr(aScriptToFlatten.instance())->mLines->current()[0]);
		
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
            mSubScript = v[0];
            
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
        // any other case : copy the line
        else
            this->mFlattenedLines->append((TTPtr)aLine);
	}
	
	return kTTErrNone;
}

TTErr TTScript::Unflatten()
{
    // don't delete the lines into the mFlattenedLines because
    // it stores only pointers to the lines stored into the mLines
	
	mFlattenedLines->clear();
    
    mFlattened = NO;
    
    return kTTErrNone;
}

TTErr TTScript::Run(const TTValue& inputValue, TTValue& outputValue)
{
    // use the Flattened lines if they are ready
    if (mFlattened)
        return RunFlattened();
    
    // else use the none Flattened lines
    TTNodeDirectoryPtr aDirectory;
    TTDictionaryBasePtr	aLine;
	TTSymbol		schema, name, attribute;
	TTNodePtr		aNode;
	TTAddress       address, parentAddress = kTTAdrsRoot;
	TTObject        anObject, aContainer, aParentContainer;
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
			if (aParentContainer.valid()) {
				
                // use container to send relative address command
                if (aLine->getSchema() == kTTSym_command && address.getType() == kAddressRelative) {
                    
                    v = TTValue(address);
                    c = TTValue((TTPtr)aLine);
                    v.append((TTPtr)&c);
                    
                    aParentContainer.send(kTTSym_Send, v);
                }
			}
			// or retreive the node
			else {
                
                // bind to the node
                // (each time ! this is why using flattened list could be usefull but dangerous)
                aDirectory = accessApplicationDirectoryFrom(address);
                if (aDirectory == NULL)
                    return kTTErrGeneric;
                
                if (address.getType() == kAddressRelative)
                    err = aDirectory->getTTNode(parentAddress.appendAddress(address), &aNode);
                else
                    err = aDirectory->getTTNode(address, &aNode);
                
                // if there is a node
                if (!err) {
                    
                    anObject = aNode->getObject();
                    
                    // check object type
                    if (anObject.valid()) {
                        
                        // default attribute is value attribute
                        if (address.getAttribute() == kTTSymEmpty)
                            attribute = kTTSym_value;
                        else
                            attribute = address.getAttribute();
                        
                        // for data object
                        if (anObject.name() == kTTSym_Data) {
                            
                            // send the line using the command message
                            if (attribute == kTTSym_value) {
                                
                                anObject.send(kTTSym_Command, (TTPtr)aLine);
                                continue;
                            }
                        }
                        
                        // any other case : set attribute
                        aLine->getValue(v);
                        anObject.set(attribute, v);
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
            aDirectory = accessApplicationDirectoryFrom(address);
            if (aDirectory == NULL)
                return kTTErrGeneric;
            
            if (address.getType() == kAddressRelative)
                err = aDirectory->getTTNode(parentAddress.appendAddress(address), &aNode);
            else
                err = aDirectory->getTTNode(address, &aNode);
            
            // if there is a node
            aContainer = NULL;
            if (!err) {
                
                anObject = aNode->getObject();
                
                // check object type
                if (anObject.valid()) {
                    
                    // for container object
                    if (anObject.name() == kTTSym_Container) {
                        
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
            if (aContainer.valid())
                v.append(aContainer);
                
            mSubScript.send(kTTSym_Run, v);
        }
	}

	return kTTErrNone;
}

TTErr TTScript::RunFlattened()
{
    TTNodeDirectoryPtr aDirectory;
    TTDictionaryBasePtr	aLine;
	TTNodePtr		aNode;
	TTAddress       address;
    TTSymbol        attribute, schema;
	TTObject		anObject;
	TTValue			v, none;
	TTErr			err;
    
    // run each line of the script
    for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
        
        aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
        
        // in flatten mode there is no subscript so only run command line
        schema = aLine->getSchema();
        if (schema != kTTSym_command)
            continue;
          
        // get the target address
        aLine->lookup(kTTSym_target, v);
        address = v[0];
        
        aDirectory = accessApplicationDirectoryFrom(address);
        if (aDirectory == NULL)
            return kTTErrGeneric;
        
        err = aDirectory->getTTNode(address, &aNode);

        if (!err) {
            
            anObject = aNode->getObject();
            
            // check object type
            if (anObject.valid()) {
                
                // default attribute is value attribute
                if (address.getAttribute() == kTTSymEmpty)
                    attribute = kTTSym_value;
                else
                    attribute = address.getAttribute();
                
                // for data object
                if (anObject.name() == kTTSym_Data) {
                    
                    // send the line using the command message
                    if (attribute == kTTSym_value) {
                        
                        anObject.send(kTTSym_Command, (TTPtr)aLine);
                        continue;
                    }
                }
                
                // any other case : set attribute
                aLine->getValue(v);
                anObject.set(attribute, v);
            }
        }
    }
    
    return kTTErrNone;
}

TTErr TTScript::RunCommand(const TTValue& inputValue, TTValue& outputValue)
{
    TTNodeDirectoryPtr aDirectory;
	TTDictionaryBasePtr	aLine;
	TTNodePtr		aNode;
	TTAddress       address, addressToRun;
    TTSymbol        attribute, schema;
	TTObject        anObject;
	TTValue			v, none;
    TTErr           err;
    TTInt8          depthDifference;
    TTAddressComparisonFlag	comp;
    
    if (inputValue.size() == 1) {
        
        addressToRun = inputValue[0];
        
        // compare each line of the script
        for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
            
            aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
            
            // in flatten mode there is no subscript so only run command line
            schema = aLine->getSchema();
            if (schema != kTTSym_command)
                continue;
            
            // get the target address
            aLine->lookup(kTTSym_target, v);
            address = v[0];
            
            // compare the address
            comp = addressToRun.compare(address, depthDifference);
            if (comp == kAddressEqual || comp == kAddressUpper) {
                
                aDirectory = accessApplicationDirectoryFrom(address);
                if (aDirectory == NULL)
                    return kTTErrGeneric;
                
                err = aDirectory->getTTNode(address, &aNode);
                
                if (!err) {
                    
                    anObject = aNode->getObject();
                    
                    // check object type
                    if (anObject.valid()) {
                        
                        // default attribute is value attribute
                        if (address.getAttribute() == kTTSymEmpty)
                            attribute = kTTSym_value;
                        else
                            attribute = address.getAttribute();
                        
                        // for data object
                        if (anObject.name() == kTTSym_Data) {
                            
                            // send the line using the command message
                            if (attribute == kTTSym_value) {
                                
                                anObject.send(kTTSym_Command, (TTPtr)aLine);
                                continue;
                            }
                        }
                        
                        // any other case : set attribute
                        aLine->getValue(v);
                        anObject.set(attribute, v);
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
    TTSymbol        schema;
    TTAddressComparisonFlag	comp;
    
    if (inputValue.size() == 1) {
        
        addressToRemove = inputValue[0];
        
        // compare each line of the script
        for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
            
            aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
            
            // in flatten mode there is no subscript so only run command line
            schema = aLine->getSchema();
            if (schema != kTTSym_command)
                continue;
            
            // get the target address
            aLine->lookup(kTTSym_target, v);
            address = v[0];
            
            // compare the address
            comp = addressToRemove.compare(address, depthDifference);
            if (comp == kAddressEqual || comp == kAddressUpper)
                
                // append to the list of lines to remove
                linesToRemove.append(mFlattenedLines->current());
        }
        
        // remove each lines from the the line list and flattened line list and delete it
        for (linesToRemove.begin(); linesToRemove.end(); linesToRemove.next()) {
            
            mLines->remove(linesToRemove.current());
            mFlattenedLines->remove(linesToRemove.current());
            
            aLine = TTDictionaryBasePtr((TTPtr)linesToRemove.current()[0]);
            delete aLine;
        }
        
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
	
	if (!mReturnLineCallback.valid())
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
			mReturnLineCallback.send("notify", valueToDump);
		}	
		else if (schema == kTTSym_comment) {
			
			// get comment value
			aLine->getValue(valueToDump);
			
			// prepend sharp
			valueToDump.prepend(kTTSym_sharp);
			
			// output line value
			mReturnLineCallback.send("notify", valueToDump);
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
			mReturnLineCallback.send("notify", valueToDump);
		}
		else if (schema == kTTSym_script) {
			
			// get the script
			aLine->getValue(v);
			mSubScript = v[0];
			
			TTScriptPtr(mSubScript.instance())->mReturnLineCallback = mReturnLineCallback;
			
			// get address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
			
			// if relative, append to container address
			if (address.getType() == kAddressRelative)
				address = parentAddress.appendAddress(address);
			
			// dump the subscript
			mSubScript.send(kTTSym_Dump, address);
		}
	}
	
	return kTTErrNone;
}

TTErr TTScript::DumpFlattened()
{
    TTDictionaryBasePtr	aLine;
	TTAddress       address;
    TTSymbol        unit, schema;
	TTValue			v, valueToDump, none;
    TTUInt32		ramp;
    
    // run each line of the script
    for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
        
        aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
        
        // in flatten mode there is no subscript so only run command line
        schema = aLine->getSchema();
        if (schema != kTTSym_command)
            continue;
        
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
        mReturnLineCallback.send("notify", valueToDump);
    }
    
    return kTTErrNone;
}

TTErr TTScript::DumpLine(const TTValue& inputValue, TTValue& outputValue)
{
    TTDictionaryBasePtr	aLine;
    TTAddress       address, addressToDump;;
    TTSymbol        unit, schema;
    TTValue			v, valueToDump, none;
    TTUInt32		ramp;
    TTInt8          depthDifference;
    TTAddressComparisonFlag	comp;
    
    if (inputValue.size() == 1) {
        
        addressToDump = inputValue[0];
        
        // run each line of the script
        for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
            
            aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
            
            // in flatten mode there is no subscript so only run command line
            schema = aLine->getSchema();
            if (schema != kTTSym_command)
                continue;
            
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
                mReturnLineCallback.send("notify", valueToDump);
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
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTDictionaryBasePtr	aLine = NULL;
	TTSymbol		name, unit;
	TTAddress       address;
	TTValue			v;
	TTString		aString;
	
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
			v.toString(NO); // no quotes
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
				
				xmlTextWriterWriteString((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST aString.data());
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
			aXmlHandler->setAttributeValue(kTTSym_object, mSubScript);
			aXmlHandler->sendMessage(TTSymbol("Write"));
			
			// close script Element
			xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
		}
	}
	
	return kTTErrNone;
}

TTErr TTScript::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTDictionaryBasePtr	aLine;
	TTSymbol			name, attributeName;
	TTAddress           address;
	TTValue				v, parsedLine;
	
	// if there is a current sub script : pass it the XML content
	if (mSubScript.valid()) {
		
		// use ReadFromXml of the sub script
		return mSubScript.send("ReadFromXml", inputValue, outputValue);
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
		mLines->append((TTPtr)aLine);
		
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
                    mLines->append((TTPtr)aLine);
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
                mLines->append((TTPtr)aLine);
                
                return kTTErrNone;
            }
		}
	}
	
	// Script node : edit script line
	if (aXmlHandler->mXmlNodeName == kTTSym_script) {
		
		// end of the script node
		if (!aXmlHandler->mXmlNodeStart) {
			
			if (mParentScript.valid()) {
				
				// set no sub script for the parent script
				v = TTObject();
				mParentScript.set("subScript", v);
			}
		}
		
		// get address attribute of the node
		else if (!aXmlHandler->getXmlAttribute(kTTSym_address, v)) {
			
            if (v.size() == 1) {
                
                // edit sub script line
                this->AppendScript(v, parsedLine);
                
                // set this as parent script of the subscript
                mSubScript.set("parentScript", TTObject(this));
            }
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
    
	TTString			*buffer;
	TTDictionaryBasePtr	aLine;
	TTAddress           address;
	TTSymbol			name;
	TTString			aString;
	TTUInt8				i;
	TTValue				v;
	
	buffer = aTextHandler->mWriter;
    
    if (mFlattened) {
        
        // Write all flattened lines
        for (mFlattenedLines->begin(); mFlattenedLines->end(); mFlattenedLines->next()) {
            
            aLine = TTDictionaryBasePtr((TTPtr)mFlattenedLines->current()[0]);
            
            // Write script line depending on his schema
            if (aLine->getSchema() == kTTSym_flag) {
                
                TTBoolean oneSymbol = NO;
                
                // get flag name
                aLine->lookup(kTTSym_name, v);
                name = v[0];
                
                // get flag arguments value if exists
                if (!aLine->getValue(v)) {
                    
                    if (v.size() == 1)
                        if (v[0].type() == kTypeSymbol)
                            oneSymbol = YES;
                    
                    v.toString(NO); // no quotes
                    aString = TTString(v[0]);
                }
                else aString = "";
                
                // write flag name and arguments
                *buffer += "- ";
                *buffer += name.c_str();
                *buffer += " ";
                
                // if the value is an unique symbol : add quotes
                if (oneSymbol) *buffer += "\"";
                *buffer += aString.data();
                if (oneSymbol) *buffer += "\"";
                
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
                
                // get target address
                if (!aLine->lookup(kTTSym_target, v)) {
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
            // no sub script in flatten mode
        }
        
        return kTTErrNone;
    }
	
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
            
            TTBoolean oneSymbol = NO;
			
			// get flag name
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			
			// get flag arguments value if exists
			if (!aLine->getValue(v)) {
                
                if (v.size() == 1)
                    if (v[0].type() == kTypeSymbol)
                        oneSymbol = YES;

				v.toString(NO); // no quotes
				aString = TTString(v[0]);
			}
			else aString = "";
			
			// write flag name and arguments
			*buffer += "- ";
			*buffer += name.c_str();
			*buffer += " ";
            
            // if the value is an unique symbol : add quotes
            if (oneSymbol) *buffer += "\"";
			*buffer += aString.data();
            if (oneSymbol) *buffer += "\"";
            
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
			mSubScript.set("parentScript", TTObject(this));
			
			// increment the tab count to indent lines
			aTextHandler->mTabCount++;
			
			// use WriteAsText of the sub script
			mSubScript.send("WriteAsText", inputValue, outputValue);
			
			// decrement the tab count
			aTextHandler->mTabCount--;
		}
	}
	
	if (mParentScript.valid()) {
		
		// set no sub script for the parent script
		v = TTObject();
		mParentScript.set("subScript", v);
	}
	
	return kTTErrNone;
}

TTErr TTScript::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
    
	TTDictionaryBasePtr	aLine;
	TTValue				v, parsedLine;
	
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
		if (!mSubScript.valid())
			return kTTErrGeneric;
			
		aTextHandler->mTabCount--;
		
		// set this as parent script of the subscript
		mSubScript.set("parentScript", TTObject(this));
		
		// use ReadFromText of the sub script
		aTextHandler->setAttributeValue(kTTSym_object, mSubScript);
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
	TTObject        script;
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
            
            script = TTObject(kTTSym_Script);
            
            line->setValue(script);
        }

    }
	
	return line;
}

TTErr TTScriptInterpolate(TTObject script1, TTObject script2, TTFloat64 position)
{
	TTDictionaryBasePtr line1, line2;
    TTAddress       adrs1, adrs2;
    TTValue			v1, v2, v, newValue;
	TTSymbol		schema1, schema2, attribute, type, function;
    TTNodePtr       aNode;
    TTObject        aData;
	TTValue			found, none;
	TTUInt32		i, s;
    
	for (TTScriptPtr(script1.instance())->mFlattenedLines->begin(), TTScriptPtr(script2.instance())->mFlattenedLines->begin();
		 TTScriptPtr(script1.instance())->mFlattenedLines->end() && TTScriptPtr(script2.instance())->mFlattenedLines->end(); 
		 TTScriptPtr(script1.instance())->mFlattenedLines->next(), TTScriptPtr(script2.instance())->mFlattenedLines->next()) {
		
        line1 = TTDictionaryBasePtr((TTPtr)TTScriptPtr(script1.instance())->mFlattenedLines->current()[0]);
        line2 = TTDictionaryBasePtr((TTPtr)TTScriptPtr(script2.instance())->mFlattenedLines->current()[0]);
        
        // get the line schema
        line1->lookup(kTTSym_schema, v);
        schema1 = v[0];
        
        line2->lookup(kTTSym_schema, v);
        schema2 = v[0];
        
        if (schema1 != kTTSym_command && schema2 != kTTSym_command)
            continue;
		
        // get the target address
        line1->lookup(kTTSym_target, v);
        adrs1 = v[0];
        
        line2->lookup(kTTSym_target, v);
        adrs2 = v[0];
        
        // adrs1 and adrs2 have to be the same
        if (adrs1 != adrs2) {
            
            TTScriptPtr(script2.instance())->mFlattenedLines->find(&TTScriptFindTarget, (TTPtr)&adrs1, found);
            
            // couldn't find the same address in script2 : skip the command
            if (found.empty()) {
                TTScriptPtr(script2.instance())->mFlattenedLines->begin();
                continue;
            }
            else
                line2 = TTDictionaryBasePtr((TTPtr)found[0]);
        }
        
        // bind to the node
		if (!accessApplicationDirectoryFrom(adrs1)->getTTNode(adrs1, &aNode)) {
            
            aData = aNode->getObject();
            if (aData.valid()) {
                
                // check type
                if (!aData.get(kTTSym_type, v)) {
                    
                    type = v[0];
                    
                    // get line values
                    line1->getValue(v1);
                    line2->getValue(v2);
                    
                    // don't interpolate attribute
                    attribute = adrs1.getAttribute();
                    if (attribute != kTTSymEmpty && attribute != kTTSym_value)
                        continue;
                    
                    // check function
                    if (!aData.get(kTTSym_rampFunction, v)) {
                        
                        function = v[0];
                        
                        if (function != kTTSym_none) {
                    
                            // set the starting value
                            aData.send(kTTSym_RampSet, v1);
                            
                            // set the target value
                            aData.send(kTTSym_RampTarget, v2);
                            
                            // set interpolate using the ramp function
                            aData.send(kTTSym_RampSlide, position);
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
                            aData.set(kTTSym_value, newValue);
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
	TTObject		firstScript, aScript;
	TTDictionaryBasePtr firstScriptLine, aLine;
    TTAddress       firstAdrs, adrs;
    TTValue			v, valueToMix, mixedValue, found;
    TTSymbol		schema, type;
    TTNodePtr       aNode;
    TTObject        anObject;
    TTFloat64		sumFactors;
    TTUInt32		i, mixSize;
	
    if (scripts.empty())
		return kTTErrGeneric;
	
	mixSize = scripts.size();
	
	// initialized lines list iterator
	firstScript = scripts[0];
	TTScriptPtr(firstScript.instance())->mFlattenedLines->begin();
	
    for (i = 1; i < mixSize; i++) {
        
		aScript = scripts[i];
		TTScriptPtr(aScript.instance())->mFlattenedLines->begin();
    }
	
	// iterate over all flattened lines of first given script
    for (; TTScriptPtr(firstScript.instance())->mFlattenedLines->end(); TTScriptPtr(firstScript.instance())->mFlattenedLines->next()) {
		
		firstScriptLine = TTDictionaryBasePtr((TTPtr)TTScriptPtr(firstScript.instance())->mFlattenedLines->current()[0]);
        
        // get the line schema
        firstScriptLine->lookup(kTTSym_schema, v);
        schema = v[0];
        
        if (schema != kTTSym_command)
            continue;
        
		// get the target address
        firstScriptLine->lookup(kTTSym_target, v);
        firstAdrs = v[0];
        
        // bind to the node
		if (!accessApplicationDirectoryFrom(firstAdrs)->getTTNode(firstAdrs, &aNode)) {
            
            anObject = aNode->getObject();
            
            if (anObject.valid()) {
                
                if (!anObject.get(kTTSym_type, v)) {
                    
                    type = v[0];
                    
                    // initialize the mix with the command of the first script
                    sumFactors = TTScriptMixLine(firstScriptLine, type, mixSize, TTFloat64(factors[0]), mixedValue, YES);
                    
                    // then look for same line into the other script
                    for (i = 1; i < mixSize; i++) {
                        
                        aScript = scripts[i];
                        
                        aLine = NULL;
                        if (!TTScriptPtr(aScript.instance())->mFlattenedLines->end()) {
                            
                            // go to the next line
                            TTScriptPtr(aScript.instance())->mFlattenedLines->next();
                            aLine = TTDictionaryBasePtr((TTPtr)TTScriptPtr(aScript.instance())->mFlattenedLines->current()[0]);
                            
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
                            TTScriptPtr(aScript.instance())->mFlattenedLines->find(&TTScriptFindTarget, (TTPtr)&firstAdrs, found);
                            
                            // couldn't find the same node in the script :
                            // look into to next script for this command
                            if (found.empty()) {
                                TTScriptPtr(aScript.instance())->mFlattenedLines->begin();
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
                            
                            TTScriptPtr(aScript.instance())->mFlattenedLines->next();
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
							for (TTUInt32 i = 0; i < mixedValue.size(); i++)
                                mixedValue[i] = TTFloat64(mixedValue[i]) / sumFactors;
                        // for any other type : remove the coef at the end of the value
                        else
                            mixedValue.resize(mixedValue.size()-1);
                        
                        // set the mixed value
                        anObject.set(kTTSym_value, mixedValue);
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

TTErr TTScriptMerge(TTObject scriptToMerge, TTObject mergedScript)
{
	TTDictionaryBasePtr	lineToMerge, mergedLine;
	TTObject			subScriptToMerge, mergedSubScript;
	TTAddress           addressToMerged, mergedAddress;
	TTValue				v, valueToMerged, mergedValue, found, parsedLine;
	TTBoolean			merged = NO; // to know if a line have already been merged
	TTErr				err;
	
	if (TTScriptPtr(scriptToMerge.instance())->mLines->isEmpty())
		return kTTErrGeneric;
	
	for (TTScriptPtr(scriptToMerge.instance())->mLines->begin(); TTScriptPtr(scriptToMerge.instance())->mLines->end(); TTScriptPtr(scriptToMerge.instance())->mLines->next()) {
		
		lineToMerge = TTDictionaryBasePtr((TTPtr)TTScriptPtr(scriptToMerge.instance())->mLines->current()[0]);
		
		// get address
		addressToMerged = kTTAdrsEmpty;
		if (!lineToMerge->lookup(kTTSym_address, v))
			addressToMerged = v[0];
		
		if (addressToMerged != kTTAdrsEmpty) {
			
			// try to find a line for this address into the merged script
			merged = NO;
			if (!TTScriptPtr(mergedScript.instance())->mLines->isEmpty()) {
				
				TTScriptPtr(mergedScript.instance())->mLines->find(&TTScriptFindAddress, (TTPtr)&addressToMerged, found);
				
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
					TTScriptPtr(mergedScript.instance())->Append(v, parsedLine);
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
				if (!lineToMerge->getValue(v))
					subScriptToMerge = v[0];
				
				// if this script line haven't been merged yet
				if (!merged)
					// create a line for the merged sub script
					mergedLine = TTScriptParseScript(addressToMerged);
				
				// get the new sub script
				if (!mergedLine->getValue(v))
                    mergedSubScript = v[0];
				
				// merge the sub scripts if they exist
				if (subScriptToMerge.valid() && mergedSubScript.valid()) {
					
					err = TTScriptMerge(subScriptToMerge, mergedSubScript);
					
					// if this script line haven't been merged yet
					if (!merged) {
						
						// append the line to the merged script
						TTScriptPtr(mergedScript.instance())->Append((TTPtr)mergedLine, parsedLine);
					}
				}
			}
		}
		// else copy the line and append it to the merged script
		else {
			TTScriptPtr(mergedScript.instance())->Append((TTPtr)TTScriptCopyLine(lineToMerge), parsedLine);
		}
	}
	
	return kTTErrNone;	
}

TTErr TTScriptOptimize(TTObject aScriptToOptimize, TTObject aScript, TTObject optimizedScript)
{
	TTDictionaryBasePtr	lineToOptimize, aLine, optimizedLine;
	TTObject			subScriptToOptimize, aSubScript, optimizedSubScript;
	TTAddress           addressToOptimize, address;
	TTValue				v, valueToOptimize, value, found, parsedLine;
	TTBoolean			empty = YES; // to know if the optimized script contains at least one command
	TTErr				err;
	
	if (TTScriptPtr(aScriptToOptimize.instance())->mLines->isEmpty() || TTScriptPtr(aScript.instance())->mLines->isEmpty())
		return kTTErrGeneric;
    
	for (TTScriptPtr(aScriptToOptimize.instance())->mLines->begin(), TTScriptPtr(aScript.instance())->mLines->begin(); 
         TTScriptPtr(aScriptToOptimize.instance())->mLines->end();
		 TTScriptPtr(aScriptToOptimize.instance())->mLines->next(), TTScriptPtr(aScript.instance())->mLines->next())
    {
		addressToOptimize = kTTAdrsEmpty;
        lineToOptimize = TTDictionaryBasePtr((TTPtr)TTScriptPtr(aScriptToOptimize.instance())->mLines->current()[0]);
            
        if (!lineToOptimize->lookup(kTTSym_address, v))
            addressToOptimize = v[0];

		address = kTTAdrsEmpty;
        if (TTScriptPtr(aScript.instance())->mLines->end())
        {
            aLine = TTDictionaryBasePtr((TTPtr)TTScriptPtr(aScript.instance())->mLines->current()[0]);
            if (!aLine->lookup(kTTSym_address, v))
                address = v[0];
        }
		
		if (addressToOptimize != kTTAdrsEmpty)
        {
			// the both addresses have to be the same
			if (addressToOptimize != address)
            {
				TTScriptPtr(aScript.instance())->mLines->find(&TTScriptFindAddress, (TTPtr)&addressToOptimize, found);
				
				// couldn't find the same address in the script : copy the line and append it to the optimized script
				if (found.empty())
                {
                    TTScriptPtr(optimizedScript.instance())->Append((TTPtr)TTScriptCopyLine(lineToOptimize), parsedLine);
					continue;
				}
				else
					aLine = TTDictionaryBasePtr((TTPtr)found[0]);
			}
			
			// optimize the line depending on the schema
			if (lineToOptimize->getSchema() == kTTSym_command && aLine->getSchema() == kTTSym_command)
            {
				// get line values
				lineToOptimize->getValue(valueToOptimize);
				aLine->getValue(value);
				
				// don't copy a command if it already exists
				if (valueToOptimize == value)
					continue;
				
				// copy the command line and append it to the optimized script
				TTScriptPtr(optimizedScript.instance())->Append((TTPtr)TTScriptCopyLine(lineToOptimize), parsedLine);
				
				// the optimized script contains at least one command line now
				empty = NO;
			}
			else if (lineToOptimize->getSchema() == kTTSym_script && aLine->getSchema() == kTTSym_script)
            {
				// get the sub scripts
				if (!lineToOptimize->getValue(v))
					subScriptToOptimize = v[0];
				
				if (!aLine->getValue(v))
					aSubScript = v[0];
				
				// optimize the sub scripts if they exist
				if (subScriptToOptimize.valid() && aSubScript.valid())
                {
					// create a line for the optimized sub script
					optimizedLine = TTScriptParseScript(addressToOptimize);
					
					// get the new sub script
					optimizedLine->getValue(v);
					optimizedSubScript = v[0];
					
					err = TTScriptOptimize(subScriptToOptimize, aSubScript, optimizedSubScript);
					
					// if no error occurs during th optimization of the sub script
					if (!err)
                    {
						// copy the script line and append it to the optimized script
						TTScriptPtr(optimizedScript.instance())->Append((TTPtr)optimizedLine, parsedLine);
						
						// the optimized script contains at least one command line now
						empty = NO;
					}
					else
                    {
						// delete the line
						delete optimizedLine;
					}
				}
			}
		}
		// else copy the line and append it to the optimized script
		else
			TTScriptPtr(optimizedScript.instance())->Append((TTPtr)TTScriptCopyLine(lineToOptimize), parsedLine);

	}
	
	if (empty)
		return kTTErrGeneric;
	
	return kTTErrNone;	
}

TTErr TTScriptCopy(TTObject scriptTocopy, TTObject aScriptCopy)
{
	TTObject			aSubScriptToCopy, aSubScriptCopy;
	TTDictionaryBasePtr	aLine, aLineCopy;
	TTValue				v, args;
	
	// copy each line of the script
	for (TTScriptPtr(scriptTocopy.instance())->mLines->begin(); TTScriptPtr(scriptTocopy.instance())->mLines->end(); TTScriptPtr(scriptTocopy.instance())->mLines->next()) {
		
		aLine = TTDictionaryBasePtr((TTPtr)TTScriptPtr(scriptTocopy.instance())->mLines->current()[0]);
		
		aLineCopy = TTScriptCopyLine(aLine);
		
		if (aLineCopy->getSchema() == kTTSym_script) {
			
			// get the subscript
			aLineCopy->getValue(v);
			aSubScriptToCopy = v[0];
			
			// create a subscript copy
			aSubScriptCopy = TTObject(kTTSym_Script, TTScriptPtr(scriptTocopy.instance())->mReturnLineCallback);
			
			// copy the subscript into
			TTScriptCopy(aSubScriptToCopy, aSubScriptCopy);
			
			aLineCopy->setValue(aSubScriptCopy);
		}
		
		TTScriptPtr(aScriptCopy.instance())->mLines->append(aLineCopy);
	}
	
	return kTTErrNone;
}

void TTScriptFindAddress(const TTValue& lineValue, TTPtr addressPtrToMatch, TTBoolean& found)
{
	TTDictionaryBasePtr aLine;
	TTAddress			address;
	TTValue				v;
	
	aLine = TTDictionaryBasePtr((TTPtr)lineValue[0]);
	
	if (!aLine->lookup(kTTSym_address, v))
		address = v[0];
	
	found = address == *((TTAddress*)addressPtrToMatch);
}

void TTScriptFindTarget(const TTValue& lineValue, TTPtr addressPtrToMatch, TTBoolean& found)
{
	TTDictionaryBasePtr aLine;
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
