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
	TTObjectBaseInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(64);
	output->allocWithVectorSize(64);
	
	
	/*************************************************************
	 *
	 * bipolar mode unit test
	 *
	 *************************************************************/
	
	
	// Create an impulse
	input->clear();							// set all samples to zero
	input->mSampleVectors[0][10] = -2.0;	// set the first sample to -2
	input->mSampleVectors[0][11] = -2.0;	// set the second sample to -2
	
	// Setup the delay
	this->setAttributeValue(TT("interval"), 4);
	//this->setAttributeValue(TT("delayInSamples"), 1);
	this->setAttributeValue(TT("mode"), TT("bipolar"));
	this->process(input, output);
	

	TTFloat64 expectedImpulseResponseBipolar[64] = {
		0.0000000000000000e+00,	// N =  0
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
		TTBoolean result = TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedImpulseResponseBipolar[i]);
		badSampleCount += !result;
		if (!result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedImpulseResponseBipolar[i]);
	}

	TTTestAssertion("Produces expected results with bipolar mode", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	
	
	/*************************************************************
	 *
	 * absolute mode unit test
	 *
	 *************************************************************/
	
	
	// Create an impulse
	input->clear();							// set all samples to zero
	input->mSampleVectors[0][10] = -2.0;	// set the first sample to -2
	input->mSampleVectors[0][11] = -2.0;	// set the second sample to -2
	
	// Set mode and do audio prosessing
	this->setAttributeValue(TT("mode"), TT("absolute"));
	this->process(input, output);
	
	
	TTFloat64 expectedImpulseResponseAbsolute[64] {
		0.0000000000000000e+00,	// N =  0
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00, // N =  9 : Average of { 0.0,  0.0,  0.0,  0.0}
		0.5,					// N = 10 : Average of {-2.0,  0.0,  0.0,  0.0}
		1.0,					// N = 11 : Average of {-2.0, -2.0,  0.0,  0.0}
		1.0,					// N = 12 : Average of { 0.0, -2.0, -2.0,  0.0}
		1.0,					// N = 13 : Average of { 0.0,  0.0, -2.0, -2.0}
		0.5,					// N = 14 : Average of { 0.0,  0.0,  0.0, -2.0}
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
		TTBoolean result = TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedImpulseResponseAbsolute[i]);
		badSampleCount += !result;
		if (!result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedImpulseResponseAbsolute[i]);
	}
	
	TTTestAssertion("Produces expected results with absolute mode",
					badSampleCount == 0,
					testAssertionCount,
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	
	/*************************************************************
	 *
	 * rms mode unit test
	 *
	 *************************************************************/
	
	
	// Create an impulse
	input->clear();						// set all samples to zero
	input->mSampleVectors[0][10] = -3.0;	// set the first sample to  -3
	input->mSampleVectors[0][11] =  4.0;	// set the second sample to -4
	
	// Set mode and do audio prosessing
	this->setAttributeValue(TT("mode"), TT("rms"));
	this->process(input, output);
	
	
	TTFloat64 expectedImpulseResponseRms[64] = {
		0.0000000000000000e+00,	// N =  0
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00,
		0.0000000000000000e+00, // N =  9 : Average of { 0.0,  0.0,  0.0,  0.0}
		1.5,					// N = 10 : Average of {-3.0,  0.0,  0.0,  0.0}
		2.5,					// N = 11 : Average of { 4.0, -3.0,  0.0,  0.0}
		2.5,					// N = 12 : Average of { 0.0,  4.0, -3.0,  0.0}
		2.5,					// N = 13 : Average of { 0.0,  0.0,  4.0, -3.0}
		2.0,					// N = 14 : Average of { 0.0,  0.0,  0.0,  4.0}
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
		TTBoolean result = TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedImpulseResponseRms[i]);
		badSampleCount += !result;
		if (!result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedImpulseResponseRms[i]);
	}
	
	TTTestAssertion("Produces expected results with rms mode",
					badSampleCount == 0,
					testAssertionCount,
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	
	// Free objects
	
	TTObjectBaseRelease(&input);
	TTObjectBaseRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

