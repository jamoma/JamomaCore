/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Unit tests for the #TemperatureDataspace.
 *
 * @authors Trond Lossius, Tim Place, Nils Peters, ...
 *
 * @copyright Copyright © 2011 Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


// Dataspaces and Units employ C++ double-inheritance and are thus unsuitable for direct use
// through the usual TTObject API
#define TT_NO_DEPRECATION_WARNINGS

#include "TemperatureDataspace.h"


TTErr TemperatureDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    // Create dataspace object and set to temperature
    try {
        
        TTObject myDataspace("dataspace");
        myDataspace.set(TT("dataspace"), TT("temperature"));
        
        TTValue v;
        TTValue expected;
        
            
        /************************************************/
        /*                                              */
        /* Test conversions to neutral unit             */
        /*                                              */
        /************************************************/
        
        
        // Kelvin => Kelvin
        
        myDataspace.set(TT("inputUnit"), TT("Kelvin"));
        myDataspace.set(TT("outputUnit"), TT("Kelvin"));    

        v = TTValue(256.);
        expected = TTValue(256.);
        
        myDataspace.send(TT("convert"), v, v);
            
        TTTestAssertion("Kelvin to Kelvin", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        
        
        // Celsius => Kelvin
        // Expected value according to Google search: "0 Celsius to Kelvin"
        
        myDataspace.set(TT("inputUnit"), TT("Celsius"));
        myDataspace.set(TT("outputUnit"), TT("Kelvin"));
        
        v = TTValue(0.);
        expected = TTValue(273.15);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("Celsius to Kelvin", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        // Fahrenheit => Kelvin
        // Expected value according to Google search: "32 Farhenheit to Kelvin"
        
        myDataspace.set(TT("inputUnit"), TT("Fahrenheit"));
        myDataspace.set(TT("outputUnit"), TT("Kelvin"));    
        
        v = TTValue(32.);
        expected = TTValue(273.15);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Fahrenheit to Kelvin", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        
        
        /************************************************/
        /*                                              */
        /* Test conversions from neutral unit           */
        /*                                              */
        /************************************************/
           
        // Kelvin => Celsius
        // Expected value according to Google search: "0 Celsius to Kelvin"
        
        myDataspace.set(TT("inputUnit"), TT("Kelvin"));
        myDataspace.set(TT("outputUnit"), TT("Celsius"));
        
        v = TTValue(273.15);
        expected = TTValue(0.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("Kelvin to Celsius", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        // Fahrenheit => Kelvin
        // Expected value according to Google search: "32 Farhenheit to Kelvin"
        
        myDataspace.set(TT("inputUnit"), TT("Kelvin"));
        myDataspace.set(TT("outputUnit"), TT("Fahrenheit"));    
        
        v = TTValue(273.15);
        expected = TTValue(32.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Kelvin to Fahrenheit", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
    }
    catch (...) {
        TTLogMessage("TemperatureDataspace::test TOTAL FAILURE");
        errorCount = 1;
        testAssertionCount = 1;
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
