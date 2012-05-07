/* 
 * TTObject to handle buffer file reading and writing
 * to be able to store / recall state of an object 
 * into/from buffer files.
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBufferHandler.h"

#define thisTTClass			TTBufferHandler
#define thisTTClassName		"BufferHandler"
#define thisTTClassTags		"buffer, handler"

TT_MODULAR_CONSTRUCTOR,
mObject(NULL),
mFilePath(kTTSymEmpty),
mWriter(NULL),
mReader(NULL),
mIsWriting(NO),
mIsReading(NO),
mFirstLine(NO),
mLastLine(NO)
{
	TT_ASSERT("Correct number of args to create TTBufferHandler", arguments.getSize() == 0);
	
	addAttribute(Object, kTypePointer);
	
	addMessageWithArguments(Write);
	addMessageWithArguments(Read);
}

TTBufferHandler::~TTBufferHandler()
{
	;
}

TTErr TTBufferHandler::Write(const TTValue& args, TTValue& outputValue)
{
    TTValue				v;
	TTObjectPtr			aTTObject;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	// if the first argument is kTypePointer : get the buffer where to write and start writing
	if (args.getSize() == 1) {
		
		if (args.getType(0) == kTypeSymbol) {
			
			;/* TODO : merge BufferHandler and TextHandler into an unique TextHandler
			args.get(0, &mFilePath);
			
			// Create a new text file
			ofstream file(mFilePath->getCString());
			
			if (!file.is_open()){
				TT_ASSERT("TTBufferHandler::Write : Error creating the text file\n", true);
				return kTTErrGeneric;
			}
			
			// Close the text file
			file.close();
			  */
		} 
		else if (args.getType(0) == kTypePointer) {
			
			args.get(0, (TTPtr*)&mWriter);

			/* Start to write */
			mIsWriting = true;
			
			// Write data of the given TTObject (which have to implement a WriteAsBuffer message)
			v.clear();
			v.append((TTPtr)this);
			aTTObject->sendMessage(TT("WriteAsBuffer"), v, kTTValNONE);
			
			mIsWriting = false;
			
			// memorize the TTObject as the last handled object
			mObject = aTTObject;
			
			return kTTErrNone;
		}
		else
			return kTTErrGeneric;
	}
	
	// else
	v.append((TTPtr)this);
	return aTTObject->sendMessage(TT("WriteAsBuffer"), v, kTTValNONE);
}

TTErr TTBufferHandler::Read(const TTValue& args, TTValue& outputValue)
{
	TTObjectPtr	aTTObject;
	size_t		found, last, size;
	TTString	line;
	TTValue		v;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	// if the first argument is kTypePointer : get the buffer to read and start reading
	if (args.getSize() == 1) {
		
		if (args.getType(0) == kTypeSymbol) {
			
			;/* TODO : merge BufferHandler and TextHandler into an unique TextHandler
			args.get(0, &mFilePath);
			
			ifstream file(mFilePath->getCString());
			
			if (!file.is_open()){
				TT_ASSERT("testTextreaderFilename: Error creating the text reader\n", true);
				return kTTErrGeneric;
			}
			
			// Start the document
			while (!file.eof() )
			{
				// Header lines
				getline(file, line);
				
				v.append((TTPtr)this);
				aTTObject->sendMessage(TT("ReadFromText"), v, kTTValNONE);
			}
			*/
		} else if (args.getType(0) == kTypePointer) {
			
			mReader = NULL;
			args.get(0, (TTPtr*)&mReader);
			
			if (mReader) {
				
				mIsReading = true;
				
				last = 0;
				mFirstLine = YES;
				mLastLine = NO;
				found = mReader->find_first_of('\n');
				size = mReader->size();
				while (!mLastLine)
				{
					mLine = NULL;
					
					// parse line
					if (found != last) {
						line = mReader->substr(last, found-last);
						mLine = new TTValue(line);
						mLine->fromString();
					}
					
					// check for a next line
					last = found+1;
					if (last < size)
						found = mReader->find_first_of('\n', last);
					
					// else set last line flag on
					else  
						mLastLine = YES;

					// send the line
					if (mLine) {
						v.append((TTPtr)this);
						aTTObject->sendMessage(TT("ReadFromBuffer"), v, kTTValNONE);
						
						// set first line flag off
						mFirstLine = NO;
						delete mLine;
					}
				}

				mIsReading = false;
				
				// memorize the TTObject as the last handled object
				mObject = aTTObject;
				
				return kTTErrNone;
			}
		}
		
		return kTTErrGeneric;
	}
	
	// else
	v.append((TTPtr)this);
	return aTTObject->sendMessage(TT("ReadFromBuffer"), v, kTTValNONE);
}
