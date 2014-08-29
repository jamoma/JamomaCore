/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Unit tests for the #OrientationDataspace.
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

#include "OrientationDataspace.h"


TTErr OrientationDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;    
    
    // Create dataspace object and set to angle
    try {
        
        TTObject myDataspace("dataspace");
        myDataspace.set(TT("dataspace"), TT("orientation"));
        
        TTValue v;
        TTValue expected;
        
        // for comparison, test values were computed with the spincalc toolbox for matlab:
        // http://www.mathworks.com/matlabcentral/fileexchange/20696-function-to-convert-between-dcm-euler-angles-quaternions-and-euler-vectors
        
        /************************************************/
        /*                                              */
        /* Test conversions to neutral unit             */
        /*                                              */
        /************************************************/
        
        
        
        // yaw-pitch-roll to quaternion
        
        myDataspace.set(TT("inputUnit"), TT("euler"));
        myDataspace.set(TT("outputUnit"), TT("quaternion"));    
        
        v.resize(3);
        v[0] = TTFloat64(90.0);
        v[1] = TTFloat64(45.0);
        v[2] = TTFloat64(-45.0);
        
        expected.resize(4);
        expected[0] = TTFloat64(0.0);
        expected[1] = TTFloat64(-0.5);
        expected[2] = TTFloat64(-0.7071067811865475);
        expected[3] = TTFloat64(0.5);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("yaw-pitch-roll to quaternion", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        // angle-axis to quaternion
        
        myDataspace.set(TT("inputUnit"), TT("xyza"));
        myDataspace.set(TT("outputUnit"), TT("quaternion"));    
        
        v.resize(4); 
        v[0] = TTFloat64(0.0);
        v[1] = TTFloat64(-0.5773502691896258);
        v[2] = TTFloat64(-0.8164965809277260);
        v[3] = TTFloat64(120.0);

        
        expected.resize(4);
        expected[0] = TTFloat64(0.0);
        expected[1] = TTFloat64(-0.5);
        expected[2] = TTFloat64(-0.7071067811865475);
        expected[3] = TTFloat64(0.5);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("axis-angle to quaternion", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        
        /************************************************/
        /*                                              */
        /* Test conversions from neutral unit           */
        /*                                              */
        /************************************************/
        
        // quaternion to yaw-pitch-roll
        
        myDataspace.set(TT("inputUnit"), TT("quat"));
        myDataspace.set(TT("outputUnit"), TT("euler"));    
        
        v.resize(4);
        v[0] = TTFloat64(0.0);
        v[1] = TTFloat64(-0.5);   
        v[2] = TTFloat64(-0.7071067811865475);
        v[3] = TTFloat64(0.5);
        
        expected.resize(3);
        expected[0] = TTFloat64(90);
        expected[1] = TTFloat64(45);
        expected[2] = TTFloat64(-45);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("quaternion to yaw-pitch-roll", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        // quaternion to angle-axis
        
        myDataspace.set(TT("inputUnit"), TT("quat"));
        myDataspace.set(TT("outputUnit"), TT("axis"));    
        
        v.resize(4);
        v[0] = TTFloat64(0.0);
        v[1] = TTFloat64(-0.5);
        v[2] = TTFloat64(-0.7071067811865475);
        v[3] = TTFloat64(0.5);
        
        expected.resize(4); 
        expected[0] = TTFloat64(0.0);
        expected[1] = TTFloat64(-0.5773502691896258);
        expected[2] = TTFloat64(-0.8164965809277260);
        expected[3] = TTFloat64(120.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("quaternion to axis-angle", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        /************************************************/
        /*                                              */
        /* conversions across neutral units             */
        /*                                              */
        /************************************************/
        
        myDataspace.set(TT("inputUnit"), TT("euler"));
        myDataspace.set(TT("outputUnit"), TT("axis"));    
        
        v.resize(3);
        v[0] = TTFloat64(90.0);
        v[1] = TTFloat64(45.0);
        v[2] = TTFloat64(-45.0);
        
        expected.resize(4);
        expected[0] = TTFloat64(0.0);
        expected[1] = TTFloat64(-0.5773502691896258);
        expected[2] = TTFloat64(-0.8164965809277260);
        expected[3] = TTFloat64(120.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("euler to axis-angle", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount,
                        errorCount);
        
        /************************************************/
        /*                                              */
        /* simple rotations to axis-angle               */
        /*                                              */
        /************************************************/
        
        myDataspace.set(TT("inputUnit"), TT("euler"));
        myDataspace.set(TT("outputUnit"), TT("axis"));    
        
        //yaw
        v.resize(3);
        v[0] = TTFloat64(45.0);
        v[1] = TTFloat64(0.0);
        v[2] = TTFloat64(0.0);
        
        expected.resize(4);
        expected[0] = TTFloat64(0.0);
        expected[1] = TTFloat64(0.0);
        expected[2] = TTFloat64(-1.0);
        expected[3] = TTFloat64(45.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("yaw rotation to axis-angle", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount, errorCount);
        //pitch
        v[0] = TTFloat64(0.0);
        v[1] = TTFloat64(45.0);
        v[2] = TTFloat64(0.0);
        
        expected[0] = TTFloat64(1.0);
        expected[1] = TTFloat64(0.0);
        expected[2] = TTFloat64(0.0);
        expected[3] = TTFloat64(45.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("pitch rotation to axis-angle", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount, errorCount);
        
        //roll
        v[0] = TTFloat64(0.0);
        v[1] = TTFloat64(0.0);
        v[2] = TTFloat64(45.0);
        
        expected[0] = TTFloat64(0.0);
        expected[1] = TTFloat64(1.0);
        expected[2] = TTFloat64(0.0);
        expected[3] = TTFloat64(45.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("roll rotation to axis-angle", 
                        TTTestFloat64ArrayEquivalence(v, expected),
                        testAssertionCount, errorCount);
        
    }
    catch (...) {
        TTLogMessage("OrientationDataspace::test TOTAL FAILURE");
        errorCount = 1;
        testAssertionCount = 1;
    }

    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
