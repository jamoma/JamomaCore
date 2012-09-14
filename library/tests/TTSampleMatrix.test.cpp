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
	
	TTFloat32			numChannels = 2;
	TTFloat32			numSamples = 44100;
	TTFloat32			returnedChannels, returnedSamples;
	
	TTTestLog("Testing resize of SampleMatrix");
	
	this->setNumChannels(numChannels);
	this->getNumChannels(&returnedChannels);
	
	TTTestAssertion("The NumChannels has been set properly", 
					numChannels == returnedChannels,
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

