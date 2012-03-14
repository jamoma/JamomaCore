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
	ttRegexForDirectory = new TTRegex("([\\w]+)\\:/");
	ttRegexForAttribute = new TTRegex(":+");
	ttRegexForParent = new TTRegex("(.*)/+(\\S+)");
	ttRegexForInstance = new TTRegex("[.]");
	ttRegexForInstanceZero = new TTRegex("[.0]");
	
	ttNodeAddressTable = new TTNodeAddressTable;
}