/* 
 * Unit tests for the TTValue object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTValueTest.h"

#define thisTTClass			TTValueTest
#define thisTTClassName		"value.test"
#define thisTTClassTags		"test, foundation"


TT_OBJECT_CONSTRUCTOR
{;}

TTValueTest::~TTValueTest()
{;}

TTErr TTValueTest::test(TTValue& returnedTestInfo)
{
	// preliminary setup
	
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTTestLog("Testing Parameter value conversions");
	
	
	// N test assertions
/*	
	// Test 1: trival value conversion
	this->setAttributeValue(TT("midiGain"), 100);
	TTTestAssertion("midi gain of 100 == linear gain of 1.", 
					TTTestFloatEquivalence(this->mGain, 1.0), 
					testAssertionCount, 
					errorCount);
	
	// Test 2: trival value conversion
	this->setAttributeValue(TT("midiGain"), 99);
	TTTestAssertion("midi gain of 99 != linear gain of 1.", 
					TTTestFloatEquivalence(this->mGain, 1.0), 
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
	int badSampleCount = 0;
	
	for (int i=0; i<64; i++) {
		badSampleCount += TTTestFloatEquivalence(0.501187, samples[i]);
	}
	TTTestAssertion("accumulated audio error at gain = -6 dB", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	TTTestLog("badSampleCount is %i", badSampleCount);
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
*/	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
