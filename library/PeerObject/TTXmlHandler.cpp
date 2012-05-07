/* 
 * TTObject to handle xml file reading and writing
 * to be able to store / recall state of an object 
 * into/from xml files.
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTXmlHandler.h"

#define thisTTClass			TTXmlHandler
#define thisTTClassName		"XmlHandler"
#define thisTTClassTags		"xml, handler"

TT_MODULAR_CONSTRUCTOR,
mObject(NULL),
mFilePath(kTTSymEmpty),
mHeaderNodeName(TT("jamoma")),
mVersion(TT("0.6")),
mXmlSchemaInstance(TT("'http://www.w3.org/2001/XMLSchema-instance'")),
mXmlSchemaLocation(TT("'http://jamoma.org/ file:jamoma.xsd'")),
mWriter(NULL),
mReader(NULL),
mIsWriting(false),
mIsReading(false),
mXmlNodeName(kTTSymEmpty),
mXmlNodeValue(kTTValNONE)
{
	TT_ASSERT("Correct number of args to create TTXmlHandler", arguments.getSize() == 0);
	
	addAttribute(Object, kTypePointer);

	addAttribute(HeaderNodeName, kTypeSymbol);
	addAttribute(Version, kTypeSymbol);
	addAttribute(XmlSchemaLocation, kTypeSymbol);
	
	addMessageWithArguments(Write);
	addMessageWithArguments(Read);
	
	addMessage(WriteAgain);
	addMessage(ReadAgain);
}

TTXmlHandler::~TTXmlHandler()
{
	;
}

TTErr TTXmlHandler::Write(const TTValue& args, TTValue& outputValue)
{
    TTValue				v;
	TTObjectPtr			aTTObject;
	int					ret;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	// if the first argument is kTypeSymbol : this is an *absolute* file path
	// start an xml file reading from the given file
	if (args.getSize() == 1) {
		if (args.getType(0) == kTypeSymbol) {
			
			args.get(0, &mFilePath);
			
			// Init the xml library
			LIBXML_TEST_VERSION
			
			// Create a new XmlWriter for filePath, with no compression.
			mWriter = xmlNewTextWriterFilename(mFilePath->getCString(), 0);
			if (mWriter == NULL) {
				TT_ASSERT("testXmlwriterFilename: Error creating the xml writer\n", true);
				return kTTErrGeneric;
			}
			
			/* Start the document with the xml default for the version,
			 * encoding ISO 8859-1 and the default for the standalone
			 * declaration. */
			ret = xmlTextWriterStartDocument(mWriter, NULL, TTMODULAR_XML_ENCODING, "yes");
			if (ret < 0) {
				TT_ASSERT("testXmlwriterFilename: Error at xmlTextWriterStartDocument\n", true);
				return kTTErrGeneric;
			}
			
			mIsWriting = true;
			
			// to write a human readable file
			xmlTextWriterSetIndent(mWriter, 1);
			
			// Start Header information
			xmlTextWriterStartElement(mWriter, BAD_CAST mHeaderNodeName->getCString());
			xmlTextWriterWriteAttribute(mWriter, BAD_CAST "version",			BAD_CAST mVersion->getCString());
			xmlTextWriterWriteAttribute(mWriter, BAD_CAST "xmlns:xsi",			BAD_CAST mXmlSchemaInstance->getCString());
			xmlTextWriterWriteAttribute(mWriter, BAD_CAST "xsi:schemaLocation", BAD_CAST mXmlSchemaLocation->getCString());
			
			// Write data of the given TTObject (which have to implement a WriteAsXml message)
			v.clear();
			v.append((TTPtr)this);
			aTTObject->sendMessage(TT("WriteAsXml"), v, kTTValNONE);
			
			// End Header information
			xmlTextWriterEndElement(mWriter);
			
			/* Here we could close the elements ORDER and EXAMPLE using the
			 * function xmlTextWriterEndElement, but since we do not want to
			 * write any other elements, we simply call xmlTextWriterEndDocument,
			 * which will do all the work. */
			xmlTextWriterEndDocument(mWriter);
			
			xmlFreeTextWriter(mWriter);
			
			mIsWriting = false;
			
			// memorize the TTObject as the last handled object
			mObject = aTTObject;
			
			return kTTErrNone;
		}
	}
	
	// else
	v.append((TTPtr)this);
	return aTTObject->sendMessage(TT("WriteAsXml"), v, kTTValNONE);
}

TTErr TTXmlHandler::WriteAgain()
{
	TTValue args;
	
	args.append(mFilePath);
	return Write(args, kTTValNONE);
}

TTErr TTXmlHandler::Read(const TTValue& args, TTValue& outputValue)
{
	TTUInt8				xType;
	const xmlChar		*xName = 0;
	const xmlChar		*xValue = 0;
	TTObjectPtr			aTTObject;
	TTSymbolPtr			lastNodeName;
	TTValue				v;
	int					ret;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	// if the first argument is kTypeSymbol : this is an *absolute* file path
	// start an xml file reading from the given file
	if (args.getSize() == 1) {
		if (args.getType(0) == kTypeSymbol) {
			
			args.get(0, &mFilePath);
			
			// Init the xml library
			LIBXML_TEST_VERSION
			
			// Parse the file
			mReader = xmlReaderForFile(mFilePath->getCString(), NULL, 0);
			if (mReader != NULL) {
				
				// Start reading
				mIsReading = true;
				
				ret = xmlTextReaderRead(mReader);
				while (ret == 1) {
					
					// Get the type of the XML node
					xType = xmlTextReaderNodeType(mReader);
					
					// Keep element (1) and comment (8) and end element (15) nodes
					if (xType == 1 || xType == 8 || xType == 15) {
						
						switch (xType) {
							
							case 1: // For element node
								
								// Get the node name
								xName = xmlTextReaderName(mReader);
								if (xName == NULL)
									break;
								mXmlNodeName = TT((char*)xName);
								xmlFree((void*)xName);
								
								// to filter one line element
								lastNodeName = mXmlNodeName;
								
								// replace header node name by start
								if (mXmlNodeName == mHeaderNodeName) mXmlNodeName = kTTSym_start;
								
								// Get the node value
								xValue = xmlTextReaderReadString(mReader);
								fromXmlChar(xValue, mXmlNodeValue);
								if (xValue)	xmlFree((void*)xValue);
								
								break;
								
							case 15: // For end element node
								
								// Get the node name
								xName = xmlTextReaderName(mReader);
								if (xName == NULL)
									break;
								mXmlNodeName = TT((char*)xName);
								xmlFree((void*)xName);
								
								// filter one line element
								if (mXmlNodeName == lastNodeName) {
									ret = xmlTextReaderRead(mReader);
									continue;
								}
								
								// replace header node name by stop
								if (mXmlNodeName == mHeaderNodeName) mXmlNodeName = kTTSym_stop;
								
								// Set the node value
								mXmlNodeValue = kTTValNONE;
								
								break;
								
							case 8: // For comment node
								
								// Set the node name
								mXmlNodeName = kTTSym_comment;
								
								// Get the node value
								xValue = xmlTextReaderValue(mReader);
								fromXmlChar(xValue, mXmlNodeValue, YES);
								if (xValue)	xmlFree((void*)xValue);
								break;
								
							default:
								break;
						}	
						
						// process the mObject parsing on this node
						v.append((TTPtr)this);
						aTTObject->sendMessage(TT("ReadFromXml"), v, kTTValNONE);
					}
						
					// next node
					ret = xmlTextReaderRead(mReader);
				}
				
				if (ret != 0)
					;// TODO : failed to parse
				
				// End reading
				xmlFreeTextReader(mReader);
				mIsReading = false;
				
				// memorize the TTObject as the last handled object
				mObject = aTTObject;
			}
			else
				return kTTErrGeneric;
			
			return kTTErrNone;
		}
	}
	
	// else
	v.append((TTPtr)this);
	return aTTObject->sendMessage(TT("ReadFromXml"), v, kTTValNONE);
}

TTErr TTXmlHandler::ReadAgain()
{
	TTValue args;
	
	args.append(mFilePath);
	return Read(args, kTTValNONE);
}

TTErr TTXmlHandler::fromXmlChar(const xmlChar* xCh, TTValue& v, TTBoolean addQuote, TTBoolean numberAsSymbol)
{
	TTString cString;
	
	v.clear();
	
	if (xCh) {
		
		if (xCh[0] != '\n' && xCh[0] != '\0') {
		
			if (addQuote) {
				cString = TTString("\"");
				cString += (char*)xCh;
				cString += "\"";
			}
			else
				cString = TTString((char*)xCh);
			
			v = cString;
			v.fromString();
			xmlFree((void*)xCh);
			return kTTErrNone;
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTXmlHandler::getXmlAttribute(TTSymbolPtr attributeName, TTValue& returnedValue)
{
	TTErr err;
	
	if (xmlTextReaderMoveToAttribute(mReader, BAD_CAST attributeName->getCString()) == 1) {
		
		return fromXmlChar(xmlTextReaderValue(mReader), returnedValue);
	}
	
	return kTTErrGeneric;
}

TTErr TTXmlHandler::getXmlNextAttribute(TTSymbolPtr *returnedAttributeName, TTValue& returnedValue)
{
	TTValue v;
	TTErr	err;
	
	if (xmlTextReaderMoveToNextAttribute(mReader) == 1) {
		
		fromXmlChar(xmlTextReaderName(mReader), v);
		
		if (v.getType() == kTypeSymbol) {
			
			v.get(0, returnedAttributeName);
			return fromXmlChar(xmlTextReaderValue(mReader), returnedValue);
		}
	}
	
	return kTTErrGeneric;
}
