/* 
 * A Script Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTScript.h"

#define thisTTClass			TTScript
#define thisTTClassName		"Script"
#define thisTTClassTags		"script"

TT_MODULAR_CONSTRUCTOR,
mLines(NULL),
mSubScript(NULL),
mParentScript(NULL),
mReturnLineCallback(NULL)
{
	TT_ASSERT("Correct number of args to create TTScript", arguments.getSize() == 0 || arguments.getSize() == 1);
	
	if (arguments.getSize() == 1)
		arguments.get(0, (TTPtr*)&mReturnLineCallback);
	
	TT_ASSERT("Return Line Callback passed to TTScript is not NULL", mReturnLineCallback);
	
	mLines = new TTList();
	
	addAttribute(Lines, kTypePointer);
	addAttributeProperty(Lines, readOnly, YES);
	
	addAttribute(SubScript, kTypePointer);
	addAttributeProperty(SubScript, hidden, YES);
	
	addAttribute(ParentScript, kTypePointer);
	addAttributeProperty(ParentScript, hidden, YES);
	
	addMessage(Clear);
	addMessageWithArguments(Run);
	addMessageWithArguments(Dump);
	
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
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		if (aLine) {
			
			if (aLine->getSchema() == kTTSym_script) {
				
				// get script
				aLine->getValue(v);
				v.get(0, (TTPtr*)&mSubScript);
				
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
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		if (aLine) {
			
			if (aLine->getSchema() == kTTSym_script) {
				
				// get script
				aLine->getValue(v);
				v.get(0, (TTPtr*)&mSubScript);
				
				TTObjectRelease(&mSubScript);
			}
			
			delete aLine;
			aLine = NULL;
		}
	}
	
	delete mLines;
	mLines = new TTList();
}

TTErr TTScript::Run(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr		aLine;
	TTSymbol			name;
	TTNodePtr			aNode;
	TTAddress	address, containerAddress = kTTAdrsRoot;
	TTObjectPtr			anObject, container;
	TTValue				v, c;
	TTErr				err;
	
	// It is possible to run the script passing command to a container object
	if (inputValue.getType() == kTypeSymbol) {
		
		inputValue.get(0, containerAddress);

		container = NULL;
		err = getDirectoryFrom(containerAddress)->getTTNode(containerAddress, &aNode);
		
		if (!err) {
			
			if (aNode) {
				
				anObject = aNode->getObject();
				
				// check if it's a container
				if (anObject)
					if (anObject->getName() == kTTSym_Container)
						container = anObject;
			}
		}
	}
	
	// run each line of the script
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		// run script line depending on his schema
		if (aLine->getSchema() == kTTSym_flag) {
			
			// get flag name
			aLine->lookup(kTTSym_name, v);
			v.get(0, name);
			
			// TODO : output current flag to display it
		}	
		else if (aLine->getSchema() == kTTSym_comment) {
			
			// TODO : output current comment to display it
			continue;
		}
		else if (aLine->getSchema() == kTTSym_command) {
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			v.get(0, address);
			
			// if no container edit absolute address
			if (!container)
				address = containerAddress.appendAddress(address);
			
			// use container for relative address
			if (address.getType() == kAddressRelative) {
				
				v = TTValue(address);
				c = TTValue((TTPtr)aLine);
				v.append((TTPtr)&c);
				
				container->sendMessage(kTTSym_Send, v, kTTValNONE);
			}
			// or use data directly for absolute address
			else if (address.getType() == kAddressAbsolute) {
				
				err = getDirectoryFrom(address)->getTTNode(address, &aNode);
				
				if (!err) {
					
					if (aNode) {
						
						anObject = aNode->getObject();
						
						// check if it's a data
						if (anObject) {
							if (anObject->getName() == kTTSym_Data) {
								
								// send the line using the command message
								v = TTValue((TTPtr)aLine);
								anObject->sendMessage(kTTSym_Command, v, kTTValNONE);
							}
						}
					}
				}
			}
		}
		else if (aLine->getSchema() == kTTSym_script) {
			
			// get the script
			aLine->getValue(v);
			v.get(0, (TTPtr*)&mSubScript);
			
			// get address
			aLine->lookup(kTTSym_address, v);
			v.get(0, address);
			
			// if relative, append to container address
			if (address.getType() == kAddressRelative)
				address = containerAddress.appendAddress(address);
			
			// run the script
			mSubScript->sendMessage(TTSymbol("Run"), address, kTTValNONE);
		}
	}
	
	return kTTErrNone;
}

TTErr TTScript::Dump(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr		aLine;
	TTSymbolPtr			name, unit;
	TTNodeAddressPtr	address, containerAddress = kTTAdrsRoot;
	TTValue				v, valueToDump;
	TTUInt32			ramp;
	TTErr				err;
	
	if (!mReturnLineCallback)
		return kTTErrGeneric;
	
	// It is possible to output the command address relatively to a container address 
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, &containerAddress);
	
	// output each line of the script
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		valueToDump.clear();
		mLines->current().get(0, (TTPtr*)&aLine);
		
		// output script line depending on his schema
		if (aLine->getSchema() == kTTSym_flag) {
			
			// get flag value
			aLine->getValue(valueToDump);
			
			// prepend flag name
			aLine->lookup(kTTSym_name, v);
			v.get(0, &name);
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
				v.get(0, &unit);
				valueToDump.append(unit);
			}
			
			// get the ramp
			if (!aLine->lookup(kTTSym_ramp, v)) {
				v.get(0, ramp);
				valueToDump.append(kTTSym_ramp);
				valueToDump.append(ramp);
			}
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			v.get(0, &address);
			
			// if relative, append to container address
			if (address->getType() == kAddressRelative)
				address = containerAddress->appendAddress(address);
			
			// append the address
			valueToDump.prepend(address);
			
			// output line value
			mReturnLineCallback->notify(valueToDump, kTTValNONE);
		}
		else if (aLine->getSchema() == kTTSym_script) {
			
			// get the script
			aLine->getValue(v);
			v.get(0, (TTPtr*)&mSubScript);
			
			TTScriptPtr(mSubScript)->mReturnLineCallback = mReturnLineCallback;
			
			// get address
			aLine->lookup(kTTSym_address, v);
			v.get(0, &address);
			
			// if relative, append to container address
			if (address->getType() == kAddressRelative)
				address = containerAddress->appendAddress(address);
			
			// dump the subscript
			mSubScript->sendMessage(TT("Dump"), address, kTTValNONE);
		}
	}
	
	return kTTErrNone;
}

TTErr TTScript::Bind(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr		aLine;
	TTSymbol			name;
	TTNodePtr			aNode;
	TTAddress	address, containerAddress = kTTAdrsRoot;
	TTObjectPtr			anObject;
	TTValue				v, c;
	TTErr				err;
	
	// It is possible to make the script bind from a container address
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, containerAddress);
	
	// make each command line of the script to bind on their TTObject
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		// lookfor command line only
		if (aLine->getSchema() == kTTSym_command || aLine->getSchema() == kTTSym_script) {
			
			// clear any object key
			aLine->remove(kTTSym_object);
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			v.get(0, address);
			
			// use container for relative address
			if (address.getType() == kAddressRelative)
				address = containerAddress.appendAddress(address);
				
			// retreive the object
			err = getDirectoryFrom(address)->getTTNode(address, &aNode);
			if (!err && aNode) {
				
				anObject = aNode->getObject();
				
				if (anObject) {
					
					v = TTValue((TTPtr)anObject);
					aLine->append(kTTSym_object, v);
				}
			}
			
			// make sub script binds
			if (aLine->getSchema() == kTTSym_script) {
				
				// get the script
				aLine->getValue(v);
				v.get(0, (TTPtr*)&mSubScript);
				
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
	if (newLine.getType() == kTypePointer) {
		
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
	TTDictionaryPtr		line = NULL;
	TTAddress	address;
	TTValue				v;
	
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
	TTDictionaryPtr		line = new TTDictionary();
	TTAddress	address;
	TTValue				v;
	
	line = TTScriptParseScript(newScript);
	
	if (line) {
		
		// get the sub script
		line->getValue(v);
		v.get(0, (TTPtr*)&mSubScript);
		
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
	TTXmlHandlerPtr		aXmlHandler;
	TTDictionaryPtr		aLine = NULL;
	TTSymbol			name, unit;
	TTAddress	address;
	TTNodePtr			aNode;
	TTObjectPtr			anObject;
	TTValue				v;
	TTString			aString;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	// Write all lines
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		// Write script line depending on his schema
		if (aLine->getSchema() == kTTSym_flag) {
			
			// get flag name
			aLine->lookup(kTTSym_name, v);
			v.get(0, name);
			
			// dont't write preset or cue flags
			// TODO : we need to filter those flag line before (in TTPreset or TTCue)
			if (name == TTSymbol("preset") || name == TTSymbol("cue"))
				continue;
			
			// else get flag arguments value
			aLine->getValue(v);
			v.toString();
			v.get(0, aString);
			
			// write flag name and arguments as an Element
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "flag");
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST name.c_str());
			xmlTextWriterWriteRaw(aXmlHandler->mWriter, BAD_CAST aString.data());
			xmlTextWriterEndElement(aXmlHandler->mWriter);
		}	
		if (aLine->getSchema() == kTTSym_comment) {
			
			// get comment value
			aLine->getValue(v);
			v.toString();
			v.get(0, aString);
			
			// write comment attribute
			xmlTextWriterWriteFormatComment(aXmlHandler->mWriter, "%s", BAD_CAST aString.data());
		}
		else if (aLine->getSchema() == kTTSym_command) {
			
			// get address
			aLine->lookup(kTTSym_address, v);
			v.get(0, address);
					
			// start command Element
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST kTTSym_command.c_str());
			
			// write name attribute
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST address.c_str());
			
			// write unit attribute
			if (!aLine->lookup(kTTSym_unit, v)) {
				v.get(0, unit);
				
				xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "unit", BAD_CAST unit.c_str());
			}
			
			// write ramp attribute
			if (!aLine->lookup(kTTSym_ramp, v)) {
				v.toString();
				v.get(0, aString);
				
				xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "ramp", BAD_CAST aString.data());
			}
			
			// write value
			if (!aLine->getValue(v)) {
				v.toString();
				v.get(0, aString);
				
				xmlTextWriterWriteRaw(aXmlHandler->mWriter, BAD_CAST aString.data());
			}
			
			// close command Element
			xmlTextWriterEndElement(aXmlHandler->mWriter);
		}
		else if (aLine->getSchema() == kTTSym_script) {
			
			// get address
			aLine->lookup(kTTSym_address, v);
			v.get(0, address);
			
			// start script Element
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST kTTSym_script.c_str());
			
			// write address attribute
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST address.c_str());
			
			// get the script
			aLine->getValue(v);
			v.get(0, (TTPtr*)&mSubScript);
			
			// use WriteAsXml of the script
			v = TTValue(TTPtr(mSubScript));
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TTSymbol("Write"));
			
			// close script Element
			xmlTextWriterEndElement(aXmlHandler->mWriter);
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
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
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
			
			if (v.getType() == kTypeSymbol) {
				
				v.get(0, name);
				
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
			
			if (v.getType() == kTypeSymbol) {
				v.get(0, address);
				
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
				v = TTValue((TTPtr)NULL);
				mParentScript->setAttributeValue(TTSymbol("subScript"), v);
			}
		}
		
		// get address attribute of the node
		else if (!aXmlHandler->getXmlAttribute(kTTSym_address, v)) {
			
			if (v.getType() == kTypeSymbol) {
				
				// edit sub script line
				this->AppendScript(v, parsedLine);
				
				// set this as parent script of the subscript
				v = TTValue((TTPtr)this);
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
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	buffer = aTextHandler->mWriter;
	
	// write a new line for level 0
	if (!aTextHandler->mTabCount)
		*buffer += "\n";
	
	// Write all lines
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		// write tabulation
		for (i = 0; i < aTextHandler->mTabCount; i++)
			*buffer += "\t";
		
		// Write script line depending on his schema
		if (aLine->getSchema() == kTTSym_flag) {
			
			// get flag name
			aLine->lookup(kTTSym_name, v);
			v.get(0, name);
			
			// get flag arguments value if exists
			addQuote = NO;
			if (!aLine->getValue(v)) {
				v.toString();
				v.get(0, aString);
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
				v.get(0, aString);
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
				v.get(0, address);

				// write address
				*buffer += address.c_str();
				
				// get and write value
				if (!aLine->getValue(v)) {	
					v.toString();
					v.get(0, aString);
					
					*buffer += " ";
					*buffer += aString.data();
					
					// get and write unit
					if (!aLine->lookup(kTTSym_unit, v)) {
						v.toString();
						v.get(0, aString);
						
						*buffer += " ";
						*buffer += aString.data();
					}
					
					// get and write ramp
					if (!aLine->lookup(kTTSym_ramp, v)) {
						v.toString();
						v.get(0, aString);
						
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
			v.get(0, address);
			
			// write address
			*buffer += address.c_str();
			*buffer += "\n";
			
			// get the script
			aLine->getValue(v);
			v.get(0, (TTPtr*)&mSubScript);
			
			// set this as parent script of the subscript
			v = TTValue((TTPtr)this);
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
		v = TTValue((TTPtr)NULL);
		mParentScript->setAttributeValue(TTSymbol("subScript"), v);
	}
	
	return kTTErrNone;	
}

TTErr TTScript::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr	aTextHandler;
	TTDictionaryPtr		aLine;
	TTValue				v, parsedLine;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	// this line is for this script
	if (aTextHandler->mTabCount == 0) {
		
		this->Append(*(aTextHandler->mLine), parsedLine);
		
		// check for script line to set it as current mSubScript
		parsedLine.get(0 ,(TTPtr*)&aLine);
		
		if (aLine) {
			
			if (aLine->getSchema() == kTTSym_script) {
				
				// get script
				aLine->getValue(v);
				v.get(0, (TTPtr*)&mSubScript);
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
		v = TTValue((TTPtr)this);
		mSubScript->setAttributeValue(TTSymbol("parentScript"), v);
		
		// use ReadFromText of the sub script
		v = TTValue(TTPtr(mSubScript));
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
	
	if (newLine.getType(0) == kTypeSymbol) {
		
		newLine.get(0, firstSymbol);
		
		// if starts by a "-" : flag line
		if (firstSymbol == kTTSym_dash) {
			
			if (newLine.getType(1) == kTypeSymbol) {
				
				rest.copyFrom(newLine, 1);
				line = TTScriptParseFlag(rest);
			}
		}
		// if starts by a "#" : comment line
		else if (firstSymbol == kTTSym_sharp) {
			
			if (newLine.getType(1) == kTypeSymbol) {
				
				rest.copyFrom(newLine, 1);
				line = TTScriptParseComment(rest);
			}
			else line = TTScriptParseComment(kTTValNONE);

		}
		// else if more than one symbol : append a command
		else if (newLine.getSize() > 1) {
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
	
	if (newflagAndArguments.getType() == kTypeSymbol) {
		
		newflagAndArguments.get(0, flagName);
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
	if (newCommand.getType(0) == kTypeSymbol) {
		
		newCommand.get(0, firstSymbol);
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
	if (newScript.getType(0) == kTypeSymbol) {
		
		newScript.get(0, firstSymbol);
		
		line = new TTDictionary();
		
		if (line) {
			
			line->setSchema(kTTSym_script);
			line->append(kTTSym_address, firstSymbol);
			
			TTObjectInstantiate(kTTSym_Script, &script, kTTValNONE);
			
			v = TTValue((TTPtr)script);
			line->setValue(v);
		}
	}
	
	return line;
}

TTErr TTScriptInterpolate(TTScriptPtr script1, TTScriptPtr script2, TTFloat64 position)
{
	TTDictionaryPtr line1, line2;
	TTSymbol		type1;
	TTObjectPtr		obj1, obj2;
	TTScriptPtr		sub1, sub2;
	TTFloat64		value;
	TTValue			v, v1, v2, newValue;
	TTValue			found;
	TTUInt32		i, s;
	
	for (script1->mLines->begin(), script2->mLines->begin(); 
		 script1->mLines->end() && script2->mLines->end(); 
		 script1->mLines->next(), script2->mLines->next()) {
		
		script1->mLines->current().get(0, (TTPtr*)&line1);
		script2->mLines->current().get(0, (TTPtr*)&line2);
		
		// get objects
		obj1 = NULL;
		if (!line1->lookup(kTTSym_object, v))
			v.get(0, (TTPtr*)&obj1);
		
		obj2 = NULL;
		if (!line2->lookup(kTTSym_object, v))
			v.get(0, (TTPtr*)&obj2);
		
		if (obj1 && obj2) {
			
			// obj1 and obj2 have to be the same object
			if (obj1 != obj1) {
				script2->mLines->find(&TTScriptFindObject, (TTPtr)obj1, found);
				
				// couldn't find the same object in script2 : skip the command
				if (found == kTTValNONE) {
					script2->mLines->begin();
					continue;
				}
				else {
					found.get(0, (TTPtr*)&line2);
					
					obj2 = NULL;
					if (!line2->lookup(kTTSym_object, v))
						v.get(0, (TTPtr*)&obj2);
					else
						continue;
				}
			}
			
			if (line1->getSchema() == kTTSym_command && line2->getSchema() == kTTSym_command) {
				
				if (!obj1->getAttributeValue(kTTSym_type, v)) {
					v.get(0, type1);
					
					// get line values
					line1->getValue(v1);
					line2->getValue(v2);
					
					if (type1 == kTTSym_integer) {
						newValue = TTValue(v1.getInt32() * (1. - position) + v2.getInt32() * position);
						
					} else if (type1 == kTTSym_decimal) {
						newValue = TTValue((TTFloat64)(v1.getFloat64() * (1. - position) + v2.getFloat64() * position));
						
					} else if (type1 == kTTSym_array) {
						s = v1.getSize();
						if (s == v2.getSize()) {
							
							newValue.setSize(s);
							for (i = 0; i < s; i++)
								newValue.set(i, (TTFloat64)(v1.getFloat64(i) * (1. - position) + v2.getFloat64(i) * position));
						}
						
					} else
						newValue = position <= 0.5 ? v1 : v2;
					
					// set the interpolated value
					obj1->setAttributeValue(kTTSym_value, newValue);
				}
			}
			else if (line1->getSchema() == kTTSym_script && line2->getSchema() == kTTSym_script) {
				
				// get the sub scripts
				sub1 = NULL;
				if (!line1->getValue(v))
					v.get(0, (TTPtr*)&sub1);
				
				sub2 = NULL;
				if (!line2->getValue(v))
					v.get(0, (TTPtr*)&sub2);
				
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
	TTObjectPtr		anObject;
    TTValue			v, valueToMix, mixedValue, found, subScripts;
	TTSymbol		firstScriptLineSchema, dataType;
    TTFloat64		sumFactors;
    TTUInt32		i, mixSize;
	
    if (scripts == kTTValNONE)
		return kTTErrGeneric;
	
	mixSize = scripts.getSize();
	
	// initialized lines list iterator
	scripts.get(0, (TTPtr*)&firstScript);
	firstScript->mLines->begin();
	
    for (i = 1; i < mixSize; i++) {
		scripts.get(i, (TTPtr*)&aScript);
		aScript->mLines->begin();
    }
	
	// iterate over all command lines of first given script
    for (; firstScript->mLines->end(); firstScript->mLines->next()) {
		
		firstScript->mLines->current().get(0, (TTPtr*)&firstScriptLine);
		
		// get object
		anObject = NULL;
		if (!firstScriptLine->lookup(kTTSym_object, v))
			v.get(0, (TTPtr*)&anObject);
		
		else {
			for (i = 1; i < mixSize; i++) {
				scripts.get(i, (TTPtr*)&aScript);
				aScript->mLines->next();
			}
			continue;			
		}
		
		if (firstScriptLine->getSchema() == kTTSym_command) {
			
			if (!anObject->getAttributeValue(kTTSym_type, v))
				v.get(0, dataType);
			else continue;
			
			// initialize the mix with the command of the first script
			sumFactors = TTScriptMixLine(firstScriptLine, dataType, mixSize, factors.getFloat64(), mixedValue, YES);
			
			for (i = 1; i < mixSize; i++) {
				
				scripts.get(i, (TTPtr*)&aScript);
				
				if (aScript->mLines->end()) {
					
					// try to find the same object
					aScript->mLines->find(&TTScriptFindObject, (TTPtr)anObject, found);
					
					// couldn't find the same object in the script : 
					// look into to next script for this command
					if (found == kTTValNONE) {
						aScript->mLines->begin();
						continue;
					}
					else {
						found.get(0, (TTPtr*)&aLine);
						
						// mix the command of this script
						// TODO : introduce a mixWeight information into command lines
						sumFactors += TTScriptMixLine(aLine, dataType, mixSize, factors.getFloat64(i), mixedValue, NO);
						
						aScript->mLines->next();
					}
				}
			}
			
			if (sumFactors > 0) {
				
				// if numeric : normalise by sum of mixWeight
				if (dataType == kTTSym_integer)
					mixedValue.set(0, (mixedValue.getInt32() / sumFactors) + 1); // +1 because the value is truncate in TTData::setValue
				
				else if (dataType == kTTSym_decimal)
					mixedValue.set(0, mixedValue.getFloat64() / sumFactors);
				
				else if (dataType == kTTSym_array)
					for (int i = 0; i < mixedValue.getSize(); i++) 
						mixedValue.set(i, mixedValue.getFloat64(i) / sumFactors);
				// for any other type : remove the coef at the end of the value
				else
					mixedValue.setSize(mixedValue.getSize()-1);
				
				// set the mixed value
				anObject->setAttributeValue(kTTSym_value, mixedValue);
			}
		}
		else if (firstScriptLine->getSchema() == kTTSym_script) {
			
			subScripts.clear();
			
			// get the first sub script
			aSubScript = NULL;
			if (!firstScriptLine->getValue(v))
				v.get(0, (TTPtr*)&aSubScript);
			
			subScripts.append((TTPtr*)aSubScript);
			
			// get all other sub scripts
			for (i = 1; i < mixSize; i++) {
				
				scripts.get(i, (TTPtr*)&aScript);
				
				if (aScript->mLines->end()) {
					
					// try to find the same object
					aScript->mLines->find(&TTScriptFindObject, (TTPtr)anObject, found);
					
					// couldn't find the same object in the script : 
					// look into to next script for this subscript
					if (found == kTTValNONE) {
						aScript->mLines->begin();
						continue;
					}
					else {
						found.get(0, (TTPtr*)&aLine);
						
						// get the sub script
						aSubScript = NULL;
						if (!aLine->getValue(v))
							v.get(0, (TTPtr*)&aSubScript);
						
						subScripts.append((TTPtr*)aSubScript);
						
						aScript->mLines->next();
					}
				}
			}
			
			// mix the sub scripts
			if (subScripts.getSize() == mixSize)
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
		for (i = 0; i < valueToMix.getSize(); i++)
			mixedValue.append(0);
	}
	
    if (dataType == kTTSym_integer)
		mixedValue.set(0, mixedValue.getInt32() + (valueToMix.getInt32() * factor * mixWeight));

	else if (dataType == kTTSym_decimal)
		mixedValue.set(0, mixedValue.getFloat64() + (valueToMix.getFloat64() * factor * mixWeight));

	else if (dataType == kTTSym_array) {
		
		s = valueToMix.getSize();
		if (s == mixedValue.getSize()) {
			
			for (i = 0; i < s; i++)
				mixedValue.set(i, mixedValue.getFloat64(i) + (valueToMix.getFloat64(i) * factor * mixWeight));
		}
	}
	// for any other type : store the coef at the end of the value to keep only the max coef
    else {
		
		if (init) mixedValue.append((TTFloat64)0.);
		
		if (factor * mixWeight >= mixedValue.getFloat64(mixedValue.getSize()-1)) {
			
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
	TTAddress	addressToMerged, mergedAddress;
	TTValue				v, valueToMerged, mergedValue, found, parsedLine;
	TTBoolean			merged = NO; // to know if a line have already been merged
	TTErr				err;
	
	if (!scriptToMerge->mLines || !mergedScript->mLines)
		return kTTErrGeneric;
	
	for (scriptToMerge->mLines->begin(); scriptToMerge->mLines->end(); scriptToMerge->mLines->next()) {
		
		scriptToMerge->mLines->current().get(0, (TTPtr*)&lineToMerge);
		
		// get address
		addressToMerged = NULL;
		if (!lineToMerge->lookup(kTTSym_address, v))
			v.get(0, addressToMerged);
		
		if (addressToMerged) {
			
			// try to find a line for this address into the merged script
			merged = NO;
			if (mergedScript->mLines) {
				
				mergedScript->mLines->find(&TTScriptFindAddress, (TTPtr)&addressToMerged, found);
				
				if (!(found == kTTValNONE)) {
					found.get(0, (TTPtr*)&mergedLine);
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
					v.get(0, (TTPtr*)&subScriptToMerge);
				
				// if this script line haven't been merged yet
				if (!merged)
					// create a line for the merged sub script
					mergedLine = TTScriptParseScript(addressToMerged);
				
				// get the new sub script
				mergedSubScript = NULL;
				mergedLine->getValue(v);
				v.get(0, (TTPtr*)&mergedSubScript);
				
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
	TTAddress	addressToOptimize, address;
	TTValue				v, valueToOptimize, value, found, parsedLine;
	TTBoolean			empty = YES; // to know if the optimized script contains at least one command
	TTErr				err;
	
	if (!aScriptToOptimize->mLines || !aScript->mLines)
		return kTTErrGeneric;
	
	for (aScriptToOptimize->mLines->begin(), aScript->mLines->begin(); 
		 aScriptToOptimize->mLines->end() && aScript->mLines->end(); 
		 aScriptToOptimize->mLines->next(), aScript->mLines->next()) {
		
		aScriptToOptimize->mLines->current().get(0, (TTPtr*)&lineToOptimize);
		aScript->mLines->current().get(0, (TTPtr*)&aLine);
		
		// get addresses
		addressToOptimize = NULL;
		if (!lineToOptimize->lookup(kTTSym_address, v))
			v.get(0, addressToOptimize);

		address = NULL;
		if (!aLine->lookup(kTTSym_address, v))
			v.get(0, address);
		
		if (addressToOptimize && address) {
			
			// the both addresses have to be the same
			if (addressToOptimize != address) {
				aScript->mLines->find(&TTScriptFindAddress, (TTPtr)&addressToOptimize, found);
				
				// couldn't find the same address in the script : skip the command
				if (found == kTTValNONE) {
					aScript->mLines->begin();
					continue;
				}
				else
					found.get(0, (TTPtr*)&aLine);
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
					v.get(0, (TTPtr*)&subScriptToOptimize);
				
				aSubScript = NULL;
				if (!aLine->getValue(v))
					v.get(0, (TTPtr*)&aSubScript);
				
				// optimize the sub scripts if they exist
				if (subScriptToOptimize && aSubScript) {
					
					// create a line for the optimized sub script
					optimizedLine = TTScriptParseScript(addressToOptimize);
					
					// get the new sub script
					optimizedSubScript = NULL;
					optimizedLine->getValue(v);
					v.get(0, (TTPtr*)&optimizedSubScript);
					
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
		scriptTocopy->mLines->current().get(0, (TTPtr*)&aLine);
		
		aLineCopy = TTScriptCopyLine(aLine);
		
		if (aLineCopy->getSchema() == kTTSym_script) {
			
			// get the subscript
			aLineCopy->getValue(v);
			v.get(0, (TTPtr*)&aSubScriptToCopy);
			
			// prepare arguments
			args.append((TTPtr)scriptTocopy->mReturnLineCallback);
			
			// create a subscript copy
			TTObjectInstantiate(kTTSym_Script, TTObjectHandle(&aSubScriptCopy), args);
			
			// copy the subscript into
			TTScriptCopy(aSubScriptToCopy, aSubScriptCopy);
			
			v = TTValue((TTPtr)aSubScriptCopy);
			aLineCopy->setValue(v);
		}
		
		aScriptCopy->mLines->append(aLineCopy);
	}
	
	return kTTErrNone;
}

void TTScriptFindObject(const TTValue& lineValue, TTPtr objectPtrToMatch, TTBoolean& found)
{
	TTDictionaryPtr aLine;
	TTObjectPtr		object = NULL;
	TTValue			v;
	
	lineValue.get(0, (TTPtr*)&aLine);
	
	if (!aLine->lookup(kTTSym_object, v))
		v.get(0, (TTPtr*)&object);
	
	found = object == ((TTObjectPtr)objectPtrToMatch);
}

void TTScriptFindAddress(const TTValue& lineValue, TTPtr addressPtrToMatch, TTBoolean& found)
{
	TTDictionaryPtr		aLine;
	TTAddress			address;
	TTValue				v;
	
	lineValue.get(0, (TTPtr*)&aLine);
	
	if (!aLine->lookup(kTTSym_address, v))
		v.get(0, address);
	
	found = address == *((TTAddress*)addressPtrToMatch);
}

TTDictionaryPtr TTScriptCopyLine(TTDictionaryPtr lineTocopy)
{
	TTValue		keys, v;
	TTSymbol	key;
	TTUInt32	i;
	
	TTDictionaryPtr newLine = new TTDictionary();
	
	lineTocopy->getKeys(keys);
	for (i = 0; i < keys.getSize(); i++) {
		keys.get(i, key);
		lineTocopy->lookup(key, v);
		newLine->append(key, v);
	}
	
	return newLine;
}
