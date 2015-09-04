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
        
        
        // linear => linear
        
        myDataspace.set(TT("inputUnit"), TT("linear"));
        myDataspace.set(TT("outputUnit"), TT("linear"));    
        
        v = TTValue(1.23);
        expected = TTValue(1.23);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("linear to linear", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        
        
        // dB => linear
        
        myDataspace.set(TT("inputUnit"), TT("dB"));
        myDataspace.set(TT("outputUnit"), TT("linear"));
        
        v = TTValue(0.);
        expected = TTValue(1.0);
        
        myDataspace.send(TT("convert"), v, v);
        
        TTTestAssertion("0 dB to linear", 
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
		
		// dB-raw => linear
		
		myDataspace.set(TT("inputUnit"), TT("dB-raw"));
		myDataspace.set(TT("outputUnit"), TT("linear"));
		
		v = TTValue(0.);
		expected = TTValue(1.0);
		
		myDataspace.send(TT("convert"), v, v);
		
		TTTestAssertion("0 dB-raw to linear",
						TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
						testAssertionCount,
						errorCount);
		
		
        // midigain => linear
		
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
		
		// linear => dB-raw
		
		myDataspace.set(TT("inputUnit"), TT("linear"));
		myDataspace.set(TT("outputUnit"), TT("dB-raw"));
		
		v = TTValue(1.0);
		expected = TTValue(0.0);
		
		myDataspace.send(TT("convert"), v, v);
		
		TTTestAssertion("1.0 linear to dB-raw",
						TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
						testAssertionCount,
						errorCount);
		
        // linear => midigain
		
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
        
        // 127 midi gain => 12 dB
        
        myDataspace.set(TT("inputUnit"), TT("midigain"));
        myDataspace.set(TT("outputUnit"), TT("dB"));    
        
        v = TTValue(127.0);
        expected = TTValue(12.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("127 midi gain to 12 dB",
                        TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
                        testAssertionCount, 
                        errorCount);
        
        // 12 dB => 127 midi gain
        
        myDataspace.set(TT("inputUnit"), TT("dB"));
        myDataspace.set(TT("outputUnit"), TT("midigain"));
        
        v = TTValue(12.0);
        expected = TTValue(127.0);
        
        myDataspace.send(TT("convert"), v, v);    
        
        TTTestAssertion("12 dB to 127 midi gain",
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
		
		/*****************************************************/
		/*                                                   */
		/* Tests for dB hard lower limit					 */
		/*                                                   */
		/*****************************************************/
		
		// 0. linear gain => -96 dB
		
		myDataspace.set(TT("inputUnit"), TT("linear"));
		myDataspace.set(TT("outputUnit"), TT("dB"));
		
		v = TTValue(0.0);
		expected = TTValue(-96.0);
		
		myDataspace.send(TT("convert"), v, v);
		
		TTTestAssertion("0. linear gain to -96. dB",
						TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
						testAssertionCount,
						errorCount);
		
		// -96. dB gain => 0. linear
		
		myDataspace.set(TT("inputUnit"), TT("dB"));
		myDataspace.set(TT("outputUnit"), TT("linear"));
		
		v = TTValue(-96.0);
		expected = TTValue(0.0);
		
		myDataspace.send(TT("convert"), v, v);
		
		TTTestAssertion("-96. dB gain to 0. linear",
						TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
						testAssertionCount,
						errorCount);
		
		// -100. dB gain => 0. linear
		
		myDataspace.set(TT("inputUnit"), TT("dB"));
		myDataspace.set(TT("outputUnit"), TT("linear"));
		
		v = TTValue(-100.0);
		expected = TTValue(0.0);
		
		myDataspace.send(TT("convert"), v, v);
		
		TTTestAssertion("-00. dB gain to 0. linear",
						TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
						testAssertionCount,
						errorCount);
		
		
		/*****************************************************/
		/*                                                   */
		/* Tests for dB-raw not enforcing hard lower limit   */
		/*                                                   */
		/*****************************************************/
		
		
		// -100. dB-raw gain => 0. linear
		
		myDataspace.set(TT("inputUnit"), TT("dB-raw"));
		myDataspace.set(TT("outputUnit"), TT("linear"));
		
		v = TTValue(-100.0);
		
		/* Expected value calculated in Octave:
		 y = 10.0 .^ (-100. * 0.05)
		 printf("%.16e,\n", y)
		 */
		expected = TTValue(0.00001);
		
		myDataspace.send(TT("convert"), v, v);
		
		TTTestAssertion("-100. dB-raw gain to linear",
						TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
						testAssertionCount,
						errorCount);
		
		// 0.00001 linear => dB-raw
		
		myDataspace.set(TT("inputUnit"), TT("linear"));
		myDataspace.set(TT("outputUnit"), TT("dB-raw"));
		
		v = TTValue(0.00001);
		
		/* Expected value calculated in Octave:
		 y = 20 * log10(0.00001)
		 printf("%.16e,\n", y)
		 */
		expected = TTValue(-100.);
		
		myDataspace.send(TT("convert"), v, v);
		
		TTTestAssertion("0.00001 linear to dB-raw",
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
