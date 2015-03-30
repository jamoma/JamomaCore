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


// Dataspaces and Units employ C++ double-inheritance and are thus unsuitable for direct use
// through the usual TTObject API
#define TT_NO_DEPRECATION_WARNINGS

#include "GainDataspace.h"


TTErr GainDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    // Create dataspace object and set to temperature
    try {
        
        TTObject myDataspace("dataspace");
        myDataspace.set(TT("dataspace"), TT("gain"));
        
        TTValue v;
        TTValue expected;
        
        
        /************************************************/
        /*                                              */
        /* Test conversions to neutral unit             */
        /*                                              */
        /************************************************/
        
        
        // Linear => Linear
        
        myDataspace.set(TT("inputUnit"), TT("linear"));
        myDataspace.set(TT("outputUnit"), TT("linear"));    
        
        v = TTValue(1.23);
        expected = TTValue(1.23);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("linear to linear", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        
        // dB => Linear
        
        myDataspace.set(TT("inputUnit"), TT("dB"));
        myDataspace.set(TT("outputUnit"), TT("linear"));
        
        v = TTValue(0.);
        expected = TTValue(1.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("0 dB to linear", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        // midi gain => Linear
        
        myDataspace.set(TT("inputUnit"), TT("midigain"));
        myDataspace.set(TT("outputUnit"), TT("linear"));    
        
        v = TTValue(100.0);
        expected = TTValue(1.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("100 midi gain to linear",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        
        /************************************************/
        /*                                              */
        /* Test conversions from neutral unit           */
        /*                                              */
        /************************************************/
        
        // linear => dB
        
        myDataspace.set(TT("inputUnit"), TT("linear"));
        myDataspace.set(TT("outputUnit"), TT("dB"));
        
        v = TTValue(1.0);
        expected = TTValue(0.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("1.0 linear to dB", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
		
		myDataspace.set(TT("inputUnit"), TT("linear"));
		myDataspace.set(TT("outputUnit"), TT("dB"));
		
		v = TTValue(0.0);
		expected = TTValue(-144.49);
		
		myDataspace.send(TT("convert"), v, v);
		
		TTTestAssertion("0.0 linear to dB, avoid -inf dB by clipping to 24bit resolution (-144.49 dB).",
						TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
						testAssertionCount,
						errorCount);
		
		
        // linear => midi gain
		
        myDataspace.set(TT("inputUnit"), TT("linear"));
        myDataspace.set(TT("outputUnit"), TT("midigain"));
        
        v = TTValue(1.0);
        expected = TTValue(100.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("1.0 linear to midi gain",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        /*****************************************************/
        /*                                                   */
        /* Some additional important midi gain relationships */
        /*                                                   */
        /*****************************************************/
        
        // 127 midi gain => 10 dB
        
        myDataspace.set(TT("inputUnit"), TT("midigain"));
        myDataspace.set(TT("outputUnit"), TT("dB"));    
        
        v = TTValue(127.0);
        expected = TTValue(10.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("127 midi gain to 10 dB",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        // 10 dB => 127 midi gain
        
        myDataspace.set(TT("inputUnit"), TT("dB"));
        myDataspace.set(TT("outputUnit"), TT("midigain"));
        
        v = TTValue(10.0);
        expected = TTValue(127.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("10 dB to 127 midi gain",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        // 0 midi gain => 0 linear
        
        myDataspace.set(TT("inputUnit"), TT("midigain"));
        myDataspace.set(TT("outputUnit"), TT("linear"));    
        
        v = TTValue(0.0);
        expected = TTValue(0.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("0 midi gain to 0 linear",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);

        // 0 linear => 0 midi gain
        
        myDataspace.set(TT("inputUnit"), TT("linear"));
        myDataspace.set(TT("outputUnit"), TT("midigain"));
        
        v = TTValue(0.0);
        expected = TTValue(0.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("0 linear to 0 midigain",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
    
    }
    catch (...) {
        TTLogMessage("GainDataspace::test TOTAL FAILURE");
        errorCount = 1;
        testAssertionCount = 1;
    }
   
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
