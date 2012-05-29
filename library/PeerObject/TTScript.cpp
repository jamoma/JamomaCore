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
mSubScript(NULL)
{
	mLines = new TTList();
	
	addAttribute(Lines, kTypePointer);
	addAttributeProperty(Lines, readOnly, YES);
	
	addMessage(Clear);
	addMessageWithArguments(Run);
	
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
	TTSymbolPtr			name;
	TTNodePtr			aNode;
	TTNodeAddressPtr	address, containerAddress = kTTAdrsRoot;
	TTObjectPtr			anObject, container;
	TTValue				v, c;
	TTErr				err;
	
	// It is possible to run the script passing command to a container object
	if (inputValue.getType() == kTypeSymbol) {
		
		inputValue.get(0, &containerAddress);

		container = NULL;
		err = getDirectoryFrom(containerAddress)->getTTNode(containerAddress, &aNode);
		
		if (!err) {
			
			if (aNode) {
				
				anObject = aNode->getObject();
				
				// check if it's a container
				if (anObject)
					if (anObject->getName() == TT("Container"))
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
			v.get(0, &name);
			
			// TODO : output current flag to display it
		}	
		else if (aLine->getSchema() == kTTSym_comment) {
			
			// TODO : output current comment to display it
			continue;
		}
		else if (aLine->getSchema() == kTTSym_command) {
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			v.get(0, &address);
			
			// use container for relative address
			if (container && address->getType() == kAddressRelative) {
				
				v = TTValue(address);
				c = TTValue((TTPtr)aLine);
				v.append((TTPtr)&c);
				
				container->sendMessage(kTTSym_Send, v, kTTValNONE);
			}
			// or use data directly for absolute
			else if (address->getType() == kAddressAbsolute) {
				
				getDirectoryFrom(address)->getTTNode(address, &aNode);
				if (aNode) {
					
					anObject = aNode->getObject();
					
					if (anObject) {
					
						// send the line using the command message
						if (anObject->getName() == TT("Data")) {
							
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
			v.get(0, (TTPtr*)&mSubScript);
			
			// get address
			aLine->lookup(kTTSym_address, v);
			v.get(0, &address);
			
			// if relative, append to container address
			if (address->getType() == kAddressRelative)
				address = containerAddress->appendAddress(address);
			
			// run the script
			mSubScript->sendMessage(TT("Run"), address, kTTValNONE);
		}
	}
	
	return kTTErrNone;
}

TTErr TTScript::Bind(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr		aLine;
	TTSymbolPtr			name;
	TTNodePtr			aNode;
	TTNodeAddressPtr	address, containerAddress = kTTAdrsRoot;
	TTObjectPtr			anObject;
	TTValue				v, c;
	TTErr				err;
	
	// It is possible to make the script bind from a container address
	if (inputValue.getType() == kTypeSymbol)
		inputValue.get(0, &containerAddress);
	
	// make each command line of the script to bind on their TTObject
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		// lookfor command line only
		if (aLine->getSchema() == kTTSym_command || aLine->getSchema() == kTTSym_script) {
			
			// clear any object key
			aLine->remove(kTTSym_object);
			
			// get the address
			aLine->lookup(kTTSym_address, v);
			v.get(0, &address);
			
			// use container for relative address
			if (address->getType() == kAddressRelative)
				address = containerAddress->appendAddress(address);
				
			// retreive the object
			getDirectoryFrom(address)->getTTNode(address, &aNode);
			if (aNode) {
				
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
				mSubScript->sendMessage(TT("Bind"), address, kTTValNONE);
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
	NamespaceItemPtr	anItem;
	TTNodeAddressPtr	address;
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
	NamespacePtr		aSubNamespace;
	NamespaceItemPtr	anItem;
	TTNodeAddressPtr	address;
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
	TTSymbolPtr			name, unit;
	TTNodeAddressPtr	address;
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
			v.get(0, &name);
			
			// dont't write preset or cue flags
			// TODO : we need to filter those flag line before (in TTPreset or TTCue)
			if (name == TT("preset") || name == TT("cue"))
				continue;
			
			// else get flag arguments value
			aLine->getValue(v);
			v.toString();
			v.get(0, aString);
			
			// write flag name and arguments as an Element
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "flag");
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST name->getCString());
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
			v.get(0, &address);
					
			// start command Element
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST kTTSym_command->getCString());
			
			// write name attribute
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST address->getCString());
			
			// write unit attribute
			if (!aLine->lookup(kTTSym_unit, v)) {
				v.get(0, &unit);
				
				xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "unit", BAD_CAST unit->getCString());
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
			v.get(0, &address);
			
			// start script Element
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST kTTSym_script->getCString());
			
			// write address attribute
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST address->getCString());
			
			// get the script
			aLine->getValue(v);
			v.get(0, (TTPtr*)&mSubScript);
			
			// use WriteAsXml of the script
			v = TTValue(TTPtr(mSubScript));
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TT("Write"));
			
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
	TTSymbolPtr			name, attributeName;
	TTNodeAddressPtr	address;
	TTValue				v, parsedLine;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
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
				
				v.get(0, &name);
				
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
				v.get(0, &address);
				
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
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// Get address
		if (!aXmlHandler->getXmlAttribute(kTTSym_address, v)) {
			
			if (v.getType() == kTypeSymbol) {
				
				// edit sub script line
				this->AppendScript(v, parsedLine);
				
				// use ReadAsXml of the script
				v = TTValue((TTPtr)mSubScript);
				aXmlHandler->setAttributeValue(kTTSym_object, v);
				aXmlHandler->sendMessage(TT("Write"));
				
				// append the line
				v = TTValue((TTPtr)aLine);
				mLines->append(v);
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
	TTNodeAddressPtr	address;
	TTSymbolPtr			name;
	TTString			aString;
	TTBoolean			addQuote;
	TTUInt8				i;
	TTValue				v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	buffer = aTextHandler->mWriter;
	
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
			v.get(0, &name);
			
			// get flag arguments value if exists
			addQuote = NO;
			if (!aLine->getValue(v)) {
				v.toString();
				v.get(0, aString);
			}
			else aString = "";
			
			// write flag name and arguments
			*buffer += "# (";
			*buffer += name->getCString();
			*buffer += ") ";
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
				v.get(0, &address);

				// write address
				*buffer += address->getCString();
				
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
			v.get(0, &address);
			
			// write address
			*buffer += "\n";
			*buffer += address->getCString();
			*buffer += "\n";
			
			// get the script
			aLine->getValue(v);
			v.get(0, (TTPtr*)&mSubScript);
			
			// increment the tab count to indent lines
			aTextHandler->mTabCount++;
			
			// use WriteAsXml of the script
			v = TTValue(TTPtr(mSubScript));
			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TT("Write"));
			
			// decrement the tab count
			aTextHandler->mTabCount--;
		}
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
		
		// use ReadFromText of the sub script
		v = TTValue(TTPtr(mSubScript));
		aTextHandler->setAttributeValue(kTTSym_object, v);
		aTextHandler->sendMessage(TT("Read"));
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
	TTSymbolPtr		firstSymbol, secondSymbol;
	TTValue			v, rest;
	
	if (newLine.getType(0) == kTypeSymbol) {
		
		newLine.get(0, &firstSymbol);
		
		// if starts by a "#"
		if (firstSymbol == kTTSym_sharp) {
			
			if (newLine.getType(1) == kTypeSymbol) {
				newLine.get(1, &secondSymbol);
				secondSymbol = TTScriptParseFlagName(secondSymbol);
				
				// if starts by a "(flag)" : append flag
				if (secondSymbol != kTTSymEmpty) {
					rest.copyFrom(newLine, 2);
					rest.prepend(secondSymbol);
					line = TTScriptParseFlag(rest);
				}
				// else : append comment
				else {
					rest.copyFrom(newLine, 1);
					line = TTScriptParseComment(rest);
				}
			}
			// else : append empty comment
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
	TTSymbolPtr		flagName;
	TTValue			v, arguments;
	
	if (newflagAndArguments.getType() == kTypeSymbol) {
		
		newflagAndArguments.get(0, &flagName);
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
	TTSymbolPtr		firstSymbol;
	TTValue			v, commandValue;
	
	// parse name + command
	if (newCommand.getType(0) == kTypeSymbol) {
		
		newCommand.get(0, &firstSymbol);
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
	TTSymbolPtr		firstSymbol;
	TTObjectPtr		script = NULL;
	TTValue			v;
	
	// parse script address
	if (newScript.getType(0) == kTypeSymbol) {
		
		newScript.get(0, &firstSymbol);
		
		line = new TTDictionary();
		
		if (line) {
			
			line->setSchema(kTTSym_script);
			line->append(kTTSym_address, firstSymbol);
			
			TTObjectInstantiate(TT("Script"), &script, kTTValNONE);
			
			v = TTValue((TTPtr)script);
			line->setValue(v);
		}
	}
	
	return line;
}

TTSymbolPtr TTScriptParseFlagName(TTSymbolPtr toParse)
{
	TTString			s_toParse;
	TTString			s_name;
	TTRegex*			ttRegexForParenthesis = new TTRegex("\\(|\\)");
	TTRegexStringPosition begin, end;
	
	s_toParse = toParse->getCString();
	begin = s_toParse.begin();
	end = s_toParse.end();
	
	// parse parenthesis
	if (!ttRegexForParenthesis->parse(begin, end))
	{
		s_name = string(begin+1, end-1);
		return TT(s_name);
	}	
	
	return kTTSymEmpty;
}

TTErr TTScriptInterpolate(TTScriptPtr script1, TTScriptPtr script2, TTFloat64 position)
{
	TTDictionaryPtr line1, line2;
	TTSymbolPtr		type1;
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
				
				// couldn't find the same object in script2, skip the command
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
					v.get(0, &type1);
					
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