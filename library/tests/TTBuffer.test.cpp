/* 
 * Unit tests for the TTBuffer Object for Jamoma DSP
 * Copyright © 2011, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBuffer.h"


TTErr TTBuffer::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	//int					badSampleCount = 0;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	// TODO: test filling with sine wave
	// TODO: test scaling (applying gain)
	// TODO: test normalizing (with optional arg, and also without an optional arg)
	
	/*
	// create 1 channel audio signal objects
	TTObjectInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(64);
	output->allocWithVectorSize(64);
	
	// create an impulse
	input->clear();						// set all samples to zero
	input->mSampleVectors[0][0] = 1.0;	// set the first sample to 1
	
	// setup the delay
	this->setAttributeValue(TT("delayMaxInSamples"), 64);
	this->setAttributeValue(TT("delayInSamples"), 1);
	this->setAttributeValue(TT("interpolation"), TT("none")), 
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
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedImpulseResponse[i]);
		badSampleCount += result;
		if (result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedImpulseResponse[i]);
	}

	TTTestAssertion("Produces correct impulse response for a delay of 1 sample", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	*/
	
	
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

