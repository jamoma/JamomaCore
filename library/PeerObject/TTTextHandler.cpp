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
mLine(NULL),
mTabCount(0),
mSpaceNumberForTab(4),
mFirstLine(NO),
mLastLine(NO),
mIsWriting(NO),
mIsReading(NO)
{
	TT_ASSERT("Correct number of args to create TTTextHandler", arguments.getSize() == 0);
	
	addAttribute(Object, kTypePointer);
	addAttribute(SpaceNumberForTab, kTypeInt8);
	
	addMessageWithArguments(Write);
	addMessageWithArguments(Read);
}

TTTextHandler::~TTTextHandler()
{
	;
}

TTErr TTTextHandler::Write(const TTValue& args, TTValue& outputValue)
{
    TTValue				v;
	TTObjectPtr			aTTObject;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	if (args.getSize() == 1) {
		
		mIsWriting = true;
		
		// if the first argument is kTypeSymbol : get the path of the file to write
		if (args.getType(0) == kTypeSymbol) {
			
			args.get(0, &mFilePath);
			
			/* Create a new text file
			std::ofstream file(mFilePath->getCString());
			
			// Create a new string text
			this->mWriter = new TTString();
			
			if (!file.is_open()) {
				TT_ASSERT("TTTextHandler : Error creating the text file\n", true);
				return kTTErrGeneric;
			}
			
			// Call the WriteAsText method of the handled object
			v = TTValue((TTPtr)this);
			aTTObject->sendMessage(TT("WriteAsText"), v, kTTValNONE);
			
			// TODO : Write the writer string into the file
			;
			
			// Close the text file
			file.close();
			
			// Clear the text
			delete this->mWriter;
			 */
		}
		
		// if the first argument is kTypePointer : get the text where to write
		else if (args.getType(0) == kTypePointer) {
			
			args.get(0, (TTPtr*)&mWriter);
			
			// Call the WriteAsText method of the handled object
			v = TTValue((TTPtr)this);
			aTTObject->sendMessage(TT("WriteAsText"), v, kTTValNONE);
			
		}
		else
			return kTTErrGeneric;
		
		mIsWriting = false;
		
		// Memorize the TTObject as the last handled object
		mObject = aTTObject;
		
		return kTTErrNone;
	}
	
	// else
	v.append((TTPtr)this);
	return aTTObject->sendMessage(TT("WriteAsText"), v, kTTValNONE);
}

TTErr TTTextHandler::Read(const TTValue& args, TTValue& outputValue)
{
	TTObjectPtr	aTTObject;
	size_t		found, last, size;
	TTUInt8		i;
	TTString	line;
	TTValue		v;
	
	// an object have to be selected
	if (mObject == NULL)
		return kTTErrGeneric;
	
	// memorize this object because it could change if the handler is used recursively
	aTTObject = mObject;
	
	
	if (args.getSize() == 1) {
		
		mIsReading = true;
		
		// if the first argument is kTypeSymbol : get the path of the file to read
		if (args.getType(0) == kTypeSymbol) {
			
			args.get(0, &mFilePath);
			
			/*
			std::ifstream file(mFilePath->getCString());
			
			if (!file.is_open()) {
				TT_ASSERT("TTTextHandler: Error opening the text file\n", true);
				return kTTErrGeneric;
			}
			
			// Start the document
			mFirstLine = YES;
			mLastLine = NO;
			v = TTValue((TTPtr)this);
			
			while (!file.eof()) {
				
				// parse line
				getline(file, line);
				mLine = new TTValue(line);
				mLine->fromString();
				
				if (file.eof()) mLastLine = YES;
				
				aTTObject->sendMessage(TT("ReadFromText"), v, kTTValNONE);
				
				if (mFirstLine) mFirstLine = NO;
			}
			 */
		}
		
		// if the first argument is kTypePointer : get the text to read
		else if (args.getType(0) == kTypePointer) {
			
			mReader = NULL;
			args.get(0, (TTPtr*)&mReader);
			
			if (mReader) {
				
				last = 0;
				mFirstLine = YES;
				mLastLine = NO;
				found = mReader->find_first_of('\n');
				size = mReader->size();
				v = TTValue((TTPtr)this);
				
				while (!mLastLine)
				{
					mLine = NULL;
					
					// parse line
					if (found != last) {
						line = mReader->substr(last, found-last);
						
						// count white space
						i = 0;
						while (line[i] == ' ') i++;
						mTabCount = i / mSpaceNumberForTab;
						
						// or count tab
						if (mTabCount == 0) 
							while (line[mTabCount] == '\t') mTabCount++;
						
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
						
						aTTObject->sendMessage(TT("ReadFromText"), v, kTTValNONE);
						
						// set first line flag off
						mFirstLine = NO;
						delete mLine;
					}
				}
			}
		}
		else return kTTErrGeneric;
		
		mIsReading = false;
		
		// memorize the TTObject as the last handled object
		mObject = aTTObject;
		
		return kTTErrNone;
	}
	
	// else
	v.append((TTPtr)this);
	return aTTObject->sendMessage(TT("ReadFromText"), v, kTTValNONE);
}
