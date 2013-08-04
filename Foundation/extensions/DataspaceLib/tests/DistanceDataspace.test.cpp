/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Unit tests for the #DistanceDataspace.
 *
 * @authors Trond Lossius, Tim Place, Nils Peters, ...
 *
 * @copyright Copyright © 2011 Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "DistanceDataspace.h"

TTErr DistanceDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    // Create dataspace object and set to temperature
    TTObjectBasePtr         myDataspace = NULL;
    TTErr err;
    err = TTObjectBaseInstantiate(TT("dataspace"), (TTObjectBasePtr*)&myDataspace, kTTValNONE);
	myDataspace->setAttributeValue(TT("dataspace"), TT("distance"));
    
    TTValue v;
    TTValue expected;
    
    
    /************************************************/
    /*                                              */
    /* Test conversions to neutral unit             */
    /*                                              */
    /************************************************/
    
    
    // meter => meters
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("meters"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("meters"));    
    
    v = TTValue(256.);
    expected = TTValue(256.);
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("meters to meters", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    
    // cm => meters
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("cm"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("meters"));
    
    v = TTValue(123.4);
    expected = TTValue(1.234);
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("cm to meters", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    // inches => meters
    // Expected value according to Google search: "15 inch to meter"
    // The Google result hasn't much resolution, but is sufficient to indicate that we're OK
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("inches"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("meter"));    
    
    v = TTValue(15.);
    expected = TTValue(0.381);
    
    myDataspace->sendMessage(TT("convert"), v, v);    
    
    TTTestAssertion("inch to meters", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected), true, 0.001),
					testAssertionCount, 
					errorCount);
    

    // feet => meters
    // Expected value according to Google search: "6 feet to meter"
    // The Google result hasn't much resolution, but is sufficient to indicate that we're OK
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("feet"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("meters"));    
    
    v = TTValue(6.);
    expected = TTValue(1.8288);
    
    myDataspace->sendMessage(TT("convert"), v, v);    
    
    TTTestAssertion("inches to meters", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected), true, 0.001),
					testAssertionCount, 
					errorCount);
    
    /************************************************/
    /*                                              */
    /* Test conversions from neutral unit           */
    /*                                              */
    /************************************************/
    
    // meters => cm
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("meters"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("cm"));
    
    v = TTValue(1.234);
    expected = TTValue(123.4);
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("meters to cm", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    // meters => inches
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("meters"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("inches"));    
    
    v = TTValue(0.381);
    expected = TTValue(15.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);    
    
    TTTestAssertion("meters to inches", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected), true, 0.001),
					testAssertionCount, 
					errorCount);
   
    // meters => feet
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("meters"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("feet"));    
    
    v = TTValue(1.8288);
    expected = TTValue(6.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);    
    
    TTTestAssertion("meters to feet", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected), true, 0.001),
					testAssertionCount, 
					errorCount);
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
