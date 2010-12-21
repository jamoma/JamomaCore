/* 
 * TTObject to handle text file reading and writing
 * to be able to store / recall state of an object 
 * into/from text files.
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTTextHandler.h"

#define thisTTClass			TTTextHandler
#define thisTTClassName		"TextHandler"
#define thisTTClassTags		"text, handler"

TT_MODULAR_CONSTRUCTOR,
mObject(NULL),
mFilePath(kTTSymEmpty),
mWriter(NULL),
mReader(NULL),
mIsWriting(false),
mIsReading(false)
{
	TT_ASSERT("Correct number of args to create TTTextHandler", arguments.getSize() == 0);
	
	addAttribute(Object, kTypePointer);
	
	addMessageWithArgument(Write);
	addMessageWithArgument(Read);
}

TTTextHandler::~TTTextHandler()
{
	;
}

TTErr TTTextHandler::Write(const TTValue& args)
{
    TTValue				v;
	TTObjectPtr			aTTObject;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	// if the first argument is kTypeSymbol : this is an *absolute* file path
	// start a text file reading from the given file
	if (args.getSize() == 1) {
		if (args.getType(0) == kTypeSymbol) {
			
			args.get(0, &mFilePath);
			
			// Create a new TextWriter for filePath.
			ofstream file(mFilePath->getCString());
			mWriter = &file;
			
			if (!mWriter->is_open()){
				TT_ASSERT("testTextwriterFilename: Error creating the text writer\n", true);
				return kTTErrGeneric;
			}
			
			/* Start the document */
			mIsWriting = true;
			
			// Write data of the given TTObject (which have to implement a WriteAsText message)
			v.clear();
			v.append((TTPtr)this);
			aTTObject->sendMessage(TT("WriteAsText"), v);
			
			/* End the document */
			mWriter->close();
			
			mIsWriting = false;
			
			// memorize the TTObject as the last handled object
			mObject = aTTObject;
			
			return kTTErrNone;
		}
		else if (args.getType(0) == kTypePointer) {
			
			//args.get(0, (TTPtr*)&mBuffer);
			
			// Create a new TextWriter for a buffer.
			//ostream buffer;
			//mWriter = &buffer;
			
			/* Start the writing */
			mIsWriting = true;
			
			// Write data of the given TTObject (which have to implement a WriteAsText message)
			v.clear();
			v.append((TTPtr)this);
			aTTObject->sendMessage(TT("WriteAsText"), v);
			
			/* End the writing */
			mIsWriting = false;
			
			// memorize the TTObject as the last handled object
			mObject = aTTObject;
			
			return kTTErrNone;
		}
	}
	
	// else
	v.append((TTPtr)this);
	return aTTObject->sendMessage(TT("WriteAsText"), v);
}

TTErr TTTextHandler::WriteAgain()
{
	TTValue args;
	
	args.append(mFilePath);
	return Write(args);
}

TTErr TTTextHandler::Read(const TTValue& args)
{
	TTObjectPtr	aTTObject;
	TTValue		v;
	TTString	line;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	// if the first argument is kTypeSymbol : this is an *absolute* file path
	// start an text file reading from the given file
	if (args.getSize() == 1) {
		if (args.getType(0) == kTypeSymbol) {
			
			args.get(0, &mFilePath);
			
			ifstream mReader(mFilePath->getCString());
			
			if (!mReader.is_open()){
				TT_ASSERT("testTextreaderFilename: Error creating the text reader\n", true);
				return kTTErrGeneric;
			}
			
			/* Start the document */
			while (!mReader.eof() )
			{
				// Header lines
				getline(mReader, line);
				getline(mReader, line);
					
				v.append((TTPtr)this);
				aTTObject->sendMessage(TT("ReadFromText"), v);
			}
			
			/* End document */
			mIsReading = false;
				
			// memorize the TTObject as the last handled object
			mObject = aTTObject;
				
			mReader.close();
		}
		else
			return kTTErrGeneric;
	}
	
	// else
	v.append((TTPtr)this);
	return aTTObject->sendMessage(TT("ReadFromText"), v);
}

TTErr TTTextHandler::ReadAgain()
{
	TTValue args;
	
	args.append(mFilePath);
	return Read(args);
}
