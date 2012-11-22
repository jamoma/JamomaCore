/* 
 * Unit tests for the TTDelay Object for Jamoma DSP
 * Copyright © 2011-2012, Nils Peters, Tim Place, Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDelay.h"


TTErr TTDelay::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	// create 1 channel audio signal objects
	TTObjectInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(64);
	output->allocWithVectorSize(64);
	
	// create an impulse
	input->clear();						// set all samples to zero
	input->mSampleVectors[0][0] = 1.0;	// set the first sample to 1
	
	// setup the delay
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
	
	for (int i=0; i<64; i++) {
		TTBoolean result = TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedImpulseResponse[i]);
		badSampleCount += !result;
		if (!result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedImpulseResponse[i]);
	}

	TTTestAssertion("Produces correct impulse response for a delay of 1 sample", 
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
	
	TTFloat64 inquiry4 = this->mFractionalDelaySamples;
	TTFloat64 expect4 = 44.1;
	TTBoolean result4 = TTTestFloatEquivalence(inquiry4,expect4);
	TTUInt64 inquiry5 = this->mDelayInSamples;
	TTUInt64 expect5 = 44;
	TTBoolean result5 = { inquiry5 == expect5 };
	TTFloat64 inquiry6 = this->mFractionalDelay;
	TTFloat64 expect6 = 0.1;
	TTBoolean result6 = TTTestFloatEquivalence(inquiry6,expect6);
	TTFloat64 inquiry7 = this->mDelay;
	TTFloat64 expect7 = 1.0;
	TTBoolean result7 = TTTestFloatEquivalence(inquiry7,expect7);
	
	TTTestAssertion("float delayInSamples to yeilds correct mFractionalDelaySamples", 
								result4, 
								testAssertionCount,
								errorCount);													
	
	if(!result4)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect4, inquiry4);
	}
	
	TTTestAssertion("float delayInSamples to yeilds correct mDelayInSamples", 
								result5, 
								testAssertionCount,
								errorCount);													
	
	if(!result5)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", expect5, inquiry5);
	}
	
	TTTestAssertion("float delayInSamples to yeilds correct mFractionalDelay", 
								result6, 
								testAssertionCount,
								errorCount);													
	
	if(!result6)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect6, inquiry6);
	}
	
	TTTestAssertion("float delayInSamples to yeilds correct mDelay", 
								result7, 
								testAssertionCount,
								errorCount);													
	
	if(!result7)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect7, inquiry7);
	}
	
	//test 8,9,10,11: setting delay supports fractional values
	this->setAttributeValue("delay", 1.1);
	
	TTFloat64 inquiry8 = this->mFractionalDelaySamples;
	TTFloat64 expect8 = 48.51;
	TTBoolean result8 = TTTestFloatEquivalence(inquiry8,expect8);
	TTUInt64 inquiry9 = this->mDelayInSamples;
	TTUInt64 expect9 = 48;
	TTBoolean result9 = { inquiry9 == expect9 };
	TTFloat64 inquiry10 = this->mFractionalDelay;
	TTFloat64 expect10 = 0.51;
	TTBoolean result10 = TTTestFloatEquivalence(inquiry10,expect10);
	TTFloat64 inquiry11 = this->mDelay;
	TTFloat64 expect11 = 1.1;
	TTBoolean result11 = TTTestFloatEquivalence(inquiry11,expect11);
	
	TTTestAssertion("float delay to yeilds correct mFractionalDelaySamples", 
								result8, 
								testAssertionCount,
								errorCount);													
	
	if(!result8)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect8, inquiry8);
	}
	
	TTTestAssertion("float delay to yeilds correct mDelayInSamples", 
								result9, 
								testAssertionCount,
								errorCount);													
	
	if(!result9)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", expect9, inquiry9);
	}
	
	TTTestAssertion("float delay to yeilds correct mFractionalDelay", 
								result10, 
								testAssertionCount,
								errorCount);													
	
	if(!result10)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect10, inquiry10);
	}
	
	TTTestAssertion("float delay to yeilds correct mDelay", 
								result11, 
								testAssertionCount,
								errorCount);													
	
	if(!result11)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", expect11, inquiry11);
	}
	
	TTTestLog("The value of sample rate has been set to %i", this->sr);
	TTTestLog("The value of inv sample rate has been set to %f", this->srInv);
	TTTestLog("The value of 1000 sample rate has been set to %f", this->srMill);
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

