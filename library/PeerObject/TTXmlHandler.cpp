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
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTXmlHandler
#define thisTTClassName		"XmlHandler"
#define thisTTClassTags		"xml, handler"

TT_MODULAR_CONSTRUCTOR,
mObject(NULL),
mFilePath(kTTSymEmpty),
mHeaderNodeName(TTSymbol("jamoma")),
mVersion(TTSymbol("0.6")),
mXmlSchemaInstance(TTSymbol("'http://www.w3.org/2001/XMLSchema-instance'")),
mXmlSchemaLocation(TTSymbol("'http://jamoma.org/ file:jamoma.xsd'")),
mWriter(NULL),
mReader(NULL),
mXmlNodeName(kTTSymEmpty),
mXmlNodeValue(kTTValNONE),
mIsWriting(false),
mIsReading(false)
{
	TT_ASSERT("Correct number of args to create TTXmlHandler", arguments.size() == 0);
	
	addAttribute(Object, kTypeObject);

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
	TTObjectBasePtr			aTTObject;
	int					ret;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	// if the first argument is kTypeSymbol : this is an *absolute* file path
	// start an xml file reading from the given file
	if (args.size() == 1) {
		if (args[0].type() == kTypeSymbol) {
			
			mFilePath = args[0];
			
			// Init the xml library
			LIBXML_TEST_VERSION
			
			// Create a new XmlWriter for filePath, with no compression.
			mWriter = xmlNewTextWriterFilename(mFilePath.c_str(), 0);
			if (mWriter == NULL) {
				TT_ASSERT("testXmlwriterFilename: Error creating the xml writer\n", true);
				return kTTErrGeneric;
			}
			
			/* Start the document with the xml default for the version,
			 * encoding ISO 8859-1 and the default for the standalone
			 * declaration. */
			ret = xmlTextWriterStartDocument((xmlTextWriterPtr)mWriter, NULL, TTMODULAR_XML_ENCODING, "yes");
			if (ret < 0) {
				TT_ASSERT("testXmlwriterFilename: Error at xmlTextWriterStartDocument\n", true);
				return kTTErrGeneric;
			}
			
			mIsWriting = true;
			
			// to write a human readable file
			xmlTextWriterSetIndent((xmlTextWriterPtr)mWriter, 1);
			
			// Start Header information
			xmlTextWriterStartElement((xmlTextWriterPtr)mWriter, BAD_CAST mHeaderNodeName.c_str());
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)mWriter, BAD_CAST "version",			BAD_CAST mVersion.c_str());
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)mWriter, BAD_CAST "xmlns:xsi",			BAD_CAST mXmlSchemaInstance.c_str());
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)mWriter, BAD_CAST "xsi:schemaLocation", BAD_CAST mXmlSchemaLocation.c_str());
			
			// Write data of the given TTObject (which have to implement a WriteAsXml message)
			v.clear();
			v.append(this);
			aTTObject->sendMessage(TTSymbol("WriteAsXml"), v, kTTValNONE);
			
			// End Header information
			xmlTextWriterEndElement((xmlTextWriterPtr)mWriter);
			
			/* Here we could close the elements ORDER and EXAMPLE using the
			 * function xmlTextWriterEndElement, but since we do not want to
			 * write any other elements, we simply call xmlTextWriterEndDocument,
			 * which will do all the work. */
			xmlTextWriterEndDocument((xmlTextWriterPtr)mWriter);
			
			xmlFreeTextWriter((xmlTextWriterPtr)mWriter);
			
			mIsWriting = false;
			
			// memorize the TTObject as the last handled object
			mObject = aTTObject;
			
			return kTTErrNone;
		}
	}
	
	// else
	v.append(this);
	return aTTObject->sendMessage(TTSymbol("WriteAsXml"), v, kTTValNONE);
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
	TTObjectBasePtr			aTTObject;
	TTSymbol			lastNodeName;
	TTValue				v;
	int					ret;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	// if the first argument is kTypeSymbol : this is an *absolute* file path
	// start an xml file reading from the given file
	if (args.size() == 1) {
		if (args[0].type() == kTypeSymbol) {
			
			mFilePath = args[0];
			
			// Init the xml library
			LIBXML_TEST_VERSION
			
			// Parse the file
			mReader = xmlReaderForFile(mFilePath.c_str(), NULL, 0);
			if (mReader != NULL) {
				
				// Start reading
				mIsReading = true;
				
				ret = xmlTextReaderRead((xmlTextReaderPtr)mReader);
				while (ret == 1) {
                    
                    mXmlNodeIsEmpty = xmlTextReaderIsEmptyElement((xmlTextReaderPtr)mReader);
					
					// Get the type of the XML node
					xType = xmlTextReaderNodeType((xmlTextReaderPtr)mReader);
					
					// Keep element (1) and comment (8) and end element (15) nodes
					if (xType == 1 || xType == 8 || xType == 15) {
						
						switch (xType) {
							
							case 1: // For element node
								
								// Start to read a node
								mXmlNodeStart = YES;
								
								// Get the node name
								xName = xmlTextReaderName((xmlTextReaderPtr)mReader);
								if (xName == NULL)
									break;
								mXmlNodeName = TTSymbol((char*)xName);
								xmlFree((void*)xName);
								
								// to filter one line element
								lastNodeName = mXmlNodeName;
								
								// replace header node name by start
								if (mXmlNodeName == mHeaderNodeName) mXmlNodeName = kTTSym_start;
								
								// Get the node value
								xValue = xmlTextReaderReadString((xmlTextReaderPtr)mReader);
								fromXmlChar(xValue, mXmlNodeValue);
								if (xValue)	xmlFree((void*)xValue);
								
								break;
								
							case 15: // For end element node
								
								// Get the node name
								xName = xmlTextReaderName((xmlTextReaderPtr)mReader);
								if (xName == NULL)
									break;
								mXmlNodeName = TTSymbol((char*)xName);
								xmlFree((void*)xName);
								
								// End to read a node
								mXmlNodeStart = NO;
								
								// replace header node name by stop
								if (mXmlNodeName == mHeaderNodeName) mXmlNodeName = kTTSym_stop;
								
								// Set the node value
								mXmlNodeValue = kTTValNONE;
								
								break;
								
							case 8: // For comment node
								
								// Set the node name
								mXmlNodeName = kTTSym_comment;
								
								// Get the node value
								xValue = xmlTextReaderValue((xmlTextReaderPtr)mReader);
								fromXmlChar(xValue, mXmlNodeValue, YES);
								if (xValue)	xmlFree((void*)xValue);
								break;
								
							default:
								break;
						}	
						
						// process the mObject parsing on this node
						v.append(this);
						aTTObject->sendMessage(TTSymbol("ReadFromXml"), v, kTTValNONE);
					}
						
					// next node
					ret = xmlTextReaderRead((xmlTextReaderPtr)mReader);
				}
				
				if (ret != 0)
					;// TODO : failed to parse
				
				// End reading
				xmlFreeTextReader((xmlTextReaderPtr)mReader);
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
	v.append(this);
	return aTTObject->sendMessage(TTSymbol("ReadFromXml"), v, kTTValNONE);
}

TTErr TTXmlHandler::ReadAgain()
{
	TTValue args;
	
	args.append(mFilePath);
	return Read(args, kTTValNONE);
}

TTErr TTXmlHandler::fromXmlChar(const void* axCh, TTValue& v, TTBoolean addQuote, TTBoolean numberAsSymbol)
{
	TTString cString;
	const xmlChar* xCh = (const xmlChar*)axCh;
	
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

TTErr TTXmlHandler::getXmlAttribute(TTSymbol attributeName, TTValue& returnedValue, TTBoolean addQuote, TTBoolean numberAsSymbol)
{
//	TTErr err;
	
	if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)mReader, BAD_CAST attributeName.c_str()) == 1) {
		
		return fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)mReader), returnedValue, addQuote, numberAsSymbol);
	}
	
	return kTTErrGeneric;
}

TTErr TTXmlHandler::getXmlNextAttribute(TTSymbol returnedAttributeName, TTValue& returnedValue, TTBoolean addQuote, TTBoolean numberAsSymbol)
{
	TTValue v;
//	TTErr	err;
	
	if (xmlTextReaderMoveToNextAttribute((xmlTextReaderPtr)mReader) == 1) {
		
		fromXmlChar(xmlTextReaderName((xmlTextReaderPtr)mReader), v);
		
		if (v[0].type() == kTypeSymbol) {
			
			returnedAttributeName = v[0];
			return fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)mReader), returnedValue, addQuote, numberAsSymbol);
		}
	}
	
	return kTTErrGeneric;
}
