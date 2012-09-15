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
	
	// for tests
	TTUInt16			numChannels = 2;
	TTUInt16			numSamples = 50000;
	TTFloat32			duration = 1500;
	TTUInt16			returnedChannels, returnedSamples, computedSamples;
	TTFloat32			returnedDuration, computedDuration;
	
	TTTestLog("Test resizing of the SampleMatrix...");
	
	// TEST 1: can we set the number of channels?
	this->setAttributeValue(TT("numChannels"), numChannels);
	
	this->getAttributeValue(TT("numChannels"), returnedChannels);
	
	TTTestAssertion("numChannels is set properly", 
					numChannels == returnedChannels,
					testAssertionCount, 
					errorCount);
	
	// TEST 2: can we set the number of samples?
	this->setAttributeValue(TT("lengthInSamples"), numSamples);
	
	this->getAttributeValue(TT("lengthInSamples"), returnedSamples);

	TTTestAssertion("lengthInSamples is set properly", 
								numSamples == returnedSamples,
								testAssertionCount, 
								errorCount);
	
	// TEST 3: is the length in ms computed properly after setting length in samples?
	computedDuration = (numSamples / this->mSampleRate) * 1000.;	
	
	this->getAttributeValue(TT("length"), returnedDuration);				
					
	TTBoolean result = TTTestFloatEquivalence(computedDuration, returnedDuration);
				
	TTTestAssertion("after lengthInSamples is set, length in ms is reported correctly", 
								result,
								testAssertionCount, 
								errorCount);
							
	if(!result)
	{
		TTTestLog("Expected a value of %f, but returned duration in ms was: %f", computedDuration, returnedDuration);	
	}	
	
	// TEST 4 & 5: is the matrix of samples the expected size
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

