/* 
 * Unit tests for the TTSampleMatrix Object for Jamoma DSP
 * Copyright © 2012, Tim Place & Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSampleMatrix.h"


TTErr TTSampleMatrix::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	
	TTUInt16			numChannels = 2;
	TTUInt16			numSamples = 50000;
	TTUInt16			returnedChannels, returnedSamples;
	
	TTTestLog("Test resizing of the SampleMatrix...");
	
	// TEST 1: the number of channels
	this->setAttributeValue(TT("numChannels"), numChannels);
	this->getAttributeValue(TT("numChannels"), returnedChannels);
	
	TTTestAssertion("numChannels is set properly", 
					numChannels == returnedChannels,
					testAssertionCount, 
					errorCount);
	
	
	// TEST 2: the number of samples	
	this->setAttributeValue(TT("lengthInSamples"), numSamples);
	this->getAttributeValue(TT("lengthInSamples"), returnedSamples);

	TTTestAssertion("lengthInSamples is set properly", 
								numSamples == returnedSamples,
								testAssertionCount, 
								errorCount);	
	
	TTTestAssertion("correct amount of data storage calculated", 
								this->mDataSize == sizeof(TTFloat64) * numChannels * numSamples, 
								testAssertionCount,
								errorCount);
	TTTestAssertion("correct byte-stride between values calculated", 
								this->mComponentStride == sizeof(TTFloat64), 
								testAssertionCount,
								errorCount);
	
	/*
	
	int					badSampleCount = 0;
	TTAudioObjectPtr	samplematrixObject = NULL;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	
	
	// TODO: test filling with sine wave
	// TODO: test scaling (applying gain)
	// TODO: test normalizing (with optional arg, and also without an optional arg)
	
	TTObjectInstantiate(TT("samplematrix"), &samplematrixObject, kTTVal1);
	
	// set some attributes
	samplematrixObject->setAttributeValue(TT("LengthInSamples"), numSamples);
	samplematrixObject->setAttributeValue(TT("NumChannels"), numChannels);
	
	
	
	TTTestAssertion("The LengthInSamples has been set properly", 
					samplematrixObject->getAttributeValue(TT("LengthInSamples")) == numSamples,
					testAssertionCount, 
					errorCount);
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	TTObjectRelease(&samplematrixObject);
	
	*/
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

