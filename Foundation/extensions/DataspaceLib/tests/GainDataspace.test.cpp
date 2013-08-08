/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Unit tests for the #GainDataspace.
 *
 * @authors Trond Lossius, Tim Place, Nils Peters, ...
 *
 * @copyright Copyright © 2011 Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "GainDataspace.h"

TTErr GainDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    // Create dataspace object and set to temperature
    TTObjectBasePtr         myDataspace = NULL;
    TTErr err;
    err = TTObjectBaseInstantiate(TT("dataspace"), (TTObjectBasePtr*)&myDataspace, 0);
	myDataspace->setAttributeValue(TT("dataspace"), TT("gain"));
    
    TTValue v;
    TTValue expected;
    
    
    /************************************************/
    /*                                              */
    /* Test conversions to neutral unit             */
    /*                                              */
    /************************************************/
    
    
    // Linear => Linear
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("linear"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("linear"));    
    
    v = TTValue(1.23);
    expected = TTValue(1.23);
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("linear to linear", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    
    // dB => Linear
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("dB"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("linear"));
    
    v = TTValue(0.);
    expected = TTValue(1.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("0 dB to linear", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    // midi => Linear
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("midi"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("linear"));    
    
    v = TTValue(100.0);
    expected = TTValue(1.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);    
    
    TTTestAssertion("100 MIDI to linear", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    
    /************************************************/
    /*                                              */
    /* Test conversions from neutral unit           */
    /*                                              */
    /************************************************/
    
    // linear => dB
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("linear"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("dB"));
    
    v = TTValue(1.0);
    expected = TTValue(0.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);
    
    TTTestAssertion("1.0 linear to dB", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    // linear => midi
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("linear"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("midi"));    
    
    v = TTValue(1.0);
    expected = TTValue(100.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);    
    
    TTTestAssertion("1.0 linear to MIDI", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);

    /************************************************/
    /*                                              */
    /* Some additional important midi relationships */
    /*                                              */
    /************************************************/
    
    // 127 midi => 10 dB
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("midi"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("dB"));    
    
    v = TTValue(127.0);
    expected = TTValue(10.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);    
    
    TTTestAssertion("127 MIDI to 10 dB", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    // 10 dB => 127 midi
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("dB"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("midi"));    
    
    v = TTValue(10.0);
    expected = TTValue(127.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);    
    
    TTTestAssertion("10 dB to 127 MIDI", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    // 0 midi => 0 linear
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("midi"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("linear"));    
    
    v = TTValue(0.0);
    expected = TTValue(0.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);    
    
    TTTestAssertion("0 MIDI to 0 linear", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);

    // 0 linear => 0 midi
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("linear"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("midi"));    
    
    v = TTValue(0.0);
    expected = TTValue(0.0);
    
    myDataspace->sendMessage(TT("convert"), v, v);    
    
    TTTestAssertion("0 linear to 0 midi", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
