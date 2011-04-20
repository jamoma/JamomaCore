/* 
 * Unit tests for the Jamoma DSP thru object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTThru.h"


TTErr TTThru::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	// create stereo audio signals
	TTObjectInstantiate(kTTSym_audiosignal, &input, 2);
	TTObjectInstantiate(kTTSym_audiosignal, &output, 2);
	
	input->allocWithVectorSize(64);
	output->allocWithVectorSize(64);
	
	for (int i=0; i<64; i++)
		input->mSampleVectors[0][i] = TTRandom64();
	
	this->process(input, output);
	
	int					validSampleCount = 0;
	
	for (int channel=0; channel<2; channel++) {
		TTSampleValuePtr	inSamples = input->mSampleVectors[channel];
		TTSampleValuePtr	outSamples = output->mSampleVectors[channel];

		for (int i=0; i<64; i++) {
			validSampleCount += TTTestFloatEquivalence(inSamples[i], outSamples[i]);
		}
	}
	TTTestAssertion("input samples accurately copied to output samples", 
					validSampleCount == 128, // 64 * 2 channels 
					testAssertionCount, 
					errorCount);
	TTTestLog("Number of bad samples: %i", 128-validSampleCount);
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
