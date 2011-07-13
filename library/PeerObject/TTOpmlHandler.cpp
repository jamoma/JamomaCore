/* 
 * TTObject to handle opml file reading and writing
 * to be able to store / recall state of an object 
 * into/from opml files.
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOpmlHandler.h"

#define thisTTClass			TTOpmlHandler
#define thisTTClassName		"OpmlHandler"
#define thisTTClassTags		"opml, handler"

TT_MODULAR_CONSTRUCTOR,
mObject(NULL),
mFilePath(kTTSymEmpty),
mHeaderNodeName(TT("opml")),
mVersion(TT("1.0")),
mWriter(NULL),
mReader(NULL),
mIsWriting(false),
mIsReading(false)
{
	TT_ASSERT("Correct number of args to create TTOpmlHandler", arguments.getSize() == 0);
	
	addAttribute(Object, kTypePointer);

	addAttribute(HeaderNodeName, kTypeSymbol);
	addAttribute(Version, kTypeSymbol);
	
	addMessageWithArgument(Write);
	addMessageWithArgument(Read);
	
	addMessage(WriteAgain);
	addMessage(ReadAgain);
}

TTOpmlHandler::~TTOpmlHandler()
{
	;
}

TTErr TTOpmlHandler::Write(const TTValue& args)
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
	// start an opml file reading from the given file
	if (args.getSize() == 1) {
		if (args.getType(0) == kTypeSymbol) {
			
			args.get(0, &mFilePath);
			
			// Init the xml library
			LIBXML_TEST_VERSION
			
			// Create a new OpmlWriter for filePath, with no compression.
			mWriter = xmlNewTextWriterFilename(mFilePath->getCString(), 0);
			if (mWriter == NULL) {
				TT_ASSERT("testOpmlwriterFilename: Error creating the opml writer\n", true);
				return kTTErrGeneric;
			}
			
			/* Start the document with the opml default for the version,
			 * encoding ISO 8859-1 and the default for the standalone
			 * declaration. */
			ret = xmlTextWriterStartDocument(mWriter, NULL, TTMODULAR_OPML_ENCODING, "yes");
			if (ret < 0) {
				TT_ASSERT("testOpmlwriterFilename: Error at opmlTextWriterStartDocument\n", true);
				return kTTErrGeneric;
			}
			
			mIsWriting = true;
			
			// to write a human readable file
			xmlTextWriterSetIndent(mWriter, 1);
			
			// Start Header information
			xmlTextWriterStartElement(mWriter, BAD_CAST mHeaderNodeName->getCString());
			xmlTextWriterWriteAttribute(mWriter, BAD_CAST "version", BAD_CAST mVersion->getCString());
			
			// Start opml header
			xmlTextWriterStartElement(mWriter, BAD_CAST "head");
			
			// Start opml header
			xmlTextWriterStartElement(mWriter, BAD_CAST "title");
			xmlTextWriterWriteString(mWriter, BAD_CAST "namespace.opml");
			xmlTextWriterEndElement(mWriter);
			
			/* 
			<dateCreated>Mon, 11 Feb 2002 22:48:02 GMT</dateCreated>");
			<dateModified>Sun, 30 Oct 2005 03:30:17 GMT</dateModified>");
			<ownerName>Dave Winer</ownerName>");
			<ownerEmail>dwiner@yahoo.com</ownerEmail>");
			<expansionState>1, 2, 4</expansionState>");
			<vertScrollState>1</vertScrollState>");
			<windowTop>74</windowTop>");
			<windowLeft>41</windowLeft>");
			<windowBottom>314</windowBottom>");
			<windowRight>475</windowRight>");
			 */
			
			// Close opml header
			xmlTextWriterEndElement(mWriter);
			
			// Start opml body
			xmlTextWriterStartElement(mWriter, BAD_CAST "body");
			
			// Write data of the given TTObject (which have to implement a WriteAsOpml message)
			v.clear();
			v.append((TTPtr)this);
			aTTObject->sendMessage(TT("WriteAsOpml"), v);
			
			// Close opml body
			xmlTextWriterEndElement(mWriter);
			
			// End Header information
			xmlTextWriterEndElement(mWriter);
			
			/* Here we could close the elements ORDER and EXAMPLE using the
			 * function opmlTextWriterEndElement, but since we do not want to
			 * write any other elements, we simply call opmlTextWriterEndDocument,
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
	return aTTObject->sendMessage(TT("WriteAsOpml"), v);
}

TTErr TTOpmlHandler::WriteAgain()
{
	TTValue args;
	
	args.append(mFilePath);
	return Write(args);
}

TTErr TTOpmlHandler::Read(const TTValue& args)
{
	const xmlChar		*xName = 0;
	TTObjectPtr			aTTObject;
	TTValue				v;
	int					ret;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	// if the first argument is kTypeSymbol : this is an *absolute* file path
	// start an opml file reading from the given file
	if (args.getSize() == 1) {
		if (args.getType(0) == kTypeSymbol) {
			
			args.get(0, &mFilePath);
			
			// Init the opml library
			LIBXML_TEST_VERSION
			
			// Parse the file
			mReader = xmlReaderForFile(mFilePath->getCString(), NULL, 0);
			if (mReader != NULL) {
				
				ret = xmlTextReaderRead(mReader);
				while (ret == 1) {
					
					// Get the name of the OPML node
					xName = xmlTextReaderName(mReader);
					if (xName == NULL)
						break;
					mXmlNodeName = TT((char*)xName);
					xmlFree((void*)xName);
					
					// Header node
					if (mXmlNodeName == mHeaderNodeName) {
						
						// Starting
						if (!mIsReading) {
							mIsReading = true;
							mXmlNodeName = TT("start");
						}
						// Ending
						else {
							mIsReading = false;
							mXmlNodeName = TT("end");
						}
					}
					
					v.append((TTPtr)this);
					aTTObject->sendMessage(TT("ReadFromOpml"), v);
					
					// next node
					ret = xmlTextReaderRead(mReader);
				}
				
				if (ret != 0)
					;// TODO : failed to parse
				
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
	return aTTObject->sendMessage(TT("ReadFromOpml"), v);
}

TTErr TTOpmlHandler::ReadAgain()
{
	TTValue args;
	
	args.append(mFilePath);
	return Read(args);
}

TTErr TTOpmlHandler::fromXmlChar(const xmlChar* xCh, TTValue& v, TTBoolean addQuote, TTBoolean numberAsSymbol)
{
	TTString cString;
	
	if (xCh) {
		
		if (addQuote) {
			cString = TTString("\"");
			cString += (char*)xCh;
			cString += "\"";
		}
		else
			cString = TTString((char*)xCh);
		
		v.clear();
		v = cString;
		v.fromString(numberAsSymbol);
		xmlFree((void*)xCh);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}
