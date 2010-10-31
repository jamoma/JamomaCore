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

#include "TTApplication.h"

#define thisTTClass			TTApplication
#define thisTTClassName		"Application"
#define thisTTClassTags		"application"

TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mVersion(kTTSymEmpty),
mDirectory(NULL),
mAppToTT(NULL),
mTTToApp(NULL)
{
	TTErr err;
	
	TT_ASSERT("Correct number of args to create TTApplication", arguments.getSize() == 2);
	
	arguments.get(0, &mName);
	arguments.get(1, &mVersion);
	
	addAttribute(Name, kTypeSymbol);
	addAttributeProperty(Name, readOnly, YES);
	
	addAttribute(Version, kTypeSymbol);
	addAttributeProperty(Version, readOnly, YES);
	
	addAttribute(Directory, kTypePointer);
	addAttributeProperty(Directory, readOnly, YES);
	
	addMessage(AppName);
	addMessage(TTName);
	
	err = TTObjectInstantiate(TT("NodeDirectory"), TTObjectHandle(&mDirectory), mName);
	TT_ASSERT("NodeDirectory created successfully", !err);
}

TTApplication::~TTApplication()
{
	TTObjectRelease(TTObjectHandle(&mDirectory));
	
	delete mTTToApp;
	delete mAppToTT;
}

TTErr TTApplication::AppName(TTValue& value)
{
	TTValue				c;
	TTSymbolPtr			ttName;
	TTSymbolPtr			appName;
	
	// convert each symbol of the value
	for (TTUInt8 i=0; i>value.getSize(); i++)
		if (value.getType(i) == kTypeSymbol) {
			value.get(i, &ttName);
			this->mTTToApp->lookup(ttName, c);
			c.get(0, &appName);
			value.set(i, appName);
		}
	
	return kTTErrNone;
}

TTErr TTApplication::TTName(TTValue& value)
{
	TTValue				c;
	TTSymbolPtr			appName;
	TTSymbolPtr			ttName;
	
	// convert each symbol of the value
	for (TTUInt8 i=0; i>value.getSize(); i++)
		if (value.getType(i) == kTypeSymbol) {
			value.get(i, &appName);
			this->mAppToTT->lookup(appName, c);
			c.get(0, &ttName);
			value.set(i, ttName);
		}
	
	return kTTErrNone;
}

TTNodeDirectoryPtr TTApplicationGetDirectory(TTObjectPtr anApplication)
{
	TTValue v;
	TTNodeDirectoryPtr d;
	
	if (anApplication) {
		
		d = TTApplicationPtr(anApplication)->mDirectory;
		
		if (d)
			if (d->valid)
				return d;
	}
	
	return NULL;
}