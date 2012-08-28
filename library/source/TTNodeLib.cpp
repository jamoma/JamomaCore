/*
 * Jamoma file to declare the NodeLib
 * Copyright © 2011, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTNodeLib.h"
#include "TTRegex.h"
#include <regex>

void TTNodeLibInit()
{
	// Global regex for TTNodeAddress parsing
	try {
		ttRegexForDirectory = new TTRegex("([\\w]+)\\:\\/"); // had to escape the forward /  [tap]
		ttRegexForAttribute = new TTRegex(":+");
		ttRegexForParent = new TTRegex("(.*)\\/+(\\S+)");	// had to escape the forward /  [tap]
		ttRegexForInstance = new TTRegex("[.]");
		ttRegexForInstanceZero = new TTRegex("\\.0");
	}
	catch (const std::regex_error& e) {
        std::cout << "regex_error caught: " << e.what() << '\n';
        if (e.code() == std::regex_constants::error_brack)
			std::cout << "The code was error_brack\n";
	}
	
	ttNodeAddressTable = new TTNodeAddressTable;
}