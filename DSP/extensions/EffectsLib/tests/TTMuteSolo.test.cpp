/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief Unit tests for #TTMuteSolo
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2014, Trond Lossius @n
 * License: This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTMuteSolo.h"


TTErr TTMutesolo::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	// create four audio signals
	TTObjectBaseInstantiate(kTTSym_audiosignal, &input,  4);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &output, 4);
	
	input->allocWithVectorSize(64);
	output->allocWithVectorSize(64);
	
	for (int i=0; i<64; i++) {
		input->mSampleVectors[0][i] = 1.;
		input->mSampleVectors[1][i] = 2.;
		input->mSampleVectors[2][i] = 4.;
		input->mSampleVectors[3][i] = 7.;
	}
	/*
	 I'v struggled before with this crashing in this way in tests, but I can't see what the problem is here.
	
	this->process(input, output);
	 */
	int					validSampleCount = 0;
	
	for (int channel=0; channel<4; channel++) {
		TTSampleValuePtr	inSamples = input->mSampleVectors[channel];
		TTSampleValuePtr	outSamples = output->mSampleVectors[channel];
		
		for (int i=0; i<64; i++) {
			validSampleCount += TTTestFloatEquivalence(inSamples[i], outSamples[i]);
		}
	}
	TTTestAssertion("input samples accurately copied to output samples",
					validSampleCount == 256, // 64 * 4 channels
					testAssertionCount,
					errorCount);
	TTTestLog("Number of bad samples: %i", 256-validSampleCount);
	
	
	TTObjectBaseRelease(&input);
	TTObjectBaseRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
