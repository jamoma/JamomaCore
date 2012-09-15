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
	TTUInt16			test1Return, test2Return, test4Return, test5Return, test7Return, test8Return;
	TTFloat32			test3Return, test6Return;
	
	TTTestLog("Test resizing of the SampleMatrix...");
	
	// TEST 1: can we set the number of channels?
	this->setAttributeValue(TT("numChannels"), numChannels);
	
	this->getAttributeValue(TT("numChannels"), test1Return);
	
	TTBoolean result = {numChannels == test1Return};
	
	TTTestAssertion("numChannels is set properly", 
					result,
					testAssertionCount, 
					errorCount);
	
	if(!result)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", numChannels, test1Return);	
	}
	
	// TEST 2: can we set the number of samples?
	this->setAttributeValue(TT("lengthInSamples"), numSamples);
	
	this->getAttributeValue(TT("lengthInSamples"), test2Return);

	TTBoolean result2 = {numSamples == test2Return};

	TTTestAssertion("lengthInSamples is set properly", 
								result2,
								testAssertionCount, 
								errorCount);
	if(!result2)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", numSamples, test2Return);	
	}
	
	// TEST 3: is the length in ms computed properly after setting length in samples?
	TTFloat32 computedDuration = (numSamples / this->mSampleRate) * 1000.;	
	
	this->getAttributeValue(TT("length"), test3Return);				
					
	TTBoolean result3 = TTTestFloatEquivalence(computedDuration, test3Return);
				
	TTTestAssertion("after lengthInSamples is set, length (in ms) is correct", 
								result3,
								testAssertionCount, 
								errorCount);
							
	if(!result3)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", computedDuration, test3Return);	
	}	
	
	/*
	
	// TEST 4 & 5: is the matrix of samples the expected size? (lifted from TTMatrix.test.cpp)
	TTTestAssertion("correct amount of data storage calculated", 
								this->mDataSize == sizeof(TTFloat64) * numChannels * numSamples, 
								testAssertionCount,
								errorCount);
	TTTestAssertion("correct byte-stride between values calculated", 
								this->mComponentStride == sizeof(TTFloat64), 
								testAssertionCount,
								errorCount);
								
	TTTestLog("Expected a value of %i, but returned mDataSize was %i", sizeof(TTFloat64) * numChannels * numSamples, this->mDataSize); // TEMP
								
	// TEST 6: can we set the length in milliseconds?
	this->setAttributeValue(TT("length"), duration);
	
	this->getAttributeValue(TT("length"), returnedDuration2);

	TTTestAssertion("length (in ms) is set properly", 
								duration == returnedDuration2,
								testAssertionCount, 
								errorCount);
	
	TTTestLog("Expected a value of %f, but returned length (in ms) was %f", duration, returnedDuration2);	// TEMP
								
	// TEST 7: is the length in samples computed properly after setting length in ms?
	computedSamples = TTUInt16(duration * this->mSampleRate * 0.001);	
	
	this->getAttributeValue(TT("lengthInSamples"), returnedSamples2);				
				
	//TTBoolean result = TTTestFloatEquivalence(computedSamples, returnedSamples);
				
	TTTestAssertion("after length (in ms) is set, lengthInSamples is correct", 
								computedSamples == returnedSamples2,
								testAssertionCount, 
								errorCount);
							
	if(computedSamples != returnedSamples2)
	{
		TTTestLog("Expected a value of %i, but returned lengthInSamples was %i", computedSamples, returnedSamples2);	
	}	
	
	
	
	// TEST 8 (REPEAT TEST 4): is the matrix of samples the expected size?
	TTUInt32 computedDataSize2 = sizeof(TTFloat64) * numChannels * returnedSamples2;
	
	TTTestAssertion("correct amount of data storage calculated with new length", 
								this->mDataSize == computedDataSize2, 
								testAssertionCount,
								errorCount);													
	
	if(this->mDataSize != computedDataSize2)
	{
		TTTestLog("Expected a value of %i, but returned mDataSize was %i", computedDataSize2, this->mDataSize);	
	}
	
	/*
	
	int					badSampleCount = 0;
	TTAudioObjectPtr	samplematrixObject = NULL;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	// TODO: test filling with sine wave
	// TODO: test scaling (applying gain)
	// TODO: test normalizing (with optional arg, and also without an optional arg)
	
	TTObjectInstantiate(TT("samplematrix"), &samplematrixObject, kTTVal1);
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	TTObjectRelease(&samplematrixObject);
	
	*/
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

