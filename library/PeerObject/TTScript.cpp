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
mNamespace(kTTValNONE),
mContainerAddress(kTTAdrsRoot),
mLines(NULL),
mInFold(NO),
mLastLevel(0),
mLastCommand(NULL)
{
	mLines = new TTList();
	
	addAttributeWithGetter(Namespace, kTypeLocalValue);
	addAttributeProperty(Namespace, readOnly, YES);
	
	addAttributeWithSetter(ContainerAddress, kTypeSymbol);
	
	addMessage(Clear);
	addMessage(Run);
	
	addMessageWithArguments(Append);
	addMessageWithArguments(AppendCommand);
	addMessageWithArguments(AppendComment);
	addMessageWithArguments(AppendFlag);
	
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
	
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		if (aLine) {
			delete aLine;
			aLine = NULL;
		}
	}
	
	delete mLines;
	mLines = NULL;
}

TTErr TTScript::getNamespace(TTValue& value)
{
	TTDictionaryPtr		aLine, lastLine, parentLine, lastParentLine;
	TTSymbolPtr			name;
	TTValue				v;
	
	value.clear();
	
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		if (aLine) {
			
			if (aLine->getSchema() == kTTSym_command) {
				
				// get name
				aLine->lookup(kTTSym_name, v);
				v.get(0, &name);
				
				// get parent
				if (!aLine->lookup(kTTSym_parent, v))
					v.get(0, (TTPtr*)&parentLine);
				else
					parentLine = NULL;
				
				if (lastLine) {
					if (parentLine == lastLine)
						value.append(TT("{"));
					else if (parentLine != lastParentLine)
						value.append(TT("}"));
				}

				value.append(name);
				
				lastLine = aLine;
				lastParentLine = parentLine;
			}
		}
	}
	
	if (lastParentLine)
		value.append(TT("}"));
}

TTErr TTScript::setContainerAddress(const TTValue& value)
{	
	TTNodeAddressPtr	address;
	TTNodePtr			aNode;
	TTObjectPtr			anObject;
	
	value.get(0, &mContainerAddress);
	
	
	
	return kTTErrGeneric;
}

TTErr TTScript::Clear()
{
	TTDictionaryPtr aLine = NULL;
	
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		if (aLine) {
			delete aLine;
			aLine = NULL;
		}
	}
	
	delete mLines;
	mLines = new TTList();
	
	mLastLevel = 0;
	mLastCommand = NULL;
	mParentContainer = NULL;
}

TTErr TTScript::Run(const TTValue& newLine, TTValue& outputValue)
{
	TTDictionaryPtr		aLine, lastLine, parentLine, lastParentLine;
	TTSymbolPtr			name;
	TTNodeAddressPtr	parentAddress;
	TTNodePtr			aNode;
	TTObjectPtr			anObject, parentContainer;
	TTValue				v, c;
	
	parentAddress = mContainerAddress;
	parentContainer = NULL;
	
	// get the object at the parent address
	getDirectoryFrom(parentAddress)->getTTNode(parentAddress, &aNode);
	if (aNode) {
		
		anObject = aNode->getObject();
		
		// check if it's a container
		if (anObject)
			if (anObject->getName() == TT("Container"))
				parentContainer = anObject;
	}
	
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
		// Write script line depending on his schema
		if (aLine->getSchema() == kTTSym_flag) {
			
			// get flag name
			aLine->lookup(kTTSym_name, v);
			v.get(0, &name);
			
			// special case for "fold" and "end" flags
			if (name == TT("fold")) {
				mInFold = YES;
				continue;
			}
			else if (name == TT("end")) {
				mInFold = NO;
				continue;
			}
			else if (name == TT("wait")) {
				// TODO : wait
			}
			
			// TODO : output current flag to display it
		}	
		else if (aLine->getSchema() == kTTSym_comment) {
			
			// TODO : output current comment to display it
			continue;
		}
		else if (aLine->getSchema() == kTTSym_command) {
			
			// get the name
			aLine->lookup(kTTSym_name, v);
			v.get(0, &name);
			
			// get parent
			if (!aLine->lookup(kTTSym_parent, v))
				v.get(0, (TTPtr*)&parentLine);
			else
				parentLine = NULL;
			
			if (lastLine) {
				if (parentLine == lastLine) {
					parentAddress = parentAddress->appendAddress(TTADRS(lastName->getCString()));
					
				}
				else if (parentLine != lastParentLine) {
					
					
					parentAddress = parentAddress->getParent();
				}
			}
			
			// if parent line
			if (!aLine->lookup(kTTSym_parent, v)) {
				v.get(0, (TTPtr*)&parentLine);
				
				// use the parent address to get the parent container
				if (parentLine == mLastCommand) {
					
					getDirectoryFrom(parentAddress)->getTTNode(parentAddress, &aNode);
					if (aNode) {
						
						anObject = aNode->getObject();
						
						if (anObject) {
							
							// keep it as parent container
							if (anObject->getName() == TT("Container")) {
								parentAddress = address;
								parentContainer = anObject;
							}
						}
					
					else if () }
				}
			}
			
			// if no parent line
			else {
				
			}
			
			// if there is parent container : send the name + the line
			if (parentContainer) {
				
				v = TTValue(name);
				c = TTValue((TTPtr)aLine);
				v.append((TTPtr)&c);
				
				parentContainer->sendMessage(kTTSym_Send, v, kTTValNONE);
			}
			
			// else
			else {
				
				
				
				address = parentAddress->appendAddress(TTADRS(name->getCString()));
				
				getDirectoryFrom(address)->getTTNode(address, &aNode);
				if (aNode) {
					
					anObject = aNode->getObject();
					
					if (anObject) {
						
						// CONTAINER : keep it as parent container
						if (anObject->getName() == TT("Container")) {
							parentAddress = address;
							parentContainer = anObject;
							mLastCommand = aLine;
						}
						
						// DATA : send the line using the command message
						else if (anObject->getName() == TT("Data")) {
						
							v = TTValue((TTPtr)aLine);
							anObject->sendMessage(kTTSym_Command, v, kTTValNONE);
						}
					}
				}
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
		v = TTValue((TTPtr)line);
		mLines->append(v);
		outputValue = v;
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTScript::AppendCommand(const TTValue& newCommand, TTValue& outputValue)
{
	TTDictionaryPtr line = NULL;
	TTValue			v;
	
	line = TTScriptParseCommand(newCommand);
	
	if (line) {
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
			
			// special case for "fold" and "end" flags
			if (name == kTTSym_fold) {
				mInFold = YES;
				xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "fold");
				continue;
			}
			else if (name == kTTSym_end) {
				xmlTextWriterEndElement(aXmlHandler->mWriter);
				mInFold = NO;
				continue;
			}
			
			// else get flag arguments value
			aLine->getValue(v);
			v.toString();
			v.get(0, aString);
			
			// write flag name and arguments as an Element
			xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "flag");
			xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST flagName->getCString());
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
			
			// get name
			aLine->lookup(kTTSym_name, v);
			v.get(0, &name);
			
			// get address
			aLine->lookup(kTTSym_address, v);
			v.get(0, &address);
				
			// retreive the node
			getDirectoryFrom(address)->getTTNode(address, &aNode);
			
			// if the node exists
			if (aNode) {
				
				anObject = aNode->getObject();
				
				if (anObject) {
					
					// start Element by the type of his object
					xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST anObject->getName()->getCString());
					
					// write name attribute
					xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST address->getCString());
					
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
					
					// close Element
					xmlTextWriterEndElement(aXmlHandler->mWriter);
				}
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTScript::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;
	TTDictionaryPtr		aLine;
	TTSymbolPtr			name, attributeName;
	TTValue				v;
	
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
	
	// Fold node : used to open and close Element
	if (aXmlHandler->mXmlNodeName == kTTSym_fold) {
		
		// edit fold or end flag line
		aLine = new TTDictionary();
		aLine->setSchema(kTTSym_flag);
		
		if (!mInFold) aLine->append(kTTSym_name, kTTSym_fold);
		else aLine->append(kTTSym_name, kTTSym_end);
		
		// append the line
		v = TTValue((TTPtr)aLine);
		mLines->append(v);
		
		// swith InFold state
		mInFold = !mInFold;
		
		return kTTErrNone;
	}
	
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
	
	// Any other nodes : edit command line
	
	// get address attribute
	if (!aXmlHandler->getXmlAttribute(kTTSym_name, v)) {
		
		if (v.getType() == kTypeSymbol) {
			v.get(0, &name);
			
			// edit command line
			aLine = new TTDictionary();
			aLine->setSchema(kTTSym_command);
			aLine->append(kTTSym_name, name);
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
	
	return kTTErrGeneric;
}

TTErr TTScript::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr	aTextHandler;
	TTString			*buffer;
	TTDictionaryPtr		aLine, parentLine;
	TTNodeAddressPtr	address;
	TTSymbolPtr			name;
	TTString			aString;
	TTBoolean			addQuote;
	TTValue				v;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	buffer = aTextHandler->mWriter;
	
	// Write all lines
	for (mLines->begin(); mLines->end(); mLines->next()) {
		
		mLines->current().get(0, (TTPtr*)&aLine);
		
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
			if (!aLine->lookup(kTTSym_name, v)) {
				v.get(0, &name);
				
				*buffer += "\t";
				parentLine = aLine;
				while (!parentLine->lookup(kTTSym_parent, v)) {
					*buffer += "\t";
					v.get(0, (TTPtr*)&parentLine);
					
					if (!parentLine)
						break;
				}
				
				// write name
				*buffer += name->getCString();
				
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
	}
	
	return kTTErrNone;	
}

TTErr TTScript::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr	aTextHandler;
	TTDictionaryPtr		line, parentLine;
	TTUInt8				parentTabCount;
	TTValue				v, parsedLine;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	
	this->Append(*(aTextHandler->mLine), parsedLine);
	
	// get the parsed line
	parsedLine.get(0, (TTPtr*)&line);
	
	// edit the command line hierarchy using tab count
	if (line) {
		
		if (line->getSchema() == kTTSym_command) {
		
			// if the command is a child of the last command
			if (aTextHandler->mTabCount == mLastLevel+1) {
				
				// if there is a last command
				if (mLastCommand) {
					
					// set it as parent of this command
					v = TTValue((TTPtr)mLastCommand);
					line->append(kTTSym_parent, v);
				}				
			}
			
			// if the command is a brother of the last command
			else if (aTextHandler->mTabCount == mLastLevel) {
				
				// if there is a last command
				if (mLastCommand) {
				
					// set the parent of the last command as parent of the current command
					if (!mLastCommand->lookup(kTTSym_parent, v))  
						line->append(kTTSym_parent, v);
				}
			}
			
			// if the command is upper in the hierarchy
			else if ((aTextHandler->mTabCount == mLastLevel-1)) {
				
				// if there is a last command
				if (mLastCommand) {
					
					// get the gran parent of the last command as parent of the current command
					if (!mLastCommand->lookup(kTTSym_parent, v)) {
						
						v.get(0, (TTPtr*)&parentLine);
					
						if (parentLine)
							if (!parentLine->lookup(kTTSym_parent, v))
								line->append(kTTSym_parent, v);
						
					}
				}
			}
			
			// else the hierarchy structure is wrong 
			else return kTTErrGeneric;
			
			// the current line is now the last parsed line
			mLastLevel = aTextHandler->mTabCount;
			mLastCommand = line;
			return kTTErrNone;
		}
	}
	
	// in any other case reset the hierarchy
	mLastLevel = 0;
	mLastCommand = NULL;
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
		// else : append command
		else 
			line = TTScriptParseCommand(newLine);
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
			line->append(kTTSym_name, firstSymbol);
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
