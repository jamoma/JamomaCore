/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Unit tests for the #SpeedDataspace.
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

#include "SpeedDataspace.h"


TTErr SpeedDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    // Create dataspace object and set to temperature
    try {
        
        TTObject myDataspace("dataspace");
        myDataspace.set(TT("dataspace"), TT("speed"));
        
        TTValue v;
        TTValue expected;
        
        
        /************************************************/
        /*                                              */
        /* Test conversions to neutral unit             */
        /*                                              */
        /************************************************/
        
        
        // meterPerSecond => meterPerSecond
        
        myDataspace.set(TT("inputUnit"), TT("m/s"));
        myDataspace.set(TT("outputUnit"), TT("m/s"));    
        
        v = TTValue(256.);
        expected = TTValue(256.);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("m/s to m/s", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        
        // kilometerPerHour => meterPerSecond
        // Trivial conversion: 36 km/h = (36000 m) / (60*60 s) = 10 m/s
        
        myDataspace.set(TT("inputUnit"), TT("kmph"));
        myDataspace.set(TT("outputUnit"), TT("m/s"));
        
        v = TTValue(36.);
        expected = TTValue(10.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("kmph to m/s", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        // milesPerHour => meterPerSecond
        // Expected value according to Google search: "50 miles per hour to m/s"
        
        myDataspace.set(TT("inputUnit"), TT("mph"));
        myDataspace.set(TT("outputUnit"), TT("m/s"));    
        
        v = TTValue(50.);
        expected = TTValue(22.35200);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("miles per hour to m/s", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        

        // knot => meterPerSecond
        // Expected value according to Google search: "45 knot to m/s"
        // This is a somewhat rough estimate, with limited precision
        
        myDataspace.set(TT("inputUnit"), TT("kn"));
        myDataspace.set(TT("outputUnit"), TT("m/s"));    
        
        v = TTValue(45.);
        expected = TTValue(23.15);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("knot to m/s", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected), true, 0.1),
                        testAssertionCount, 
                        errorCount);

        
        // footPerSecond => meterPerSecond
        // Expected value according to Google search: "20 foot per second to m/s"
        
        myDataspace.set(TT("inputUnit"), TT("ft/s"));
        myDataspace.set(TT("outputUnit"), TT("m/s"));    
        
        v = TTValue(20.);
        expected = TTValue(6.09600);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("foot per hour to m/s", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        
        
        /************************************************/
        /*                                              */
        /* Test conversions from neutral unit           */
        /*                                              */
        /************************************************/
        
        // meterPerSecond =>kilometerPerHour
        
        myDataspace.set(TT("inputUnit"), TT("m/s"));
        myDataspace.set(TT("outputUnit"), TT("kmph"));
        
        v = TTValue(10.);
        expected = TTValue(36.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("m/s to kmph", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        // milesPerHour => meterPerSecond
        // Expected value according to Google search: "50 miles per hour to m/s"
        
        myDataspace.set(TT("inputUnit"), TT("m/s"));
        myDataspace.set(TT("outputUnit"), TT("mph"));    
        
        v = TTValue(22.35200);
        expected = TTValue(50.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("m/s to miles per hour", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected), true, 0.00001),
                        testAssertionCount, 
                        errorCount);
        
        
        // knot => meterPerSecond
        // Expected value according to Google search: "45 knot to m/s"
        // This is a somewhat rough estimate, with limited precision
        
        myDataspace.set(TT("inputUnit"), TT("m/s"));
        myDataspace.set(TT("outputUnit"), TT("kn"));    
        
        v = TTValue(23.15);
        expected = TTValue(45.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("m/s to knot", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected), true, 0.1),
                        testAssertionCount, 
                        errorCount);
        
        
        // footPerSecond => meterPerSecond
        // Expected value according to Google search: "20 foot per second to m/s"
        
        myDataspace.set(TT("inputUnit"), TT("m/s"));
        myDataspace.set(TT("outputUnit"), TT("ft/s"));    
        
        v = TTValue(6.09600);
        expected = TTValue(20.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("m/s to foot per hour", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected), true, 0.00001),
                        testAssertionCount, 
                        errorCount);
        
    }
    catch (...) {
        TTLogMessage("SpeedDataspace::test TOTAL FAILURE");
        errorCount = 1;
        testAssertionCount = 1;
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}