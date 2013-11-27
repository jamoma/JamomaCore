/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTObjectBase to handle opml file reading and writing to be able to store / recall state of an object into/from opml files.
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTOpmlHandler.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTOpmlHandler
#define thisTTClassName		"OpmlHandler"
#define thisTTClassTags		"opml, handler"

TT_MODULAR_CONSTRUCTOR,
mObject(NULL),
mFilePath(kTTSymEmpty),
mHeaderNodeName(TTSymbol("opml")),
mVersion(TTSymbol("1.0")),
mWriter(NULL),
mReader(NULL),
mIsWriting(false),
mIsReading(false)
{
	TT_ASSERT("Correct number of args to create TTOpmlHandler", arguments.size() == 0);
	
	addAttribute(Object, kTypeObject);

	addAttribute(HeaderNodeName, kTypeSymbol);
	addAttribute(Version, kTypeSymbol);
	
	addMessageWithArguments(Write);
	addMessageWithArguments(Read);
	
	addMessage(WriteAgain);
	addMessage(ReadAgain);
}

TTOpmlHandler::~TTOpmlHandler()
{
	;
}

TTErr TTOpmlHandler::Write(const TTValue& args, TTValue& outputValue)
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
	// start an opml file reading from the given file
	if (args.size() == 1) {
        
		if (args[0].type() == kTypeSymbol) {
			
			mFilePath = args[0];
			
			// Init the xml library
			LIBXML_TEST_VERSION
			
			// Create a new OpmlWriter for filePath, with no compression.
			mWriter = xmlNewTextWriterFilename(mFilePath.c_str(), 0);
			if (mWriter == NULL) {
				TT_ASSERT("testOpmlwriterFilename: Error creating the opml writer\n", true);
				return kTTErrGeneric;
			}
			
			/* Start the document with the opml default for the version,
			 * encoding ISO 8859-1 and the default for the standalone
			 * declaration. */
			ret = xmlTextWriterStartDocument((xmlTextWriterPtr)mWriter, NULL, TTMODULAR_OPML_ENCODING, "yes");
			if (ret < 0) {
				TT_ASSERT("testOpmlwriterFilename: Error at opmlTextWriterStartDocument\n", true);
				return kTTErrGeneric;
			}
			
			mIsWriting = true;
			
			// to write a human readable file
			xmlTextWriterSetIndent((xmlTextWriterPtr)mWriter, 1);
			
			// Start Header information
			xmlTextWriterStartElement((xmlTextWriterPtr)mWriter, BAD_CAST mHeaderNodeName.c_str());
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)mWriter, BAD_CAST "version", BAD_CAST mVersion.c_str());
			
			// Start opml header
			xmlTextWriterStartElement((xmlTextWriterPtr)mWriter, BAD_CAST "head");
			
			// Start opml header
			xmlTextWriterStartElement((xmlTextWriterPtr)mWriter, BAD_CAST "title");
			xmlTextWriterWriteString((xmlTextWriterPtr)mWriter, BAD_CAST "namespace.opml");
			xmlTextWriterEndElement((xmlTextWriterPtr)mWriter);
			
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
			xmlTextWriterEndElement((xmlTextWriterPtr)mWriter);
			
			// Start opml body
			xmlTextWriterStartElement((xmlTextWriterPtr)mWriter, BAD_CAST "body");
			
			// Write data of the given TTObjectBase (which have to implement a WriteAsOpml message)
			v.clear();
			v.append(TTObjectBasePtr(this));
			aTTObject->sendMessage(TTSymbol("WriteAsOpml"), v, none);
			
			// Close opml body
			xmlTextWriterEndElement((xmlTextWriterPtr)mWriter);
			
			// End Header information
			xmlTextWriterEndElement((xmlTextWriterPtr)mWriter);
			
			/* Here we could close the elements ORDER and EXAMPLE using the
			 * function opmlTextWriterEndElement, but since we do not want to
			 * write any other elements, we simply call opmlTextWriterEndDocument,
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
	v.append(TTObjectBasePtr(this));
	return aTTObject->sendMessage(TTSymbol("WriteAsOpml"), v, none);
}

TTErr TTOpmlHandler::WriteAgain()
{
	TTValue args;
	
	args.append(mFilePath);
	return Write(args, none);
}

TTErr TTOpmlHandler::Read(const TTValue& args, TTValue& outputValue)
{
	const xmlChar		*xName = 0;
	TTObjectBasePtr			aTTObject;
	TTValue				v;
	int					ret;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	// if the first argument is kTypeSymbol : this is an *absolute* file path
	// start an opml file reading from the given file
	if (args.size() == 1) {
        
		if (args[0].type() == kTypeSymbol) {
			
			mFilePath = args[0];
			
			// Init the opml library
			LIBXML_TEST_VERSION
			
			// Parse the file
			mReader = xmlReaderForFile(mFilePath.c_str(), NULL, 0);
			if (mReader != NULL) {
				
				ret = xmlTextReaderRead((xmlTextReaderPtr)mReader);
				while (ret == 1) {
					
					// Get the name of the OPML node
					xName = xmlTextReaderName((xmlTextReaderPtr)mReader);
					if (xName == NULL)
						break;
					mXmlNodeName = TTSymbol((char*)xName);
					xmlFree((void*)xName);
					
					// Header node
					if (mXmlNodeName == mHeaderNodeName) {
						
						// Starting
						if (!mIsReading) {
							mIsReading = true;
							mXmlNodeName = TTSymbol("start");
						}
						// Ending
						else {
							mIsReading = false;
							mXmlNodeName = TTSymbol("end");
						}
					}
					
					v.append(TTObjectBasePtr(this));
					aTTObject->sendMessage(TTSymbol("ReadFromOpml"), v, none);
					
					// next node
					ret = xmlTextReaderRead((xmlTextReaderPtr)mReader);
				}
				
				if (ret != 0)
					;// TODO : failed to parse
				
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
	v.append(TTObjectBasePtr(this));
	return aTTObject->sendMessage(TTSymbol("ReadFromOpml"), v, none);
}

TTErr TTOpmlHandler::ReadAgain()
{
	TTValue args;
	
	args.append(mFilePath);
	return Read(args, none);
}

TTErr TTOpmlHandler::fromXmlChar(const void* aXCh, TTValue& v, TTBoolean addQuote, TTBoolean numberAsSymbol)
{
	TTString cString;
	const xmlChar* xCh = (const xmlChar*)aXCh;
	
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
