/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Unit tests for the #TimeDataspace.
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

#include "TimeDataspace.h"


TTErr TimeDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    // Create dataspace object and set to time
    try {
        
        TTObject myDataspace("dataspace");
        myDataspace.set(TT("dataspace"), TT("time"));
        
        TTValue v;
        TTValue expected;
        
        
        /************************************************/
        /*                                              */
        /* Test conversions to neutral unit             */
        /*                                              */
        /************************************************/
        
        
        // Second to second
        
        myDataspace.set(TT("inputUnit"), TT("second"));
        myDataspace.set(TT("outputUnit"), TT("second"));    
        
        v = TTValue(256.);
        expected = TTValue(256.);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("Second to second", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        
        // Millisecond => second
        
        myDataspace.set(TT("inputUnit"), TT("millisecond"));
        myDataspace.set(TT("outputUnit"), TT("second"));
        
        v = TTValue(1234.5);
        expected = TTValue(1.2345);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("Millisecond to second", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        // Sample => second
        // We need to find the sample rate
        
        myDataspace.set(TT("inputUnit"), TT("sample"));
        myDataspace.set(TT("outputUnit"), TT("second"));    
        
        TTValue globalSampleRate;
        ttEnvironment->getAttributeValue(kTTSym_sampleRate, globalSampleRate);

        v = TTValue(1.23*TTFloat64(globalSampleRate));
        expected = TTValue(1.23);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Sample to second", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        
        // Rate (Hz) => second
        
        myDataspace.set(TT("inputUnit"), TT("Hz"));
        myDataspace.set(TT("outputUnit"), TT("second"));    
        
        v = TTValue(4.);
        expected = TTValue(0.25);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Frequency (Hz) to second", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        

        // Beats per minute => second
        
        myDataspace.set(TT("inputUnit"), TT("bpm"));
        myDataspace.set(TT("outputUnit"), TT("second"));    
        
        v = TTValue(120.);
        expected = TTValue(0.5);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Beats per minute to second", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        // midi note => second (2 tests at midi notes 57 and 69)
        
        myDataspace.set(TT("inputUnit"), TT("midinote"));
        myDataspace.set(TT("outputUnit"), TT("second"));    
        
        v = TTValue(57.);
        expected = TTValue(1./220.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("midi note 57 to second",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        v = TTValue(69.);
        expected = TTValue(1./440.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("midi note 69 to second",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        
        // cents => second (2 tests at cents values 5700 and 6900)
        
        myDataspace.set(TT("inputUnit"), TT("cents"));
        myDataspace.set(TT("outputUnit"), TT("second"));    
        
        v = TTValue(5700.);
        expected = TTValue(1./220.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Cent value 5700 to second", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        v = TTValue(6900.);
        expected = TTValue(1./440.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Cent value 6900 to second", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        // Bark => second
        
        myDataspace.set(TT("inputUnit"), TT("bark"));
        myDataspace.set(TT("outputUnit"), TT("second"));    
        
        v = TTValue(5.0);
        expected = TTValue(0.001785990780318596);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Bark to second", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        // Mel => second
        
        myDataspace.set(TT("inputUnit"), TT("mel"));
        myDataspace.set(TT("outputUnit"), TT("second"));    
        
        v = TTValue(1000.0);
        expected = TTValue(0.0009999781840186604);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Mel to second", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        // speed => seconds
        // Rather than checking this, there are tests for speed <=> midi note further down
        
        /************************************************/
        /*                                              */
        /* Test conversions from neutral unit           */
        /*                                              */
        /************************************************/
        
        // Second => Millisecond
        
        myDataspace.set(TT("inputUnit"), TT("second"));
        myDataspace.set(TT("outputUnit"), TT("millisecond"));
        
        v = TTValue(1.2345);
        expected = TTValue(1234.5);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("Second to millisecond", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        // Second => sample
        // We need to find the sample rate
        
        myDataspace.set(TT("inputUnit"), TT("second"));
        myDataspace.set(TT("outputUnit"), TT("sample"));    
        
        ttEnvironment->getAttributeValue(kTTSym_sampleRate, globalSampleRate);
        
        v = TTValue(192000./TTFloat64(globalSampleRate));
        expected = TTValue(192000.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Second to sample", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        // Second => rate (Hz)
        
        myDataspace.set(TT("inputUnit"), TT("second"));
        myDataspace.set(TT("outputUnit"), TT("Hz"));    
        
        v = TTValue(0.25);
        expected = TTValue(4.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Second to frequency (Hz)", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        // Second => Beats per minute
        
        myDataspace.set(TT("inputUnit"), TT("second"));
        myDataspace.set(TT("outputUnit"), TT("bpm"));    
        
        v = TTValue(0.5);
        expected = TTValue(120.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Seconds to beats per minute", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        // Second => midi note (2 tests at midi notes 57 and 69)
        
        myDataspace.set(TT("inputUnit"), TT("second"));
        myDataspace.set(TT("outputUnit"), TT("midinote"));
        
        v = TTValue(1./220.);
        expected = TTValue(57.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Second to midi note 57",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        v = TTValue(1./440.);
        expected = TTValue(69.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Second to midi note 69",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        
        // Second => cents (2 tests at cent values 5700 and 6900)
        
        myDataspace.set(TT("inputUnit"), TT("second"));
        myDataspace.set(TT("outputUnit"), TT("cents"));    
        
        v = TTValue(1./220.);
        expected = TTValue(5700.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Second to cent value 5700", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        v = TTValue(1./440.);
        expected = TTValue(6900.);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Second to cent value 6900", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        // Second => Bark
        
        myDataspace.set(TT("inputUnit"), TT("second"));
        myDataspace.set(TT("outputUnit"), TT("bark"));    
        
        v = TTValue(0.001785990780318596);
        expected = TTValue(5.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Seconds to bark scale", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        // Second => Mel
        
        myDataspace.set(TT("inputUnit"), TT("second"));
        myDataspace.set(TT("outputUnit"), TT("mel"));    
        
        v = TTValue(0.001);
        expected = TTValue(999.9855371396243);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Seconds to mel scale", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        // Second => Speed
        // Rather than checking this, there are tests for speed <=> midi note further down
        
        /************************************************/
        /*                                              */
        /* Tests bypassing neutral unit                 */
        /* - where this helps predict expected result   */
        /*                                              */
        /************************************************/

        // Speed => midi note (tests for Speed = 0.5, 1.0 and 2)
        
        myDataspace.set(TT("inputUnit"), TT("speed"));
        myDataspace.set(TT("outputUnit"), TT("midinote"));
        
        v = TTValue(0.5);
        expected = TTValue(-12.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("0.5 speed to midi note",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        v = TTValue(1.0);
        expected = TTValue(0.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("1.0 speed to midi note",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        v = TTValue(2.0);
        expected = TTValue(12.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("2.0 speed to midi note",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        // midi note => Speed (tests for Speed = 0.5, 1.0 and 2)*/
        
        myDataspace.set(TT("inputUnit"), TT("midinote"));
        myDataspace.set(TT("outputUnit"), TT("speed")); 
        
        v = TTValue(-12.0);
        expected = TTValue(0.5);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("-12 midi note to speed",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        v = TTValue(0.0);
        expected = TTValue(1.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("0 midi note to speed",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        v = TTValue(12.0);
        expected = TTValue(2.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("12 midi note to speed",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);  


        // Hz => Mel
        
        myDataspace.set(TT("inputUnit"), TT("Hz"));
        myDataspace.set(TT("outputUnit"), TT("mel"));    
        
        v = TTValue(1000.0);
        expected = TTValue(999.9855371396243);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("Hz to mel scale", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        // Mel => Hz
        
        myDataspace.set(TT("inputUnit"), TT("mel"));
        myDataspace.set(TT("outputUnit"), TT("Hz"));    
        
        v = TTValue(999.9855371396243);
        expected = TTValue(1000.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("mel scale to Hz", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
    
    }
    catch (...) {
        TTLogMessage("TimeDataspace::test TOTAL FAILURE");
        errorCount = 1;
        testAssertionCount = 1;
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
