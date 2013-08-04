/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Unit tests for the #AngleDataspace.
 *
 * @authors Trond Lossius, Tim Place, Nils Peters, ...
 *
 * @copyright Copyright © 2011 Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "AngleDataspace.h"


TTErr AngleDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    // Create dataspace object and set to angle
    TTObjectBasePtr         myDataspace = NULL;
    TTErr err;
    err = TTObjectBaseInstantiate(TT("dataspace"), (TTObjectBasePtr*)&myDataspace, kTTValNONE);
	myDataspace->setAttributeValue(TT("dataspace"), TT("angle"));
    
    TTValue v;
    TTValue expected;
    
    
    /************************************************/
    /*                                              */
    /* Test conversions to neutral unit             */
    /*                                              */
    /************************************************/
    
    
    // Radian => Radian
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("radian"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("radian"));    
    
    v = TTValue(kTTPi);
    expected = TTValue(kTTPi);
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("Radian to Radian", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    
    // Degree => Radian
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("degree"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("radian"));
    
    v = TTValue(180.);
    expected = TTValue(kTTPi);
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("Degree to Radian", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    /************************************************/
    /*                                              */
    /* Test conversions from neutral unit           */
    /*                                              */
    /************************************************/
    
    // Radian => Degree
    // Expected value according to Google search: "0 Celsius to Kelvin"
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("radian"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("degree"));
    
    v = TTValue(kTTPi);
    expected = TTValue(180.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("Radian to Degree", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
