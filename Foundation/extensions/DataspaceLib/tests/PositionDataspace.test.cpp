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


#include "PositionDataspace.h"

TTErr PositionDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;    
    
    // Create dataspace object and set to angle
    TTObjectBasePtr         myDataspace = NULL;
    TTErr err;
    err = TTObjectBaseInstantiate(TT("dataspace"), (TTObjectBasePtr*)&myDataspace, kTTValNONE);
	myDataspace->setAttributeValue(TT("dataspace"), TT("position"));
    
    TTValue v;
    TTValue expected;
    
    
    /************************************************/
    /*                                              */
    /* Test conversions to neutral unit             */
    /*                                              */
    /************************************************/
    
	
	// xyz => xyz
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("xyz"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("xyz"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(1.0));
    v.set(1, TTFloat64(2.0));
    v.set(2, TTFloat64(3.0));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(1.0));
    expected.set(1, TTFloat64(2.0));
    expected.set(2, TTFloat64(3.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("xyz to xyz", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	
    // xy => xyz
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("xy"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("xyz"));    
	
	v.setSize(2);
    v.set(0, TTFloat64(1.0));
    v.set(1, TTFloat64(-1.0));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(1.0));
    expected.set(1, TTFloat64(-1.0));
    expected.set(2, TTFloat64(0.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("xy to xyz", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
    
    // aed => xyz
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("aed"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("xyz"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(-90.0));
    v.set(1, TTFloat64(0.0));
    v.set(2, TTFloat64(2.0));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(-2.0));
    expected.set(1, TTFloat64(0.0));
    expected.set(2, TTFloat64(0.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("aed to xyz", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	// openGL => xyz
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("openGL"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("xyz"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(1.0));
    v.set(1, TTFloat64(3.0));
    v.set(2, TTFloat64(2.0));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(1.0));
    expected.set(1, TTFloat64(-2.0));
    expected.set(2, TTFloat64(3.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("openGL to xyz", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);

	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("polar"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("xyz"));    
	
	v.setSize(2);
    v.set(0, TTFloat64(-45.0));
    v.set(1, TTFloat64(2.0));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(-sqrt(2.0)));
    expected.set(1, TTFloat64(sqrt(2.0)));
    expected.set(2, TTFloat64(0.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("polar to xyz", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);

	myDataspace->setAttributeValue(TT("inputUnit"), TT("daz"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("xyz"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(2.0));
    v.set(1, TTFloat64(45.0));
    v.set(2, TTFloat64(2.0));
    
    expected.setSize(3);
    expected.set(0, TTFloat64(sqrt(2.0)));
    expected.set(1, TTFloat64(sqrt(2.0)));
    expected.set(2, TTFloat64(2.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
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
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("xyz"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("xy"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(1.0));
    v.set(1, TTFloat64(-1.0));
	v.set(2, TTFloat64(0.0));

    expected.setSize(2);
    expected.set(0, TTFloat64(1.0));
    expected.set(1, TTFloat64(-1.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("xyz to xy", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);	
    
    // xyz => aed
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("xyz"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("aed"));    
	
	expected.setSize(3);
    expected.set(0, TTFloat64(-90.0));
    expected.set(1, TTFloat64(0.0));
    expected.set(2, TTFloat64(2.0));
    
    v.setSize(3);
    v.set(0, TTFloat64(-2.0));
    v.set(1, TTFloat64(0.0));
    v.set(2, TTFloat64(0.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("xyz to aed", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	// xyz => openGL
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("xyz"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("openGL"));    
	
	v.setSize(3);
    v.set(0, TTFloat64(1.0));
    v.set(1, TTFloat64(-2.0));
    v.set(2, TTFloat64(3.0));
	
	expected.setSize(3);
    expected.set(0, TTFloat64(1.0));
    expected.set(1, TTFloat64(3.0));
    expected.set(2, TTFloat64(2.0));
        
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("xyz to openGL", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("xyz"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("polar"));    
    
    v.setSize(3);
    v.set(0, TTFloat64(-sqrt(2.0)));
    v.set(1, TTFloat64(sqrt(2.0)));
    v.set(2, TTFloat64(0.0));

	expected.setSize(2);
    expected.set(0, TTFloat64(-45.0));
    expected.set(1, TTFloat64(2.0));
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
	
    TTTestAssertion("xyz to polar", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);

	// xyz => cylindric
	
	myDataspace->setAttributeValue(TT("inputUnit"), TT("xyz"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("daz"));    
	
    v.setSize(3);
    v.set(0, TTFloat64(sqrt(2.0)));
    v.set(1, TTFloat64(sqrt(2.0)));
    v.set(2, TTFloat64(2.0));

	expected.setSize(3);
    expected.set(0, TTFloat64(2.0));
    expected.set(1, TTFloat64(45.0));
    expected.set(2, TTFloat64(2.0));
	
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("xyz to cylindrical", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
	
	/************************************************/
    /*                                              */
    /* Tests across different units					*/
    /*                                              */
    /************************************************/
	
    myDataspace->setAttributeValue(TT("inputUnit"), TT("daz"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("xy"));    
	
    v.setSize(3);
    v.set(0, TTFloat64(2.0));
    v.set(1, TTFloat64(45.0));
    v.set(2, TTFloat64(10.0));
	
	expected.setSize(2);
    expected.set(0, TTFloat64(sqrt(2.0)));
    expected.set(1, TTFloat64(sqrt(2.0)));

	
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("cylindrical to xy", 
					TTTestFloat64ArrayEquivalence(v, expected),
					testAssertionCount,
					errorCount);
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
