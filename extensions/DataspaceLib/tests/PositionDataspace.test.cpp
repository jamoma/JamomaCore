/* 
 * Jamoma DataspaceLib: PositionDataspace unit test
 * Copyright © 2011 Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "PositionDataspace.h"


TTErr PositionDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;    
    
    // Create dataspace object and set to angle
    TTObjectPtr         myDataspace;
    TTErr err;
    err = TTObjectInstantiate(TT("dataspace"), (TTObjectPtr*)&myDataspace, kTTValNONE);
	myDataspace->setAttributeValue(TT("dataspace"), TT("position"));
    
    TTValue v;
    TTValue expected;
    
    
    /************************************************/
    /*                                              */
    /* Test conversions to neutral unit             */
    /*                                              */
    /************************************************/
    
    /* The following can be used as a template for writing tests:
    
    // rgb => rgb
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("rgb"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("rgb"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(124.2));
    v.set(1, TTFloat64(162.9));
    v.set(2, TTFloat64(13.163));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(124.2));
    expected.set(1, TTFloat64(162.9));
    expected.set(2, TTFloat64(13.163));
    
    myDataspace->sendMessage(TT("convert"), v);
    
    TTTestAssertion("rgb to rgb", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
    
     */
    
    /************************************************/
    /*                                              */
    /* Test conversions from neutral unit           */
    /*                                              */
    /************************************************/
    
    
    
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
