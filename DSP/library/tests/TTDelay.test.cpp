/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Unit tests for the #TTDelay class
 *
 * @details
 *
 * @see TTDelay
 *
 * @authors Nils Peters, Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2011-2012 by Nils Peters, Tim Place, Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDelay.h"


TTErr TTDelay::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
//	TTAudioSignalPtr	input = NULL;
//	TTAudioSignalPtr	output = NULL;
	TTAudio				input(1);
	TTAudio				output(1);
	
	// create 1 channel audio signal objects
	input.allocWithVectorSize(64);
	output.allocWithVectorSize(64);
	
	// create an impulse
	input.clear();						// set all samples to zero
	input.rawSamples()[0][0] = 1.0;	// set the first sample to 1
	
	// test 1: one sample delay, no interpolation
	this->setAttributeValue("delayMaxInSamples", 64);
	this->setAttributeValue("delayInSamples", 1);
	this->setAttributeValue("interpolation", "none"), 
	this->process(input, output);
	

	TTFloat64 expectedImpulseResponse[64] = {
		0.0000000000000000e+00,
		1.0,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00		
	};
	
	badSampleCount = 0; // reset
	for (int i=0; i<64; i++) {
		TTBoolean result = TTTestFloatEquivalence(output.rawSamples()[0][i], expectedImpulseResponse[i]);
		badSampleCount += !result;
		if (!result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output.rawSamples()[0][i], expectedImpulseResponse[i]);
	}

	TTTestAssertion("Produces correct impulse response: 1 sample, no interp", 
					badSampleCount == 0,
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	//test 2: negative values for delay in samples, should clip to 0
	this->setAttributeValue("delayInSamples", -1);
	
	TTInt64 inquiry2 = this->mDelayInSamples;
	TTBoolean result2 = { inquiry2 == 0 };
	
	TTTestAssertion("setting delayInSamples to negative value clips to 0", 
								result2, 
								testAssertionCount,
								errorCount);													
	
	if(!result2)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", 0, inquiry2);
	}
	
	//test 3: negative values for delay in milliseconds, should clip to 0
	this->setAttributeValue("delay", -1);
	
	TTInt64 inquiry3 = this->mDelay;
	TTBoolean result3 = { inquiry3 == 0 };
	
	TTTestAssertion("setting delay to negative value clips to 0", 
								result3, 
								testAssertionCount,
								errorCount);													
	
	if(!result3)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", 0, inquiry3);
	}
	
	//test 4,5,6,7: setting delayInSamples supports fractional values
	this->setAttributeValue("delayInSamples", 44.1);
	
	TTFloat64 inquiry4 = this->mDelayInSamples;
	TTFloat64 expect4 = 44.1;
	TTBoolean result4 = TTTestFloatEquivalence(inquiry4,expect4);
	TTUInt64 inquiry5 = this->mIntegralDelay;
	TTUInt64 expect5 = 44;
	TTBoolean result5 = { inquiry5 == expect5 };
	TTFloat64 inquiry6 = this->mFractionalDelay;
	TTFloat64 expect6 = 0.1;
	TTBoolean result6 = TTTestFloatEquivalence(inquiry6,expect6);
	TTFloat64 inquiry7 = this->mDelay;
	TTFloat64 expect7 = 1.0;
	TTBoolean result7 = TTTestFloatEquivalence(inquiry7,expect7);
	
	TTTestAssertion("float delayInSamples to yields correct mDelayInSamples", 
								result4, 
								testAssertionCount,
								errorCount);													
	
	if(!result4)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect4, inquiry4);
	}
	
	TTTestAssertion("float delayInSamples to yields correct mIntegralDelay", 
								result5, 
								testAssertionCount,
								errorCount);													
	
	if(!result5)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", expect5, inquiry5);
	}
	
	TTTestAssertion("float delayInSamples to yields correct mFractionalDelay", 
								result6, 
								testAssertionCount,
								errorCount);													
	
	if(!result6)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect6, inquiry6);
	}
	
	TTTestAssertion("float delayInSamples to yields correct mDelay", 
								result7, 
								testAssertionCount,
								errorCount);													
	
	if(!result7)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect7, inquiry7);
	}
	
	//test 8,9,10,11: setting delay supports fractional values
	this->setAttributeValue("delay", 1.1);
	
	TTFloat64 inquiry8 = this->mDelayInSamples;
	TTFloat64 expect8 = 48.51;
	TTBoolean result8 = TTTestFloatEquivalence(inquiry8,expect8);
	TTUInt64 inquiry9 = this->mIntegralDelay;
	TTUInt64 expect9 = 48;
	TTBoolean result9 = { inquiry9 == expect9 };
	TTFloat64 inquiry10 = this->mFractionalDelay;
	TTFloat64 expect10 = 0.51;
	TTBoolean result10 = TTTestFloatEquivalence(inquiry10,expect10);
	TTFloat64 inquiry11 = this->mDelay;
	TTFloat64 expect11 = 1.1;
	TTBoolean result11 = TTTestFloatEquivalence(inquiry11,expect11);
	
	TTTestAssertion("float delay to yields correct mDelayInSamples", 
								result8, 
								testAssertionCount,
								errorCount);													
	
	if(!result8)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect8, inquiry8);
	}
	
	TTTestAssertion("float delay to yields correct mIntegralDelay", 
								result9, 
								testAssertionCount,
								errorCount);													
	
	if(!result9)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", expect9, inquiry9);
	}
	
	TTTestAssertion("float delay to yields correct mFractionalDelay", 
								result10, 
								testAssertionCount,
								errorCount);													
	
	if(!result10)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect10, inquiry10);
	}
	
	TTTestAssertion("float delay to yields correct mDelay", 
								result11, 
								testAssertionCount,
								errorCount);													
	
	if(!result11)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect11, inquiry11);
	}
	
	// test 12: 1.4 sample delay, linear interpolation
	this->clear();
	this->setAttributeValue("delayInSamples", 1.4);
	this->setAttributeValue("interpolation", "linear"), 
	this->process(input, output);
	

	TTFloat64 expectedImpulseResponse12[64] = {
		0.0000000000000000e+00,
		0.6000000000000000e+00,
		0.4000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00		
	};
	
	badSampleCount = 0; // reset
	for (int i=0; i<64; i++) {
		TTBoolean result = TTTestFloatEquivalence(output.rawSamples()[0][i], expectedImpulseResponse12[i]);
		badSampleCount += !result;
		if (!result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output.rawSamples()[0][i], expectedImpulseResponse12[i]);
	}

	TTTestAssertion("Produces correct impulse response: 1.4 samples, linear interp", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
		

	// test 13: 1.1 sample delay, cosine interpolation
	this->clear();
	this->setAttributeValue("delayInSamples", 1.1);
	this->setAttributeValue("interpolation", "cosine"), 
	this->process(input, output);
	

	TTFloat64 expectedImpulseResponse13[64] = {
		0.0000000000000000e+00,
		0.9755282581475768e+00,
		0.0244717418524232e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00		
	};
	
	badSampleCount = 0; // reset
	for (int i=0; i<64; i++) {
		TTBoolean result = TTTestFloatEquivalence(output.rawSamples()[0][i], expectedImpulseResponse13[i]);
		badSampleCount += !result;
		if (!result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output.rawSamples()[0][i], expectedImpulseResponse13[i]);
	}

	TTTestAssertion("Produces correct impulse response: 1.1 samples, cosine interp", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
		
	// test 14: 1.8 sample delay, cubic interpolation
    
	this->clear();
	this->setAttributeValue("delayInSamples", 1.8);
	this->setAttributeValue("interpolation", "cubic"), 
	this->process(input, output);
	

	TTFloat64 expectedImpulseResponse14[64] = {
		-0.0160000000000000e+00,
		0.1680000000000000e+00,
		0.9120000000000000e+00,
		-0.0640000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
        0.0000000000000000e+00,
		0.0000000000000000e+00		
	};
	
	badSampleCount = 0; // reset
	for (int i=0; i<64; i++) {
		TTBoolean result = TTTestFloatEquivalence(output.rawSamples()[0][i], expectedImpulseResponse14[i]);
		badSampleCount += !result;
		if (!result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output.rawSamples()[0][i], expectedImpulseResponse14[i]);
	}

	TTTestAssertion("Produces correct impulse response: 1.8 samples, cubic interp", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

