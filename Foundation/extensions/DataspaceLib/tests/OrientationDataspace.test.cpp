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


#include "OrientationDataspace.h"


TTErr OrientationDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;    
    
    // Create dataspace object and set to angle
    TTObjectBasePtr         myDataspace = NULL;
    TTErr err;
    err = TTObjectBaseInstantiate(TT("dataspace"), (TTObjectBasePtr*)&myDataspace, kTTValNONE);
	myDataspace->setAttributeValue(TT("dataspace"), TT("orientation"));
    
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
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("euler"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("quaternion"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(90.0));
    v.set(1, TTFloat64(45.0));
    v.set(2, TTFloat64(-45.0));
    
    expected.setSize(4);
    expected.set(0, TTFloat64(0.0));
    expected.set(1, TTFloat64(-0.5));
	expected.set(2, TTFloat64(-0.7071067811865475));
	expected.set(3, TTFloat64(0.5));
	
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("yaw-pitch-roll to quaternion", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	// angle-axis to quaternion
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("xyza"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("quaternion"));    
	
	v.setSize(4); 
    v.set(0, TTFloat64(0.0));
    v.set(1, TTFloat64(-0.5773502691896258));
	v.set(2, TTFloat64(-0.8164965809277260));	
	v.set(3, TTFloat64(120.0));

    
    expected.setSize(4);
	expected.set(0, TTFloat64(0.0));
    expected.set(1, TTFloat64(-0.5));
    expected.set(2, TTFloat64(-0.7071067811865475));
	expected.set(3, TTFloat64(0.5));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
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
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("quat"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("euler"));    
	
	v.setSize(4);
	v.set(0, TTFloat64(0.0));
    v.set(1, TTFloat64(-0.5));    
	v.set(2, TTFloat64(-0.7071067811865475));
	v.set(3, TTFloat64(0.5));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(90));
    expected.set(1, TTFloat64(45));
    expected.set(2, TTFloat64(-45));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("quaternion to yaw-pitch-roll", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	// quaternion to angle-axis
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("quat"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("axis"));    
	
	v.setSize(4);
	v.set(0, TTFloat64(0.0));
    v.set(1, TTFloat64(-0.5));
	v.set(2, TTFloat64(-0.7071067811865475));	
    v.set(3, TTFloat64(0.5));	
    
    expected.setSize(4); 
    expected.set(0, TTFloat64(0.0));
    expected.set(1, TTFloat64(-0.5773502691896258));
    expected.set(2, TTFloat64(-0.8164965809277260));
	expected.set(3, TTFloat64(120.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("quaternion to axis-angle", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	/************************************************/
    /*                                              */
    /* conversions across neutral units             */
    /*                                              */
    /************************************************/
    
	myDataspace->setAttributeValue(TT("inputUnit"), TT("euler"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("axis"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(90.0));
    v.set(1, TTFloat64(45.0));
    v.set(2, TTFloat64(-45.0));
    
    expected.setSize(4);
	expected.set(0, TTFloat64(0.0));
    expected.set(1, TTFloat64(-0.5773502691896258));
    expected.set(2, TTFloat64(-0.8164965809277260));
	expected.set(3, TTFloat64(120.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("euler to axis-angle", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	/************************************************/
    /*                                              */
    /* simple rotations to axis-angle               */
    /*                                              */
    /************************************************/
    
	myDataspace->setAttributeValue(TT("inputUnit"), TT("euler"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("axis"));    
	
	//yaw
	v.setSize(3);
    v.set(0, TTFloat64(45.0));
    v.set(1, TTFloat64(0.0));
    v.set(2, TTFloat64(0.0));
    
    expected.setSize(4);
	expected.set(0, TTFloat64(0.0));
    expected.set(1, TTFloat64(0.0));
    expected.set(2, TTFloat64(-1.0));
	expected.set(3, TTFloat64(45.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("yaw rotation to axis-angle", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount, errorCount);
	//pitch
    v.set(0, TTFloat64(0.0));
    v.set(1, TTFloat64(45.0));
    v.set(2, TTFloat64(0.0));
    
	expected.set(0, TTFloat64(1.0));
    expected.set(1, TTFloat64(0.0));
    expected.set(2, TTFloat64(0.0));
	expected.set(3, TTFloat64(45.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("pitch rotation to axis-angle", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount, errorCount);
	
	//roll
    v.set(0, TTFloat64(0.0));
    v.set(1, TTFloat64(0.0));
    v.set(2, TTFloat64(45.0));
    
	expected.set(0, TTFloat64(0.0));
    expected.set(1, TTFloat64(1.0));
    expected.set(2, TTFloat64(0.0));
	expected.set(3, TTFloat64(45.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("roll rotation to axis-angle", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount, errorCount);
	
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
