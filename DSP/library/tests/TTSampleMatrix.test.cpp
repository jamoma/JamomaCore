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
	TTInt16				numChannels = 2;
	TTUInt32			numSamples = 50000;  // TODO: xcode says this is ambiguous when signed?
	TTFloat32			duration = 1500;
	TTInt32				test9Index = 10;
	TTInt32				test10Index = 11;
	TTInt32				test1Return, test2Return, test7Return, test8Return;
	TTFloat32			test3Return, test6Return;
	TTSampleValue		test9Return, test10Return, test11Return, test12return, test13return;
	
	TTTestLog("Test resizing of the SampleMatrix...");
	
	
	// TEST 1: can we set the number of channels?
	this->setAttributeValue("numChannels", numChannels);
	
	this->getAttributeValue("numChannels", test1Return);
	
	TTBoolean result = { numChannels == test1Return };
	
	TTTestAssertion("numChannels is set properly", 
					result,
					testAssertionCount, 
					errorCount);
	
	if(!result)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", numChannels, test1Return);	
	}
	
	
	// TEST 2: can we set the number of samples?
	//this->setAttributeValue("lengthInSamples", numSamples);  // TODO: xcode says this is ambiguous?
	this->setLengthInSamples(numSamples);
	
	this->getAttributeValue("lengthInSamples", test2Return);

	TTBoolean result2 = { numSamples == test2Return };

	TTTestAssertion("lengthInSamples is set properly", 
								result2,
								testAssertionCount, 
								errorCount);
	if(!result2)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", numSamples, test2Return);	
	}
	
	
	// TEST 3: is the length in ms computed properly after setting length in samples?
	TTFloat32 computedDuration3 = (numSamples / this->mSampleRate) * 1000.;	
	
	this->getAttributeValue("length", test3Return);				
					
	TTBoolean result3 = TTTestFloatEquivalence(computedDuration3, test3Return);
				
	TTTestAssertion("after lengthInSamples is set, length (in ms) is correct", 
								result3,
								testAssertionCount, 
								errorCount);
							
	if(!result3)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", computedDuration3, test3Return);	
	}	
	
	
	// TEST 4: is the matrix of samples the expected size? (lifted from TTMatrix.test.cpp)
	TTUInt32 computedDataSize4 = sizeof(TTFloat64) * numChannels * numSamples;
	
	TTBoolean result4 = { computedDataSize4 == this->mDataSize };
	
	TTTestAssertion("correct amount of data storage calculated", 
								result4, 
								testAssertionCount,
								errorCount);
								
	if(!result4)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", computedDataSize4, this->mDataSize);
	}
	
	
	// TEST 5: Is the component stride right? (lifted from TTMatrix.test.cpp)
	TTBoolean result5 = { sizeof(TTFloat64) == this->mComponentStride };
								
	TTTestAssertion("correct byte-stride between values calculated", 
								result5, 
								testAssertionCount,
								errorCount);
								
	if(!result5)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", sizeof(TTFloat64), this->mComponentStride);
	}
	
									
	// TEST 6: can we set the length in milliseconds?
	this->setAttributeValue("length", duration);
	
	this->getAttributeValue("length", test6Return);

	TTBoolean result6 = TTTestFloatEquivalence(duration, test6Return);

	TTTestAssertion("length (in ms) is set properly", 
								result6,
								testAssertionCount, 
								errorCount);
	
	if(!result6)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", duration, test6Return);
	}

				
	// TEST 7: is the length in samples computed properly after setting length in ms?
	TTUInt32 computedSamples7 = TTUInt32(duration * this->mSampleRate * 0.001);	
					
	this->getAttributeValue("lengthInSamples", test7Return);				
	
	TTBoolean result7 = { computedSamples7 == test7Return };
				
	TTTestAssertion("after length (in ms) is set, lengthInSamples is correct", 
								result7,
								testAssertionCount, 
								errorCount);
							
	if(!result7)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", computedSamples7, test7Return);	
	}	
	
	
	// TEST 8 (REPEAT TEST 4 WITH NEW SIZE): is the matrix of samples the expected size?
	TTUInt32 computedDataSize8 = sizeof(TTFloat64) * numChannels * test7Return;
	
	TTBoolean result8 = { computedDataSize8 == this->mDataSize };
	
	TTTestAssertion("correct amount of data storage calculated with new length", 
								result8, 
								testAssertionCount,
								errorCount);													
	
	if(!result8)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", computedDataSize8, this->mDataSize);	
	}
	
	
	// TEST 9 & 10: set the value of two consecutive samples
	TTSampleValue pokeValue9 = TTRandom64();
	TTSampleValue pokeValue10 = TTRandom64();
	
	this->poke(test9Index, 0, pokeValue9);
	this->poke(test10Index, 0, pokeValue10);
	
	this->peek(test9Index, 0, test9Return);
	this->peek(test10Index, 0, test10Return);
	
	TTBoolean result9 = { pokeValue9 == test9Return };
	
	TTTestAssertion("set value one of two consecutive samples", 
								result9, 
								testAssertionCount,
								errorCount);													
	
	if(!result9)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", pokeValue9, test9Return);
	}
	
	TTBoolean result10 = { pokeValue10 == test10Return };
	
	TTTestAssertion("set value two of two consecutive samples", 
								result10, 
								testAssertionCount,
								errorCount);													
	
	if(!result10)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", pokeValue10, test10Return);
	}
	
	
	// TEST 11: test for interpolation between two consecutive samples
	TTFloat64 computedInterpFraction = TTRandom64();
	TTFloat64 computedInterpIndex = test9Index + computedInterpFraction;
	TTSampleValue computedInterpValue11 = (computedInterpFraction * pokeValue10) + ((1.0 - computedInterpFraction) * pokeValue9);
	
	this->peeki(computedInterpIndex, 0, test11Return);
	
	TTBoolean result11 = TTTestFloatEquivalence(computedInterpValue11, test11Return);
	
	TTTestAssertion("interpolate between two consecutive samples", 
								result11, 
								testAssertionCount,
								errorCount);													
	
	if(!result11)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", computedInterpValue11, test11Return);
	}
	

	// TODO: inbounds testing on hold until sorted out at TTMatrix parent class
	
	// TEST 12 & 13: test whether out of bounds indices produce errors at head
	
	TTInt32 computedIndex12 = -1; // 1 before the head
	TTInt32 computedIndex13 = 0; // the head
	TTErr test12Err = this->peek(computedIndex12, 0, test12return);
	TTErr test13Err = this->peek(computedIndex13, 0, test13return);
	
	TTBoolean result12 = { test12Err == kTTErrInvalidValue };
	TTBoolean result13 = { test13Err == kTTErrNone };
	
	TTTestAssertion("peeking sample before index 0 produces an error", 
								result12, 
								testAssertionCount,
								errorCount);													
	
	if(!result12)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", kTTErrInvalidValue, test12Err);
	}
	
	
	TTTestAssertion("peeking sample at index 0 produces no error", 
								result13, 
								testAssertionCount,
								errorCount);													
	
	if(!result13)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", kTTErrNone, test13Err);
	}
	
	// TEST 14 & 15: test whether out of bounds indices produce errors at tail
	
	TTInt32 computedIndex14 = test7Return; // should be latest size in samples
	TTInt32 computedIndex15 = test7Return - 1; // the tail is actually one less
	TTErr test14Err = this->poke(computedIndex12, 0, test12return);
	TTErr test15Err = this->poke(computedIndex13, 0, test13return);
	
	TTBoolean result14 = { test14Err == kTTErrInvalidValue };
	TTBoolean result15 = { test15Err == kTTErrNone };
	
	TTTestAssertion("poking sample after index max produces an error", 
								result14, 
								testAssertionCount,
								errorCount);													
	
	if(!result14)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", kTTErrInvalidValue, test14Err);
	}
	
	
	TTTestAssertion("poking sample at index max produces no error", 
								result15, 
								testAssertionCount,
								errorCount);													
	
	if(!result15)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", kTTErrNone, test15Err);
	}
	
	
	/*
	
	int					badSampleCount = 0;
	TTAudioObjectPtr	samplematrixObject = NULL;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	// TODO: test filling with sine wave
	// TODO: test scaling (applying gain)
	// TODO: test normalizing (with optional arg, and also without an optional arg)
	
	TTObjectInstantiate("samplematrix", &samplematrixObject, kTTVal1);
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	TTObjectRelease(&samplematrixObject);
	
	*/
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

