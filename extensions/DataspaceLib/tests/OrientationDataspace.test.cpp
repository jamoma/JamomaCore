/* 
 * Jamoma DataspaceLib: OrientationDataspace unit test
 * Copyright © 2011 Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "OrientationDataspace.h"


TTErr OrientationDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;    
    
    // Create dataspace object and set to angle
    TTObjectPtr         myDataspace;
    TTErr err;
    err = TTObjectInstantiate(TT("dataspace"), (TTObjectPtr*)&myDataspace, kTTValNONE);
	myDataspace->setAttributeValue(TT("dataspace"), TT("orientation"));
    
    TTValue v;
    TTValue expected;
    
    
    /************************************************/
    /*                                              */
    /* Test conversions to neutral unit             */
    /*                                              */
    /************************************************/
    
    
    
    // yaw-pitch-roll to quaternion
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("euler"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("quaternion"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(90));
    v.set(1, TTFloat64(45));
    v.set(2, TTFloat64(20));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(124.2));
    expected.set(1, TTFloat64(162.9));
    expected.set(2, TTFloat64(13.163));
    
    myDataspace->sendMessage(TT("convert"), v);
    
    TTTestAssertion("yaw-pitch-roll to quaternion", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	// angle-axis to quaternion
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("axis"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("quaternion"));    
	
	v.setSize(4);
    v.set(0, TTFloat64(90));
    v.set(1, TTFloat64(45));
    v.set(2, TTFloat64(20));
	v.set(3, TTFloat64(20));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(124.2));
    expected.set(1, TTFloat64(162.9));
    expected.set(2, TTFloat64(13.163));
    
    myDataspace->sendMessage(TT("convert"), v);
    
    TTTestAssertion("yaw-pitch-roll to quaternion", 
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
	
	v.setSize(3);
    v.set(0, TTFloat64(90));
    v.set(1, TTFloat64(45));
    v.set(2, TTFloat64(20));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(90));
    expected.set(1, TTFloat64(45));
    expected.set(2, TTFloat64(20));
    
    myDataspace->sendMessage(TT("convert"), v);
    
    TTTestAssertion("quaternion to yaw-pitch-roll", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	// quaternion to angle-axis
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("quat"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("axis"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(90));
    v.set(1, TTFloat64(45));
    v.set(2, TTFloat64(20));	
    
    expected.setSize(4);
    expected.set(0, TTFloat64(124.2));
    expected.set(1, TTFloat64(162.9));
    expected.set(2, TTFloat64(13.163));
	expected.set(3, TTFloat64(13.163));
    
    myDataspace->sendMessage(TT("convert"), v);
    
    TTTestAssertion("quaternion to yaw-pitch-roll", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
    
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
