/** @file
 *
 * @ingroup dspAnalysisLib
 *
 * @brief Unit tests for the #TTAverage object for Jamoma DSP
 *
 * @details
 *
 * @authors Nils Peters, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011, Nils Peters, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAverage.h"


TTErr TTAverage::test(TTValue& returnedTestInfo)
{
	// preliminary setup
	int					errorCount = 0;
	int					testAssertionCount = 0;
	
	// Set up audio signals
	int					badSampleCount = 0;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	// Create 1 channel audio signal objects
	TTObjectInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(64);
	output->allocWithVectorSize(64);
	
	// Create an impulse
	input->clear();						// set all samples to zero
	input->mSampleVectors[0][10] = -2.0;	// set the first sample to -2
	input->mSampleVectors[0][11] = -2.0;	// set the second sample to -2
	
	// Setup the delay
	this->setAttributeValue(TT("interval"), 4);
	//this->setAttributeValue(TT("delayInSamples"), 1);
	this->setAttributeValue(TT("mode"), TT("bipolar"));
	this->process(input, output);
	

	TTFloat64 expectedImpulseResponse[64] = {
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00, // N =  9 : Average of { 0.0,  0.0,  0.0,  0.0}
		-0.5,					// N = 10 : Average of {-2.0,  0.0,  0.0,  0.0}
		-1.0,					// N = 11 : Average of {-2.0, -2.0,  0.0,  0.0}
		-1.0,					// N = 12 : Average of { 0.0, -2.0, -2.0,  0.0}
		-1.0,					// N = 13 : Average of { 0.0,  0.0, -2.0, -2.0}
		-0.5,					// N = 14 : Average of { 0.0,  0.0,  0.0, -2.0}
		0.0000000000000000e+00,	// N = 15 : Average of { 0.0,  0.0,  0.0,  0.0}
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
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
	
	
	
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

