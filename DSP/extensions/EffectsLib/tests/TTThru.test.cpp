/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief Unit tests for #TTThru
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2011, Timothy Place @n
 * License: This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTThru.h"


TTErr TTThru::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	
	// create stereo audio signals
	TTAudio input(2);
	TTAudio output(2);
	
	input.allocWithVectorSize(64);
	output.allocWithVectorSize(64);
	
	for (int i=0; i<64; i++)
		input.rawSamples()[0][i] = TTRandom64();
	
	this->process(input, output);
	
	int					validSampleCount = 0;
	
	for (int channel=0; channel<2; channel++) {
		TTSampleValuePtr	inSamples = input.rawSamples()[channel];
		TTSampleValuePtr	outSamples = output.rawSamples()[channel];

		for (int i=0; i<64; i++) {
			validSampleCount += TTTestFloatEquivalence(inSamples[i], outSamples[i]);
		}
	}
	TTTestAssertion("input samples accurately copied to output samples", 
					validSampleCount == 128, // 64 * 2 channels 
					testAssertionCount, 
					errorCount);
	TTTestLog("Number of bad samples: %i", 128-validSampleCount);
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
