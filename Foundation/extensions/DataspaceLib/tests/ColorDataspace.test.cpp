/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Unit tests for the #ColorDataspace.
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

#include "ColorDataspace.h"


TTErr ColorDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;    
    
    // Create dataspace object and set to color
	try {
        
        TTObject myDataspace("dataspace");
        
        myDataspace.set(TT("dataspace"), TT("color"));
        
        TTValue v;
        TTValue expected;
        
        
        /************************************************/
        /*                                              */
        /* Test conversions to neutral unit             */
        /*                                              */
        /************************************************/
        
        // rgb => rgb
        
        myDataspace.set(TT("inputUnit"), TT("rgb"));
        myDataspace.set(TT("outputUnit"), TT("rgb"));    
        
        v.resize(3);
        v[0] = TTFloat64(124.2);
        v[1] = TTFloat64(162.9);
        v[2] = TTFloat64(13.163);
        
        expected.resize(3);
        expected[0] = TTFloat64(124.2);
        expected[1] = TTFloat64(162.9);
        expected[2] = TTFloat64(13.163);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("rgb to rgb", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);

        
        // cmy => rgb
        
        myDataspace.set(TT("inputUnit"), TT("cmy"));
        myDataspace.set(TT("outputUnit"), TT("rgb"));    
        
        v.resize(3);
        v[0] = TTFloat64(255.);
        v[1] = TTFloat64(127.5);
        v[2] = TTFloat64(0.);
        
        expected.resize(3);
        expected[0] = TTFloat64(0.);
        expected[1] = TTFloat64(0.5);
        expected[2] = TTFloat64(1.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("cmy to rgb", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        // hsl => rgb
        
        myDataspace.set(TT("inputUnit"), TT("hsl"));
        myDataspace.set(TT("outputUnit"), TT("rgb"));    
        
        v.resize(3);
        v[0] = TTFloat64(120.);
        v[1] = TTFloat64(100.);
        v[2] = TTFloat64(50.);
        
        expected.resize(3);
        expected[0] = TTFloat64(0.);
        expected[1] = TTFloat64(1.0);
        expected[2] = TTFloat64(0.);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("hsl to rgb", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        // rgb8 => rgb
        
        myDataspace.set(TT("inputUnit"), TT("rgb8"));
        myDataspace.set(TT("outputUnit"), TT("rgb"));    
        
        v.resize(3);
        v[0] = TTFloat64(255.);
        v[1] = TTFloat64(127.5);
        v[2] = TTFloat64(0.);
        
        expected.resize(3);
        expected[0] = TTFloat64(1.);
        expected[1] = TTFloat64(0.5);
        expected[2] = TTFloat64(0.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("rgb8 to rgb", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        // hsv => rgb
        
        myDataspace.set(TT("inputUnit"), TT("hsv"));
        myDataspace.set(TT("outputUnit"), TT("rgb"));    
        
        v.resize(3);
        v[0] = TTFloat64(120.);
        v[1] =TTFloat64(100.);
        v[2] = TTFloat64(100.);
        
        expected.resize(3);
        expected[0] = TTFloat64(0.);
        expected[1] = TTFloat64(1.0);
        expected[2] = TTFloat64(0.);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("hsv to rgb", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        
        /************************************************/
        /*                                              */
        /* Test conversions from neutral unit           */
        /*                                              */
        /************************************************/
        
        
        // rgb => cmy
        
        myDataspace.set(TT("inputUnit"), TT("rgb"));
        myDataspace.set(TT("outputUnit"), TT("cmy"));    
        
        v.resize(3);
        v[0] = TTFloat64(0.);
        v[1] = TTFloat64(0.5);
        v[2] = TTFloat64(1.);
        
        expected.resize(3);
        expected[0] = TTFloat64(255.);
        expected[1] = TTFloat64(127.5);
        expected[2] = TTFloat64(0.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("rgb to cmy", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        // rgb => hsl
        
        myDataspace.set(TT("inputUnit"), TT("rgb"));
        myDataspace.set(TT("outputUnit"), TT("hsl"));    

        v.resize(3);
        v[0] = TTFloat64(0.);
        v[1] = TTFloat64(1.);
        v[2] = TTFloat64(0.);
        
        expected.resize(3);
        expected[0] = TTFloat64(120.);
        expected[1] = TTFloat64(100.0);
        expected[2] = TTFloat64(50.);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("rgb to hsl", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        // rgb => rgb8
        
        myDataspace.set(TT("inputUnit"), TT("rgb"));
        myDataspace.set(TT("outputUnit"), TT("rgb8"));    

        v.resize(3);
        v[0] = TTFloat64(1.);
        v[1] = TTFloat64(0.5);
        v[2] = TTFloat64(0.);
        
        expected.resize(3);
        expected[0] = TTFloat64(255.);
        expected[1] = TTFloat64(127.5);
        expected[2] = TTFloat64(0.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("rgb to rgb8", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        // rgb => hsv
        
        myDataspace.set(TT("inputUnit"), TT("rgb"));
        myDataspace.set(TT("outputUnit"), TT("hsv"));    
        
        v.resize(3);
        v[0] = TTFloat64(0.);
        v[1] = TTFloat64(1.);
        v[2] = TTFloat64(0.);
        
        expected.resize(3);
        expected[0] = TTFloat64(120.);
        expected[1] = TTFloat64(100.0);
        expected[2] = TTFloat64(100.);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("rgb to hsv", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
    
    }
    catch (...) {
        TTLogMessage("ColorDataspace::test TOTAL FAILURE");
        errorCount = 1;
        testAssertionCount = 1;
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
