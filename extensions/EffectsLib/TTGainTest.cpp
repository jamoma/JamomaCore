/* 
 * TTBlue Gain Control Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGain.h"


void TTTestLog(const char *msg)
{
	TTLogMessage("	");
	TTLogMessage(msg);
	TTLogMessage("\n");
}


void TTTestAssertion(const char* aTestName, TTBoolean aTestResult, int& testAssertionCount, int& errorCount)
{
	testAssertionCount++;
	
	if (aTestResult)
		TTLogMessage("	PASS -- ");
	else {
		TTLogMessage("	FAIL -- ");
		errorCount++;
	}	
	TTLogMessage(aTestName);
	TTLogMessage("\n");	
}


static const TTFloat32 kTTTestFloat32Epsilon = 0.00001;

TTBoolean TTTestFloatEquivalence(TTFloat32 a, TTFloat32 b)
{
	if (fabs(a-b) < fabs(a*kTTTestFloat32Epsilon))
		return true;
	else
		return false;
}


static const TTFloat64 kTTTestFloat64Epsilon = 0.000000001;

TTBoolean TTTestFloatEquivalence(TTFloat64 a, TTFloat64 b)
{
	if (fabs(a-b) < fabs(a*kTTTestFloat64Epsilon))
		return true;
	else
		return false;
}

TTErr TTGain::test(TTValue& returnedTestInfo)
{
	// preliminary setup
	
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTLogMessage("Testing Parameter value conversions:\n");
	
	
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
	TTLogMessage("		badSampleCount is %i\n", badSampleCount);
	TTTestAssertion("accumulated audio error at gain = -6 dB", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	
		
	// Wrap up the test results to pass back to whoever called this test

	TTDictionaryPtr d = new TTDictionary;
	d->setSchema(TT("TestInfo"));
	d->append(TT("testAssertionCount"), testAssertionCount);
	d->append(TT("errorCount"), errorCount);
	returnedTestInfo = d;
	
	// TODO: log the test summary to the console
	// TODO: DRY this stuff at the footer with a macro or function or something
	
	if (errorCount)
		return kTTErrGeneric;
	else
		return kTTErrNone;
}
