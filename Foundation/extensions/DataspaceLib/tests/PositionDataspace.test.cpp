/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Unit tests for the #PositionDataspace.
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

#include "PositionDataspace.h"


TTErr PositionDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;    
    
    // Create dataspace object and set to angle
    try {
        
        TTObject myDataspace("dataspace");
        myDataspace.set(TT("dataspace"), TT("position"));
        
        TTValue v;
        TTValue expected;
        
        
        /************************************************/
        /*                                              */
        /* Test conversions to neutral unit             */
        /*                                              */
        /************************************************/
        
        
        // xyz => xyz
        
        myDataspace.set(TT("inputUnit"), TT("xyz"));
        myDataspace.set(TT("outputUnit"), TT("xyz"));    
        
        v.resize(3);
        v[0] = TTFloat64(1.0);
        v[1] = TTFloat64(2.0);
        v[2] = TTFloat64(3.0);
        
        expected.resize(3);
        expected[0] = TTFloat64(1.0);
        expected[1] = TTFloat64(2.0);
        expected[2] = TTFloat64(3.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("xyz to xyz", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        // xy => xyz
        
        myDataspace.set(TT("inputUnit"), TT("xy"));
        myDataspace.set(TT("outputUnit"), TT("xyz"));    
        
        v.resize(2);
        v[0] = TTFloat64(1.0);
        v[1] = TTFloat64(-1.0);
        
        expected.resize(3);
        expected[0] = TTFloat64(1.0);
        expected[1] = TTFloat64(-1.0);
        expected[2] = TTFloat64(0.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("xy to xyz", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        // aed => xyz
        
        myDataspace.set(TT("inputUnit"), TT("aed"));
        myDataspace.set(TT("outputUnit"), TT("xyz"));    
        
        v.resize(3);
        v[0] = TTFloat64(-90.0);
        v[1] = TTFloat64(0.0);
        v[2] = TTFloat64(2.0);
        
        expected.resize(3);
        expected[0] = TTFloat64(-2.0);
        expected[1] = TTFloat64(0.0);
        expected[2] = TTFloat64(0.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("aed to xyz", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        // openGL => xyz
        
        myDataspace.set(TT("inputUnit"), TT("openGL"));
        myDataspace.set(TT("outputUnit"), TT("xyz"));    
        
        v.resize(3);
        v[0] = TTFloat64(1.0);
        v[1] = TTFloat64(3.0);
        v[2] = TTFloat64(2.0);
        
        expected.resize(3);
        expected[0] = TTFloat64(1.0);
        expected[1] = TTFloat64(-2.0);
        expected[2] = TTFloat64(3.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("openGL to xyz", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);

        
        myDataspace.set(TT("inputUnit"), TT("polar"));
        myDataspace.set(TT("outputUnit"), TT("xyz"));    
        
        v.resize(2);
        v[0] = TTFloat64(-45.0);
        v[1] = TTFloat64(2.0);
        
        expected.resize(3);
        expected[0] = TTFloat64(-sqrt(2.0));
        expected[1] = TTFloat64(sqrt(2.0));
        expected[2] = TTFloat64(0.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("polar to xyz", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);

        myDataspace.set(TT("inputUnit"), TT("daz"));
        myDataspace.set(TT("outputUnit"), TT("xyz"));    
        
        v.resize(3);
        v[0] = TTFloat64(2.0);
        v[1] = TTFloat64(45.0);
        v[2] = TTFloat64(2.0);
        
        expected.resize(3);
        expected[0] = TTFloat64(sqrt(2.0));
        expected[1] = TTFloat64(sqrt(2.0));
        expected[2] = TTFloat64(2.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("cylindrical to xyz", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        /************************************************/
        /*                                              */
        /* Test conversions from neutral unit           */
        /*                                              */
        /************************************************/
        

        // xyz => xy
        
        myDataspace.set(TT("inputUnit"), TT("xyz"));
        myDataspace.set(TT("outputUnit"), TT("xy"));    
        
        v.resize(3);
        v[0] = TTFloat64(1.0);
        v[1] = TTFloat64(-1.0);
        v[2] = TTFloat64(0.0);

        expected.resize(2);
        expected[0] = TTFloat64(1.0);
        expected[1] = TTFloat64(-1.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("xyz to xy", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);	
        
        // xyz => aed
        
        myDataspace.set(TT("inputUnit"), TT("xyz"));
        myDataspace.set(TT("outputUnit"), TT("aed"));    
        
        expected.resize(3);
        expected[0] = TTFloat64(-90.0);
        expected[1] = TTFloat64(0.0);
        expected[2] = TTFloat64(2.0);
        
        v.resize(3);
        v[0] = TTFloat64(-2.0);
        v[1] = TTFloat64(0.0);
        v[2] = TTFloat64(0.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("xyz to aed", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        // xyz => openGL
        
        myDataspace.set(TT("inputUnit"), TT("xyz"));
        myDataspace.set(TT("outputUnit"), TT("openGL"));    
        
        v.resize(3);
        v[0] = TTFloat64(1.0);
        v[1] = TTFloat64(-2.0);
        v[2] = TTFloat64(3.0);
        
        expected.resize(3);
        expected[0] = TTFloat64(1.0);
        expected[1] = TTFloat64(3.0);
        expected[2] = TTFloat64(2.0);
            
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("xyz to openGL", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        myDataspace.set(TT("inputUnit"), TT("xyz"));
        myDataspace.set(TT("outputUnit"), TT("polar"));    
        
        v.resize(3);
        v[0] = TTFloat64(-sqrt(2.0));
        v[1] = TTFloat64(sqrt(2.0));
        v[2] = TTFloat64(0.0);

        expected.resize(2);
        expected[0] = TTFloat64(-45.0);
        expected[1] = TTFloat64(2.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        
        TTTestAssertion("xyz to polar", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);

        // xyz => cylindric
        
        myDataspace.set(TT("inputUnit"), TT("xyz"));
        myDataspace.set(TT("outputUnit"), TT("daz"));    
        
        v.resize(3);
        v[0] = TTFloat64(sqrt(2.0));
        v[1] = TTFloat64(sqrt(2.0));
        v[2] = TTFloat64(2.0);

        expected.resize(3);
        expected[0] = TTFloat64(2.0);
        expected[1] = TTFloat64(45.0);
        expected[2] = TTFloat64(2.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("xyz to cylindrical", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        /************************************************/
        /*                                              */
        /* Tests across different units					*/
        /*                                              */
        /************************************************/
        
        myDataspace.set(TT("inputUnit"), TT("daz"));
        myDataspace.set(TT("outputUnit"), TT("xy"));    
        
        v.resize(3);
        v[0] = TTFloat64(2.0);
        v[1] = TTFloat64(45.0);
        v[2] = TTFloat64(10.0);
        
        expected.resize(2);
        expected[0] = TTFloat64(sqrt(2.0));
        expected[1] = TTFloat64(sqrt(2.0));

        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("cylindrical to xy", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
    
    }
    catch (...) {
        TTLogMessage("PositionDataspace::test TOTAL FAILURE");
        errorCount = 1;
        testAssertionCount = 1;
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
