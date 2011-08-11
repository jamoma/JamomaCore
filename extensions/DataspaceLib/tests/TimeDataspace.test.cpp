/* 
 * Jamoma DataspaceLib: TimeDataspace unit tests
 * Copyright © 2011 Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TimeDataspace.h"

TTErr TimeDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    // Create dataspace object and set to time
    TTObjectPtr         myDataspace;
    TTErr err;
    err = TTObjectInstantiate(TT("dataspace"), (TTObjectPtr*)&myDataspace, kTTValNONE);
	myDataspace->setAttributeValue(TT("dataspace"), TT("time"));
    
    TTValue v;
    TTValue expected;
    
    
    /************************************************/
    /*                                              */
    /* Test conversions to neutral unit             */
    /*                                              */
    /************************************************/
    
    
    // Second to second
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("second"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("second"));    
    
    v = TTValue(256.);
    expected = TTValue(256.);
    
    myDataspace->sendMessage(TT("convert"), v);
    
    TTTestAssertion("Second to second", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    
    // Millisecond => second
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("millisecond"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("second"));
    
    v = TTValue(1234.5);
    expected = TTValue(1.2345);
    
    myDataspace->sendMessage(TT("convert"), v);
    
    TTTestAssertion("Millisecond to second", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    // Sample => second
    // We need to find the sample rate
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("sample"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("second"));    
    
    TTValue globalSampleRate;
    ttEnvironment->getAttributeValue(TT("sr"), globalSampleRate);

    v = TTValue(1.23*TTFloat64(globalSampleRate));
    expected = TTValue(1.23);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("Sample to second", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);

    
    // Rate (Hz) => second
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("Hz"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("second"));    
    
    v = TTValue(4.);
    expected = TTValue(0.25);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("Frequency (Hz) to second", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    

    // Beats per minute => second
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("bpm"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("second"));    
    
    v = TTValue(120.);
    expected = TTValue(0.5);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("Beats per minute to second", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);

    // MIDI => second (2 tests at MIDI notes 48 and 60)
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("midi"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("second"));    
    
    v = TTValue(57.);
    expected = TTValue(1./220.);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("MIDI note 57 to second", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);

    v = TTValue(69.);
    expected = TTValue(1./440.);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("MIDI note 69 to second", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    /************************************************/
    /*                                              */
    /* Test conversions from neutral unit           */
    /*                                              */
    /************************************************/
    
    // Second => Millisecond
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("second"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("millisecond"));
    
    v = TTValue(1.2345);
    expected = TTValue(1234.5);
    
    myDataspace->sendMessage(TT("convert"), v);
    
    TTTestAssertion("Second to millisecond", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    // Second => sample
    // We need to find the sample rate
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("second"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("sample"));    
    
    ttEnvironment->getAttributeValue(TT("sr"), globalSampleRate);
    
    v = TTValue(192000./TTFloat64(globalSampleRate));
    expected = TTValue(192000.);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("Second to sample", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    // Second => rate (Hz)
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("second"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("Hz"));    
    
    v = TTValue(0.25);
    expected = TTValue(4.);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("Second to frequency (Hz)", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    // Second => Beats per minute
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("bpm"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("second"));    
    
    v = TTValue(0.5);
    expected = TTValue(120.);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("Seconds to beats per minute", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    // Second => MIDI (2 tests at MIDI notes 48 and 60)
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("second"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("midi"));    
    
    v = TTValue(1./220.);
    expected = TTValue(57.);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("Second to MIDI note 57", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    v = TTValue(1./440.);
    expected = TTValue(69.);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("Second to MIDI note 69", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);

    
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
