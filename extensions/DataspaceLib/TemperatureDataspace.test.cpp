/* 
 * Jamoma DataspaceLib: TemperatureDataspace
 * Copyright © 2011 Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TemperatureDataspace.h"

TTErr TemperatureDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
