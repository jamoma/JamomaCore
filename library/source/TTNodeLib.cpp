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
	// Global regex for TTNodeAddress parsing
	 
	ttRegexForDirectory = new TTRegex("([\w]+):/");		// if using std : "([\\w]+)\\:\\/" had to escape the forward /  [tap])
	ttRegexForAttribute = new TTRegex(":+");
	ttRegexForParent = new TTRegex("(.*)\/+(\S+)");		// if using std : "(.*)\\/+(\\S+)" had to escape the forward /  [tap])
	ttRegexForInstance = new TTRegex("[.]");
	ttRegexForInstanceZero = new TTRegex("\\.0");
	
	ttNodeAddressTable = new TTNodeAddressTable;
}