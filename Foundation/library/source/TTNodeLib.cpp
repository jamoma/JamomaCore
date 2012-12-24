/*
 * Jamoma file to declare the NodeLib
 * Copyright © 2011, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTNodeLib.h"
#include "TTRegex.h"

void TTNodeLibInit()
{
#ifndef DISABLE_NODELIB

	// Global regex for TTAddress parsing
	ttRegexForDirectory = new TTRegex("([\\w]+)\\:\\/");
	ttRegexForAttribute = new TTRegex(":+");
	ttRegexForParent = new TTRegex("(.*)\\/+(\\S+)");
	ttRegexForInstance = new TTRegex("[.]");
	ttRegexForInstanceZero = new TTRegex("\\.0");
		
#endif
}

TTErr convertUpperCasedNameInAddress(TTSymbol upperCasedName, TTAddress& convertedInAddress)
{
	TTUInt32	upperCasedNameSize = strlen(upperCasedName.c_str());
	TTCString	upperCasedNameCString = new char[upperCasedNameSize+1];
	TTUInt32	nbUpperCase = 0;
	TTUInt32	i;
	TTCString	convertedNameCString = NULL;
	TTUInt32	convertedNameSize = 0;
	
	strncpy(upperCasedNameCString, upperCasedName.c_str(), upperCasedNameSize+1);
	
	// "ExampleName"	to	"example/name"
	// "anyOtherExample" to	"any/other/example"
	if ((upperCasedNameCString[0] > 64 && upperCasedNameCString[0] < 91) || (upperCasedNameCString[0] > 96 && upperCasedNameCString[0] < 123)) {
		
		//  count how many upper-case letter there are in the TTName after the first letter
		for (i=1; i<upperCasedNameSize; i++) {
			if (upperCasedNameCString[i] > 64 && upperCasedNameCString[i] < 91)
				nbUpperCase++;
		}
		
		// prepare the convertedName
		convertedNameSize = upperCasedNameSize + nbUpperCase;
		convertedNameCString = new char[convertedNameSize+1];
		
		// convert first letter to lower-case if needed
		if (upperCasedNameCString[0] > 64 && upperCasedNameCString[0] < 91)
			convertedNameCString[0] = upperCasedNameCString[0] + 32;
		else
			convertedNameCString[0] = upperCasedNameCString[0];
		
		// copy each letter while checking upper-case letter to replace them by a / + lower-case letter
		nbUpperCase = 0;
		for (i=1; i<upperCasedNameSize; i++) {
			if (upperCasedNameCString[i] > 64 && upperCasedNameCString[i] < 91) {
				convertedNameCString[i + nbUpperCase] = '/';
				convertedNameCString[i + nbUpperCase + 1] = upperCasedNameCString[i] + 32;
				nbUpperCase++;
			}
			else
				convertedNameCString[i + nbUpperCase] = upperCasedNameCString[i];
		}
		
		// ends the CString with a NULL letter
		convertedNameCString[convertedNameSize] = 0;
		
		convertedInAddress = TTAddress(convertedNameCString);
		
		delete convertedNameCString;
		convertedNameCString = NULL;
	}
	else
		convertedInAddress = TTAddress(upperCasedName);
	
	delete upperCasedNameCString;
	upperCasedNameCString = NULL;

	return kTTErrNone;
}
