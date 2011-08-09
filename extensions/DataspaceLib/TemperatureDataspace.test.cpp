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
    
    TTValue input;
    TTValue output;
    
    // setup Function
	this->setAttributeValue(TT("dataspace"), TT("temperature"));
    
    this->setAttributeValue(TT("input"), TT("Kelvin"));
    this->setAttributeValue(TT("output"), TT("Kelvin"));
    
    input = TTValue(256.);
    this->convert(input, output);
    
    //TTBoolean result = TTTestFloatEquivalence(input, output);
    
    TTTestAssertion("Kelvin to Kelvin", 
					TTTestFloatEquivalence(TTFloat64(input), TTFloat64(output)),
					testAssertionCount, 
					errorCount);
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
