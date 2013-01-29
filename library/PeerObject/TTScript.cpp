/* 
 * A Script Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
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
mLines(NULL),
mSubScript(NULL),
mParentScript(NULL),
mReturnLineCallback(NULL)
{
	TT_ASSERT("Correct number of args to create TTScript", arguments.size() == 0 || arguments.size() == 1);
	
	if (arguments.size() == 1)
		mReturnLineCallback = TTCallbackPtr((TTObjectPtr)arguments[0]);
	
	TT_ASSERT("Return Line Callback passed to TTScript is not NULL", mReturnLineCallback);
	
	mLines = new TTList();
    
	addAttribute(Lines, kTypePointer);
	addAttributeProperty(Lines, readOnly, YES);
	
	addAttribute(SubScript, kTypeObject);
	addAttributeProperty(SubScript, hidden, YES);
	
	addAttribute(ParentScript, kTypeObject);
	addAttributeProperty(ParentScript, hidden, YES);
	
	addMessage(Clear);
	addMessageWithArguments(Run);
    addMessageWithArguments(RunLine);
    
	addMessageWithArguments(Dump);
    addMessageWithArguments(DumpLine);
	
	addMessageWithArguments(Bind);
	addMessageProperty(Bind, hidden, YES);
	
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
}

TTScript::~TTScript()
{
	TTDictionaryPtr aLine = NULL;
	TTValue			v;
	
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)mLines->current()[0]);
		
		if (aLine) {
			
			if (aLine->getSchema() == kTTSym_script) {
				
				// get script
				aLine->getValue(v);
				mSubScript = v[0];
				
				TTObjectRelease(&mSubScript);
			}
			
			delete aLine;
			aLine = NULL;
		}
	}
	
	delete mLines;
	mLines = NULL;
}

TTErr TTScript::Clear()
{
	TTDictionaryPtr aLine = NULL;
	TTValue			v;
	
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)mLines->current()[0]);
		
		if (aLine) {
			
			if (aLine->getSchema() == kTTSym_script) {
				
				// get script
				aLine->getValue(v);
				mSubScript = v[0];
				
				TTObjectRelease(&mSubScript);
			}
			
			delete aLine;
			aLine = NULL;
		}
	}
	
	delete mLines;
	mLines = new TTList();
	return kTTErrNone;
}

TTErr TTScript::Run(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr	aLine;
	TTSymbol		name;
	TTNodePtr		aNode;
	TTAddress       address, parentAddress = kTTAdrsRoot;
	TTObjectPtr		anObject, aContainer, aParentContainer = NULL;
	TTValue			v, c;
	TTErr			err;
	
	// get the parent address
	if (inputValue[0].type() == kTypeSymbol)
		inputValue.get(0, parentAddress);
    
    // eventually get a container to go faster
	if (inputValue[1].type() == kTypeSymbol)
		aParentContainer = inputValue[1];
	
	// run each line of the script
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)mLines->current()[0]);
		
		// run script line depending on his schema
		if (aLine->getSchema() == kTTSym_flag) {
			
			// get flag name
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			
			// TODO : output current flag to display it
		}
		else if (aLine->getSchema() == kTTSym_comment) {
			
			// TODO : output current comment to display it
			continue;
		}
		else if (aLine->getSchema() == kTTSym_command) {
			
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
                    
                    aParentContainer->sendMessage(kTTSym_Send, v, kTTValNONE);
                }
			}
			// or retreive the node
			else {
                
                // if the line already binds a node : get it
                aNode = NULL;
                if (!aLine->lookup(kTTSym_node, v))
                    aNode = TTNodePtr((TTPtr)v[0]);
                
                // or bind to the node
                else {
                    
                    if (address.getType() == kAddressRelative)
                        err = getDirectoryFrom(address)->getTTNode(parentAddress.appendAddress(address), &aNode);
                    else
                        err = getDirectoryFrom(address)->getTTNode(address, &aNode);
                    
                    if (!err) {
                        v = TTValue((TTPtr)aNode);
                        aLine->append(kTTSym_node, v);
                    }
                }
                
                // if there is a node
                if (aNode) {
                    
                    anObject = aNode->getObject();
                    
                    // check object type
                    if (anObject) {
                        
                        // for data object
                        if (anObject->getName() == kTTSym_Data) {
                            
                            // send the line using the command message
                            v = TTValue((TTPtr)aLine);
                            anObject->sendMessage(kTTSym_Command, v, kTTValNONE);
                        }
                    }
                }
            }
        }
        else if (aLine->getSchema() == kTTSym_script) {
            
            // get the script
            aLine->getValue(v);
            mSubScript = TTScriptPtr((TTPtr)v[0]);
            
            // get the address
            aLine->lookup(kTTSym_address, v);
            address = v[0];
            
            // if the line already binds a node : get it
            aNode = NULL;
            if (!aLine->lookup(kTTSym_node, v))
                aNode = TTNodePtr((TTPtr)v[0]);
            
            // or bind to the node
            else {
                
                if (address.getType() == kAddressRelative)
                    err = getDirectoryFrom(address)->getTTNode(parentAddress.appendAddress(address), &aNode);
                else
                    err = getDirectoryFrom(address)->getTTNode(address, &aNode);
                
                if (!err) {
                    v = TTValue((TTPtr)aNode);
                    aLine->append(kTTSym_node, v);
                }
            }
            
            // if there is a node
            aContainer = NULL;
            if (aNode) {
                
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
                v.append((TTPtr)aContainer);
                
            mSubScript->sendMessage(kTTSym_Run, v, kTTValNONE);
        }
	}

	return kTTErrNone;
}

TTErr TTScript::RunLine(const TTValue& inputValue, TTValue& outputValue)
{
	return kTTErrGeneric;
}

TTErr TTScript::Dump(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr		aLine;
	TTSymbol			name, unit;
	TTAddress			address, parentAddress = kTTAdrsRoot;
	TTValue				v, valueToDump;
	TTUInt32			ramp;
	
	if (!mReturnLineCallback)
		return kTTErrGeneric;
	
	// It is possible to output the command address relatively to a container address 
	if (inputValue[0].type() == kTypeSymbol)
		parentAddress = inputValue[0];
	
	// output each line of the script
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		valueToDump.clear();
		aLine = TTDictionaryPtr((TTPtr)mLines->current()[0]);
		
		// output script line depending on his schema
		if (aLine->getSchema() == kTTSym_flag) {
			
			// get flag value
			aLine->getValue(valueToDump);
			
			// prepend flag name
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			valueToDump.prepend(name);
			
			// prepend dash
			valueToDump.prepend(kTTSym_dash);
			
			// output line value
			mReturnLineCallback->notify(valueToDump, kTTValNONE);
		}	
		else if (aLine->getSchema() == kTTSym_comment) {
			
			// get comment value
			aLine->getValue(valueToDump);
			
			// prepend sharp
			valueToDump.prepend(kTTSym_sharp);
			
			// output line value
			mReturnLineCallback->notify(valueToDump, kTTValNONE);
		}
		else if (aLine->getSchema() == kTTSym_command) {
			
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
			mReturnLineCallback->notify(valueToDump, kTTValNONE);
		}
		else if (aLine->getSchema() == kTTSym_script) {
			
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
			mSubScript->sendMessage(kTTSym_Dump, address, kTTValNONE);
		}
	}
	
	return kTTErrNone;
}

TTErr TTScript::DumpLine(const TTValue& inputValue, TTValue& outputValue)
{
	return kTTErrGeneric;
}

TTErr TTScript::Bind(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr	aLine;
	TTSymbol		name;
	TTNodePtr		aNode;
	TTAddress       address, containerAddress = kTTAdrsRoot;
	TTValue			v, c;
	TTErr			err;
	
	// It is possible to make the script bind from a container address
	if (inputValue[0].type() == kTypeSymbol)
		containerAddress = inputValue[0];
	
	// make each command line of the script to bind on their TTNode
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)mLines->current()[0]);
		
		// lookfor command line only
		if (aLine->getSchema() == kTTSym_command || aLine->getSchema() == kTTSym_script) {
			
			// clear any node key
			aLine->remove(kTTSym_node);
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			address = v[0];
			
			// use container for relative address
			if (address.getType() == kAddressRelative)
				address = containerAddress.appendAddress(address);
				
			// retreive the node
			err = getDirectoryFrom(address)->getTTNode(address, &aNode);
			if (!err && aNode) {
				
                v = TTValue((TTPtr)aNode);
                aLine->append(kTTSym_node, v);
			}
			
			// make sub script binds
			if (aLine->getSchema() == kTTSym_script) {
				
				// get the script
				aLine->getValue(v);
				mSubScript = v[0];
				
				// prepare the sub script
				mSubScript->sendMessage(TTSymbol("Bind"), address, kTTValNONE);
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTScript::Append(const TTValue& newLine, TTValue& outputValue)
{
	TTDictionaryPtr line = NULL;
	TTValue			v;
	
	// if the line is already parsed into a TTDictionnary
	// append it directly (this allows script owners to parse a line before to append it)
	if (newLine[0].type() == kTypePointer) {
		
		mLines->append(newLine);
		outputValue = newLine;
		return kTTErrNone;
	}
		
	line = TTScriptParseLine(newLine);
	
	if (line) {
		
		// append the line
		v = TTValue((TTPtr)line);
		mLines->append(v);
		
		outputValue = v;
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::AppendCommand(const TTValue& newCommand, TTValue& outputValue)
{
	TTDictionaryPtr	line = NULL;
	TTAddress       address;
	TTValue			v;
	
	line = TTScriptParseCommand(newCommand);
	
	if (line) {
		
		// append the line
		v = TTValue((TTPtr)line);
		mLines->append(v);
		outputValue = v;
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::AppendComment(const TTValue& newComment, TTValue& outputValue)
{
	TTDictionaryPtr line = NULL;
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
	TTDictionaryPtr	line = new TTDictionary();
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
		outputValue = v;
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::AppendFlag(const TTValue& newflagAndArguments, TTValue& outputValue)
{
	TTDictionaryPtr line = NULL;
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
	TTDictionaryPtr	aLine = NULL;
	TTSymbol		name, unit;
	TTAddress       address;
//	TTNodePtr		aNode;
//	TTObjectPtr		anObject;
	TTValue			v;
	TTString		aString;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectPtr)inputValue[0]);
	
	// Write all lines
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)mLines->current()[0]);
		
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
	TTDictionaryPtr		aLine;
	TTSymbol			name, attributeName;
	TTAddress	address;
	TTValue				v, parsedLine;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectPtr)inputValue[0]);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// if there is a current sub script : pass it the XML content
	if (mSubScript) {
		
		// use ReadFromXml of the sub script
		return mSubScript->sendMessage(TTSymbol("ReadFromXml"), inputValue, outputValue);
	}
	
	// Switch on the name of the XML node
	
	// Starts file reading
	if (aXmlHandler->mXmlNodeName == kTTSym_start) {
		Clear();
		return kTTErrNone;
	}
	
	// Ends file reading
	if (aXmlHandler->mXmlNodeName == kTTSym_stop)
		return kTTErrNone;
	
	// Comment node : edit comment line
	if (aXmlHandler->mXmlNodeName == kTTSym_comment) {
		
		// edit comment line
		aLine = new TTDictionary();
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
			
			if (v[0].type() == kTypeSymbol) {
				
				name = v[0];
				
				// edit flag line
				aLine = new TTDictionary();
				aLine->setSchema(kTTSym_flag);
				aLine->append(kTTSym_name, name);
				aLine->setValue(aXmlHandler->mXmlNodeValue);
				
				// append the line
				v = TTValue((TTPtr)aLine);
				mLines->append(v);
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
			
			if (v[0].type() == kTypeSymbol) {
				address = v[0];
				
				// edit command line
				aLine = new TTDictionary();
				aLine->setSchema(kTTSym_command);
				aLine->append(kTTSym_address, address);
				aLine->setValue(aXmlHandler->mXmlNodeValue);
				
				// get all other command line attribute (unit, ramp, ...)
				while (!aXmlHandler->getXmlNextAttribute(&attributeName, v)) {
					
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
				v = TTValue((TTObjectPtr)NULL);
				mParentScript->setAttributeValue(TTSymbol("subScript"), v);
			}
		}
		
		// get address attribute of the node
		else if (!aXmlHandler->getXmlAttribute(kTTSym_address, v)) {
			
			if (v[0].type() == kTypeSymbol) {
				
				// edit sub script line
				this->AppendScript(v, parsedLine);
				
				// set this as parent script of the subscript
				v = TTValue(this);
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
	TTDictionaryPtr		aLine;
	TTAddress	address;
	TTSymbol			name;
	TTString			aString;
	TTBoolean			addQuote;
	TTUInt8				i;
	TTValue				v;
	
	aTextHandler = TTTextHandlerPtr((TTObjectPtr)inputValue[0]);
	buffer = aTextHandler->mWriter;
	
	// write a new line for level 0
	if (!aTextHandler->mTabCount)
		*buffer += "\n";
	
	// Write all lines
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		aLine = TTDictionaryPtr((TTPtr)mLines->current()[0]);
		
		// write tabulation
		for (i = 0; i < aTextHandler->mTabCount; i++)
			*buffer += "\t";
		
		// Write script line depending on his schema
		if (aLine->getSchema() == kTTSym_flag) {
			
			// get flag name
			aLine->lookup(kTTSym_name, v);
			name = v[0];
			
			// get flag arguments value if exists
			addQuote = NO;
			if (!aLine->getValue(v)) {
				v.toString();
				aString = TTString(v[0]);
			}
			else aString = "";
			
			// write flag name and arguments
			*buffer += "- ";
			*buffer += name.c_str();
			*buffer += " ";
			*buffer += aString.data();
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
			v = TTValue(this);
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
		v = TTValue((TTObjectPtr)NULL);
		mParentScript->setAttributeValue(TTSymbol("subScript"), v);
	}
	
	return kTTErrNone;	
}

TTErr TTScript::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr	aTextHandler;
	TTDictionaryPtr		aLine;
	TTValue				v, parsedLine;
	
	aTextHandler = TTTextHandlerPtr((TTObjectPtr)inputValue[0]);
	
	// this line is for this script
	if (aTextHandler->mTabCount == 0) {
		
		this->Append(*(aTextHandler->mLine), parsedLine);
		
		// check for script line to set it as current mSubScript
		aLine = TTDictionaryPtr((TTPtr)parsedLine[0]);
		
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
		v = TTValue(this);
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

TTDictionaryPtr TTScriptParseLine(const TTValue& newLine)
{
	TTDictionaryPtr line = NULL;
	TTSymbol		firstSymbol;
	TTValue			v, rest;
	
	if (newLine[0].type() == kTypeSymbol) {
		
		firstSymbol = newLine[0];
		
		// if starts by a "-" : flag line
		if (firstSymbol == kTTSym_dash) {
			
			if (newLine[1].type() == kTypeSymbol) {
				
				rest.copyFrom(newLine, 1);
				line = TTScriptParseFlag(rest);
			}
		}
		// if starts by a "#" : comment line
		else if (firstSymbol == kTTSym_sharp) {
			
			if (newLine[1].type() == kTypeSymbol) {
				
				rest.copyFrom(newLine, 1);
				line = TTScriptParseComment(rest);
			}
			else line = TTScriptParseComment(kTTValNONE);

		}
		// else if more than one symbol : append a command
		else if (newLine.size() > 1) {
			line = TTScriptParseCommand(newLine);
		}
		// else : append a sub script
		else
			line = TTScriptParseScript(newLine);
	}
	
	return line;
}

TTDictionaryPtr TTScriptParseComment(const TTValue& newComment)
{
	TTDictionaryPtr line = new TTDictionary();
	TTValue			v;
	
	line->setSchema(kTTSym_comment);
	line->setValue(newComment);
	
	return line;
}

TTDictionaryPtr TTScriptParseFlag(const TTValue& newflagAndArguments)
{
	TTDictionaryPtr line = NULL;
	TTSymbol		flagName;
	TTValue			v, arguments;
	
	if (newflagAndArguments[0].type() == kTypeSymbol) {
		
		flagName = newflagAndArguments[0];
		arguments.copyFrom(newflagAndArguments, 1);
		
		line = new TTDictionary();
		line->setSchema(kTTSym_flag);
		line->append(kTTSym_name, flagName);
		line->setValue(arguments);
	}
	
	return line;
}

TTDictionaryPtr TTScriptParseCommand(const TTValue& newCommand) 
{
	TTDictionaryPtr line = NULL;
	TTSymbol		firstSymbol;
	TTValue			v, commandValue;
	
	// parse name + command
	if (newCommand[0].type() == kTypeSymbol) {
		
		firstSymbol = newCommand[0];
		commandValue.copyFrom(newCommand, 1);
		
		line = TTDataParseCommand(commandValue);
		
		if (line)
			line->append(kTTSym_address, firstSymbol);
	}
	
	return line;
}

TTDictionaryPtr TTScriptParseScript(const TTValue& newScript)
{
	TTDictionaryPtr line = NULL;
	TTSymbol		firstSymbol;
	TTObjectPtr		script = NULL;
	TTValue			v;
	
	// parse script address
	if (newScript[0].type() == kTypeSymbol) {
		
		firstSymbol = newScript[0];
		
		line = new TTDictionary();
		
		if (line) {
			
			line->setSchema(kTTSym_script);
			line->append(kTTSym_address, firstSymbol);
			
			TTObjectInstantiate(kTTSym_Script, &script, kTTValNONE);
			
			v = TTValue(script);
			line->setValue(v);
		}
	}
	
	return line;
}

TTErr TTScriptInterpolate(TTScriptPtr script1, TTScriptPtr script2, TTFloat64 position)
{
	TTDictionaryPtr line1, line2;
	TTSymbol		type1;
    TTNodePtr       node1, node2;
	TTScriptPtr		sub1, sub2;
	TTValue			v, v1, v2, newValue;
	TTValue			found;
	TTUInt32		i, s;
	
	for (script1->mLines->begin(), script2->mLines->begin(); 
		 script1->mLines->end() && script2->mLines->end(); 
		 script1->mLines->next(), script2->mLines->next()) {
		
        line1 = TTDictionaryPtr((TTPtr)script1->mLines->current()[0]);
        line2 = TTDictionaryPtr((TTPtr)script2->mLines->current()[0]);
		
		// get nodes
		node1 = NULL;
		if (!line1->lookup(kTTSym_node, v))
			node1 = TTNodePtr((TTPtr)v[0]);
		
		node2 = NULL;
		if (!line2->lookup(kTTSym_node, v))
			node2 = TTNodePtr((TTPtr)v[0]);
		
		if (node1 && node2) {
			
			// node1 and node2 have to be the same node
			if (node1 != node2) {
				script2->mLines->find(&TTScriptFindNode, (TTPtr)node1, found);
				
				// couldn't find the same object in script2 : skip the command
				if (found == kTTValNONE) {
					script2->mLines->begin();
					continue;
				}
				else {
                    line2 = TTDictionaryPtr((TTPtr)found[0]);
					
					node2 = NULL;
					if (!line2->lookup(kTTSym_node, v))
						node2 = TTNodePtr((TTPtr)v[0]);
					else
						continue;
				}
			}
			
			if (line1->getSchema() == kTTSym_command && line2->getSchema() == kTTSym_command) {
				
                if (node1->getObject()) {
                    
                    if (!node1->getObject()->getAttributeValue(kTTSym_type, v)) {
                        type1 = v[0];
                        
                        // get line values
                        line1->getValue(v1);
                        line2->getValue(v2);
                        
                        if (type1 == kTTSym_integer) {
                            newValue = TTValue(TTInt32(v1[0]) * (1. - position) + TTInt32(v2[0]) * position);
                            
                        } else if (type1 == kTTSym_decimal) {
                            newValue = TTValue(TTFloat64(v1[0]) * (1. - position) + TTFloat64(v2[0]) * position);
                            
                        } else if (type1 == kTTSym_array) {
                            s = v1.size();
                            if (s == v2.size()) {
                                
                                newValue.resize(s);
                                for (i = 0; i < s; i++)
                                    newValue[i] = TTFloat64(v1[i]) * (1. - position) + TTFloat64(v2[i]) * position;
                            }
                            
                        } else
                            newValue = position <= 0.5 ? v1 : v2;
                        
                        // set the interpolated value
                        node1->getObject()->setAttributeValue(kTTSym_value, newValue);
                    }
                }
			}
			else if (line1->getSchema() == kTTSym_script && line2->getSchema() == kTTSym_script) {
				
				// get the sub scripts
				sub1 = NULL;
				if (!line1->getValue(v))
					sub1 = TTScriptPtr((TTObjectPtr)v[0]);
				
				sub2 = NULL;
				if (!line2->getValue(v))
					sub2 = TTScriptPtr((TTObjectPtr)v[0]);
				
				// interpolate the script
				if (sub1 && sub2)
					TTScriptInterpolate(sub1, sub2, position);
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTScriptMix(const TTValue& scripts, const TTValue& factors)
{
	TTScriptPtr		firstScript, aScript, aSubScript;
	TTDictionaryPtr firstScriptLine, aLine;
    TTValue			v, valueToMix, mixedValue, found, subScripts;
    TTNodePtr       aNode;
	TTSymbol		schema, dataType;
    TTFloat64		sumFactors;
    TTUInt32		i, mixSize;
	
    if (scripts == kTTValNONE)
		return kTTErrGeneric;
	
	mixSize = scripts.size();
	
	// initialized lines list iterator
	firstScript = TTScriptPtr((TTObjectPtr)scripts[0]);
	firstScript->mLines->begin();
	
    for (i = 1; i < mixSize; i++) {
		aScript = TTScriptPtr((TTObjectPtr)scripts[i]);
		aScript->mLines->begin();
    }
	
	// iterate over all command lines of first given script
    for (; firstScript->mLines->end(); firstScript->mLines->next()) {
		
		firstScriptLine = TTDictionaryPtr((TTPtr)firstScript->mLines->current()[0]);
        
        // get schema
        schema = firstScriptLine->getSchema();
		
		// get node
		aNode = NULL;
		if (!firstScriptLine->lookup(kTTSym_node, v))
			aNode = TTNodePtr((TTPtr)v[0]);
        
        // else each script go to the next line
        else {
			for (i = 1; i < mixSize; i++) {
				aScript = TTScriptPtr((TTObjectPtr)scripts[i]);
				aScript->mLines->next();
			}
			continue;
		}
		
		if (schema == kTTSym_command) {
			
            if (!aNode->getObject())
                continue;
            
			if (!aNode->getObject()->getAttributeValue(kTTSym_type, v))
				dataType = v[0];
			else continue;
			
			// initialize the mix with the command of the first script
			sumFactors = TTScriptMixLine(firstScriptLine, dataType, mixSize, TTFloat64(factors[0]), mixedValue, YES);
			
			for (i = 1; i < mixSize; i++) {
				
				aScript = TTScriptPtr((TTObjectPtr)scripts[i]);
				
				if (aScript->mLines->end()) {
					
					// try to find the same node
					aScript->mLines->find(&TTScriptFindNode, (TTPtr)aNode, found);
					
					// couldn't find the same node in the script : 
					// look into to next script for this command
					if (found == kTTValNONE) {
						aScript->mLines->begin();
						continue;
					}
					else {
						aLine = TTDictionaryPtr((TTPtr)found[0]);
						
						// mix the command of this script
						// TODO : introduce a mixWeight information into command lines
						sumFactors += TTScriptMixLine(aLine, dataType, mixSize, TTFloat64(factors[i]), mixedValue, NO);
						
						aScript->mLines->next();
					}
				}
			}
			
			if (sumFactors > 0) {
				
				// if numeric : normalise by sum of mixWeight
				if (dataType == kTTSym_integer)
					mixedValue[0] = (TTInt32(mixedValue[0]) / sumFactors) + 1; // +1 because the value is truncate in TTData::setValue
				
				else if (dataType == kTTSym_decimal)
					mixedValue[0] = TTFloat64(mixedValue[0]) / sumFactors;
				
				else if (dataType == kTTSym_array)
					for (int i = 0; i < mixedValue.size(); i++) 
						mixedValue[i] = TTFloat64(mixedValue[i]) / sumFactors;
				// for any other type : remove the coef at the end of the value
				else
					mixedValue.resize(mixedValue.size()-1);
				
				// set the mixed value
				aNode->getObject()->setAttributeValue(kTTSym_value, mixedValue);
			}
		}
		else if (schema == kTTSym_script) {
			
			subScripts.clear();
			
			// get the first sub script
			aSubScript = NULL;
			if (!firstScriptLine->getValue(v))
				aSubScript = TTScriptPtr((TTObjectPtr)v[0]);
			
			subScripts.append((TTPtr*)aSubScript);
			
			// get all other sub scripts
			for (i = 1; i < mixSize; i++) {
				
				aScript = TTScriptPtr((TTObjectPtr)scripts[i]);
				
				if (aScript->mLines->end()) {
					
					// try to find the same node
					aScript->mLines->find(&TTScriptFindNode, (TTPtr)aNode, found);
					
					// couldn't find the same node in the script : 
					// look into to next script for this subscript
					if (found == kTTValNONE) {
						aScript->mLines->begin();
						continue;
					}
					else {
						aLine = TTDictionaryPtr((TTPtr)found[0]);
						
						// get the sub script
						aSubScript = NULL;
						if (!aLine->getValue(v))
							aSubScript = TTScriptPtr((TTObjectPtr)v[0]);
						
						subScripts.append((TTPtr*)aSubScript);
						
						aScript->mLines->next();
					}
				}
			}
			
			// mix the sub scripts
			if (subScripts.size() == mixSize)
				TTScriptMix(subScripts, factors);
		}
    }
	
	return kTTErrNone;
}

TTFloat64 TTScriptMixLine(TTDictionaryPtr lineToMix, TTSymbol dataType, TTUInt32 mixSize, TTFloat64 factor, TTValue& mixedValue, TTBoolean init)
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
	TTDictionaryPtr		lineToMerge, mergedLine;
	TTScriptPtr			subScriptToMerge, mergedSubScript;
	TTAddress           addressToMerged, mergedAddress;
	TTValue				v, valueToMerged, mergedValue, found, parsedLine;
	TTBoolean			merged = NO; // to know if a line have already been merged
	TTErr				err;
	
	if (!scriptToMerge->mLines || !mergedScript->mLines)
		return kTTErrGeneric;
	
	for (scriptToMerge->mLines->begin(); scriptToMerge->mLines->end(); scriptToMerge->mLines->next()) {
		
		lineToMerge = TTDictionaryPtr((TTPtr)scriptToMerge->mLines->current()[0]);
		
		// get address
		addressToMerged = kTTAdrsEmpty;
		if (!lineToMerge->lookup(kTTSym_address, v))
			addressToMerged = v[0];
		
		if (addressToMerged != kTTAdrsEmpty) {
			
			// try to find a line for this address into the merged script
			merged = NO;
			if (mergedScript->mLines) {
				
				mergedScript->mLines->find(&TTScriptFindAddress, (TTPtr)&addressToMerged, found);
				
				if (!(found == kTTValNONE)) {
					mergedLine = TTDictionaryPtr((TTPtr)found[0]);
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
					subScriptToMerge = TTScriptPtr((TTObjectPtr)v[0]);
				
				// if this script line haven't been merged yet
				if (!merged)
					// create a line for the merged sub script
					mergedLine = TTScriptParseScript(addressToMerged);
				
				// get the new sub script
				mergedSubScript = NULL;
				mergedLine->getValue(v);
				mergedSubScript = TTScriptPtr((TTObjectPtr)v[0]);
				
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
	TTDictionaryPtr		lineToOptimize, aLine, optimizedLine;
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
		
		lineToOptimize = TTDictionaryPtr((TTPtr)aScriptToOptimize->mLines->current()[0]);
		aLine = TTDictionaryPtr((TTPtr)aScript->mLines->current()[0]);
		
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
				if (found == kTTValNONE) {
					aScript->mLines->begin();
					continue;
				}
				else
					aLine = TTDictionaryPtr((TTPtr)found[0]);
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
					subScriptToOptimize = TTScriptPtr((TTObjectPtr)v[0]);
				
				aSubScript = NULL;
				if (!aLine->getValue(v))
					aSubScript = TTScriptPtr((TTObjectPtr)v[0]);
				
				// optimize the sub scripts if they exist
				if (subScriptToOptimize && aSubScript) {
					
					// create a line for the optimized sub script
					optimizedLine = TTScriptParseScript(addressToOptimize);
					
					// get the new sub script
					optimizedSubScript = NULL;
					optimizedLine->getValue(v);
					optimizedSubScript = TTScriptPtr((TTObjectPtr)v[0]);
					
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
						TTObjectRelease(TTObjectHandle(&optimizedSubScript));
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
	TTDictionaryPtr		aLine, aLineCopy;
	TTValue				v, args;
	
	// copy each line of the script
	for (scriptTocopy->mLines->begin(); scriptTocopy->mLines->end(); scriptTocopy->mLines->next()) {
		
		aSubScriptToCopy = NULL;
		aSubScriptCopy = NULL;
		aLine = TTDictionaryPtr((TTPtr)scriptTocopy->mLines->current()[0]);
		
		aLineCopy = TTScriptCopyLine(aLine);
		
		if (aLineCopy->getSchema() == kTTSym_script) {
			
			// get the subscript
			aLineCopy->getValue(v);
			aSubScriptToCopy = TTScriptPtr((TTObjectPtr)v[0]);
			
			// prepare arguments
			args.append(scriptTocopy->mReturnLineCallback);
			
			// create a subscript copy
			TTObjectInstantiate(kTTSym_Script, TTObjectHandle(&aSubScriptCopy), args);
			
			// copy the subscript into
			TTScriptCopy(aSubScriptToCopy, aSubScriptCopy);
			
			v = TTValue(aSubScriptCopy);
			aLineCopy->setValue(v);
		}
		
		aScriptCopy->mLines->append(aLineCopy);
	}
	
	return kTTErrNone;
}

void TTScriptFindNode(const TTValue& lineValue, TTPtr nodePtrToMatch, TTBoolean& found)
{
	TTDictionaryPtr aLine;
	TTNodePtr		node = NULL;
	TTValue			v;
	
	aLine = TTDictionaryPtr((TTPtr)lineValue[0]);
	
	if (!aLine->lookup(kTTSym_node, v))
		node = TTNodePtr((TTPtr)v[0]);
	
	found = node == ((TTNodePtr)nodePtrToMatch);
}

void TTScriptFindAddress(const TTValue& lineValue, TTPtr addressPtrToMatch, TTBoolean& found)
{
	TTDictionaryPtr		aLine;
	TTAddress			address;
	TTValue				v;
	
	aLine = TTDictionaryPtr((TTPtr)lineValue[0]);
	
	if (!aLine->lookup(kTTSym_address, v))
		address = v[0];
	
	found = address == *((TTAddress*)addressPtrToMatch);
}

TTDictionaryPtr TTScriptCopyLine(TTDictionaryPtr lineTocopy)
{
	TTValue		keys, v;
	TTSymbol	key;
	TTUInt32	i;
	
	TTDictionaryPtr newLine = new TTDictionary();
	
	lineTocopy->getKeys(keys);
	for (i = 0; i < keys.size(); i++) {
		key = keys[i];
		lineTocopy->lookup(key, v);
		newLine->append(key, v);
	}
	
	return newLine;
}
