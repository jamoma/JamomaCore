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
	TTInt32				numSamples = 50000;
	TTFloat32			duration = 1500;
	TTInt32				test9Index = 10;
	TTInt32				test10Index = 11;
	TTInt32				test1Return, test2Return, test7Return, test8Return;
	TTFloat32			test3Return, test6Return;
	TTSampleValue		test9Return, test10Return, test11Return, test12return;
	
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
	this->setAttributeValue(TT("lengthInSamples"), numSamples);
	
	this->getAttributeValue(TT("lengthInSamples"), test2Return);

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
	
	this->getAttributeValue(TT("length"), test3Return);				
					
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
	this->setAttributeValue(TT("length"), duration);
	
	this->getAttributeValue(TT("length"), test6Return);

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
					
	this->getAttributeValue(TT("lengthInSamples"), test7Return);				
	
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
	
	this->poke(test9Index, 1, pokeValue9);
	this->poke(test10Index, 1, pokeValue10);
	
	this->peek(test9Index, 1, test9Return);
	this->peek(test10Index, 1, test10Return);
	
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
	TTSampleValue computedInterpValue11 = (computedInterpFraction * pokeValue9) + ((1.0 - computedInterpFraction) * pokeValue10);
	
	this->peeki(computedInterpIndex, 1, test11Return);
	
	TTBoolean result11 = TTTestFloatEquivalence(computedInterpValue11, test11Return);
	
	TTTestAssertion("interpolate between two consecutive samples", 
								result11, 
								testAssertionCount,
								errorCount);													
	
	if(!result11)
	{
		TTTestLog("Expected a value of %f, but returned value was %f", computedInterpValue11, test11Return);
	}
	
	/*
	// TODO: inbounds testing on hold until sorted out at TTMatrix parent class
	
	// TEST 12: test the new inBounds method
	
	TTUInt32 computedSampleAfterTail12 = -10; //test7Return + 5;
	TTErr test12Err = this->peek(computedSampleAfterTail12, 1, test12return);
	
	TTTestAssertion("retrieving sample out of bounds produces an error", 
								test12Err == kTTErrInvalidValue, 
								testAssertionCount,
								errorCount);													
	
	if(test12Err != kTTErrInvalidValue)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", kTTErrInvalidValue, test12Err);
	}
	
	
	TTUInt32 computedDistanceFromHead12 = test7Return * test1Return
	
	computedDistanceFromHead12 -= 50; // 50 before tail
	TTBoolean result12 = this->inBounds(computedDistanceFromHead12);
	
	if(result12)
	{
		TTTestLog("Testing in bounds 12 returned true, %i", computedDistanceFromHead12);
	}
	
	computedDistanceFromHead12 += 50; // at tail
	TTBoolean result13 = this->inBounds(computedDistanceFromHead12);
	
	if(result13)
	{
		TTTestLog("Testing in bounds 13 returned true, %i", computedDistanceFromHead12);
	}
	
	computedDistanceFromHead12 += 1; // 1 after tail
	TTBoolean result14 = this->inBounds(computedDistanceFromHead12);
	
	if(!result14)
	{
		TTTestLog("Testing in bounds 14 returned false, %i", computedDistanceFromHead12);
	}
	
	TTBoolean result15 = this->inBounds(-1);
	
	if(!result15)
	{
		TTTestLog("Negative values return false: %i", -1);
	}
	
	TTBoolean result16 = this->inBounds(0);
	
	if(!result16)
	{
		TTTestLog("Zero returns false: %i", 0);
	}
	*/
	
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

