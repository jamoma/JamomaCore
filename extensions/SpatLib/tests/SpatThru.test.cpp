/* 
 * Super simple Spatialization object for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "SpatThru.h"



TTErr SpatThru::test(TTValue& returnedTestInfo)
 {
	 int				errorCount = 0;
	 int				testAssertionCount = 0;
	 TTAudioSignalPtr	input = NULL;
	 TTAudioSignalPtr	output = NULL;
	 
	 setAttributeValue(TT("sourceCount"), 4);
	 setAttributeValue(TT("destinationCount"), 4);
	 
	 // create four channel audio signals
	 TTObjectInstantiate(kTTSym_audiosignal, &input, 4);
	 TTObjectInstantiate(kTTSym_audiosignal, &output, 4);
	 
	 input->allocWithVectorSize(64);
	 output->allocWithVectorSize(64);
	 
	 // Fill signals on all four channels with noise
	 
	 for (int i=0; i<64; i++) {
		 input->mSampleVectors[0][i] = TTRandom64();
		 input->mSampleVectors[1][i] = TTRandom64();
		 input->mSampleVectors[2][i] = TTRandom64();
		 input->mSampleVectors[3][i] = TTRandom64();
	 }
	 
	 // process
	 this->process(input, output);
	 
	 // check returned samples at all channels
	 int validSampleCount = 0;
	 
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
	 
	 TTObjectRelease(&input);
	 TTObjectRelease(&output);

	 // Wrap up the test results to pass back to whoever called this test
	 return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
