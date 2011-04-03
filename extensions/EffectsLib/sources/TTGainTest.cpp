/* 
 * Unit tests for the Jamoma DSP gain object
 * Copyright © 2011, Timothy Place and Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGain.h"


TTErr TTGain::test(TTValue& returnedTestInfo)
{
	// preliminary setup
	
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTTestLog("Testing Parameter value conversions");
	
	
	// N test assertions
	
	// Test 1: trival value conversion
	this->setAttributeValue(TT("midiGain"), 100);
	TTTestAssertion("midi gain of 100 == linear gain of 1.", 
					TTTestFloatEquivalence(this->mGain, 1.0), 
					testAssertionCount, 
					errorCount);
	
	// Test 2: trival value conversion
	this->setAttributeValue(TT("midiGain"), 99);
	TTTestAssertion("midi gain of 99 != linear gain of 1.", 
					TTTestFloatEquivalence(this->mGain, 1.0, false), 
					testAssertionCount, 
					errorCount);
	
	// Test 3: audio test
	// set the input signals 1
	// apply -6 dB gain
	// check that the signals are properly scaled
	
	TTAudioSignalPtr input = NULL;
	TTAudioSignalPtr output = NULL;
	
	// create 1 channel audio signal objects
	TTObjectInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectInstantiate(kTTSym_audiosignal, &output, 1);
	
	input->allocWithVectorSize(64);
	output->allocWithVectorSize(64);
	
	for (int i=0; i<64; i++)
		input->mSampleVectors[0][i] = 1.0;
	
	this->setAttributeValue(TT("gain"), -6.0);
	this->process(input, output);
	
	TTSampleValuePtr samples = output->mSampleVectors[0];
	int validSampleCount = 0;
	
	for (int i=0; i<64; i++) {
		validSampleCount += TTTestFloatEquivalence(0.5011872336272722, samples[i]);
	}
	TTTestAssertion("accumulated audio error at gain = -6 dB", 
					validSampleCount == 64, 
					testAssertionCount, 
					errorCount);
	TTTestLog("Numbe of bad samples: %i", 64-validSampleCount);
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
