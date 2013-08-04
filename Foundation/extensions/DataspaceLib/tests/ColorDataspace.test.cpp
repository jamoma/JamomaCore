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


#include "ColorDataspace.h"


TTErr ColorDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;    
    
    // Create dataspace object and set to angle
    TTObjectBasePtr         myDataspace = NULL;
    TTErr err;
    err = TTObjectBaseInstantiate(TT("dataspace"), (TTObjectBasePtr*)&myDataspace, kTTValNONE);
	myDataspace->setAttributeValue(TT("dataspace"), TT("color"));
    
    TTValue v;
    TTValue expected;
    
    
    /************************************************/
    /*                                              */
    /* Test conversions to neutral unit             */
    /*                                              */
    /************************************************/
    
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
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("rgb to rgb", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);

    
    // cmy => rgb
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("cmy"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("rgb"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(255.));
    v.set(1, TTFloat64(127.5));
    v.set(2, TTFloat64(0.));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(0.));
    expected.set(1, TTFloat64(0.5));
    expected.set(2, TTFloat64(1.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("cmy to rgb", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
    
    
    // hsl => rgb
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("hsl"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("rgb"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(120.));
    v.set(1, TTFloat64(100.));
    v.set(2, TTFloat64(50.));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(0.));
    expected.set(1, TTFloat64(1.0));
    expected.set(2, TTFloat64(0.));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("hsl to rgb", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
    
    
    // rgb8 => rgb
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("rgb8"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("rgb"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(255.));
    v.set(1, TTFloat64(127.5));
    v.set(2, TTFloat64(0.));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(1.));
    expected.set(1, TTFloat64(0.5));
    expected.set(2, TTFloat64(0.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("rgb8 to rgb", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
    
    
    // hsv => rgb
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("hsv"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("rgb"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(120.));
    v.set(1, TTFloat64(100.));
    v.set(2, TTFloat64(100.));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(0.));
    expected.set(1, TTFloat64(1.0));
    expected.set(2, TTFloat64(0.));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
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
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("rgb"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("cmy"));    
	
    v.setSize(3);
    v.set(0, TTFloat64(0.));
    v.set(1, TTFloat64(0.5));
    v.set(2, TTFloat64(1.));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(255.));
    expected.set(1, TTFloat64(127.5));
    expected.set(2, TTFloat64(0.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("rgb to cmy", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
    
    
    // rgb => hsl
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("rgb"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("hsl"));    

    v.setSize(3);
    v.set(0, TTFloat64(0.));
    v.set(1, TTFloat64(1.));
    v.set(2, TTFloat64(0.));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(120.));
    expected.set(1, TTFloat64(100.0));
    expected.set(2, TTFloat64(50.));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("rgb to hsl", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
    
    
    // rgb => rgb8
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("rgb"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("rgb8"));    

    v.setSize(3);
    v.set(0, TTFloat64(1.));
    v.set(1, TTFloat64(0.5));
    v.set(2, TTFloat64(0.));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(255.));
    expected.set(1, TTFloat64(127.5));
    expected.set(2, TTFloat64(0.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("rgb to rgb8", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
    
    
    // rgb => hsv
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("rgb"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("hsv"));    
	
    v.setSize(3);
    v.set(0, TTFloat64(0.));
    v.set(1, TTFloat64(1.));
    v.set(2, TTFloat64(0.));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(120.));
    expected.set(1, TTFloat64(100.0));
    expected.set(2, TTFloat64(100.));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("rgb to hsv", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
    
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
