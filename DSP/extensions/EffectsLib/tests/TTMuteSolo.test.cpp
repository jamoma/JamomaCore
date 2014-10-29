/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief Unit tests for #TTMuteSolo
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2014, Trond Lossius @n
 * License: This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTMuteSolo.h"


TTUInt16 verifyOutputSignal(TTAudio &output, TTFloat64 f0, TTFloat64 f1, TTFloat64 f2, TTFloat64 f3)
{
	int	validSampleCount = 0;
		
	TTSampleValuePtr outSamples0 = output.rawSamples()[0];
	TTSampleValuePtr outSamples1 = output.rawSamples()[1];
	TTSampleValuePtr outSamples2 = output.rawSamples()[2];
	TTSampleValuePtr outSamples3 = output.rawSamples()[3];
	
	for (int i=0; i<64; i++) {
		validSampleCount += TTTestFloatEquivalence(f0, outSamples0[i]);
		validSampleCount += TTTestFloatEquivalence(f1, outSamples1[i]);
		validSampleCount += TTTestFloatEquivalence(f2, outSamples2[i]);
		validSampleCount += TTTestFloatEquivalence(f3, outSamples3[i]);
	}
	return 256 - validSampleCount; // 4 channels * 64 samples = 256 samples
	
}

TTErr TTMutesolo::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	TTUInt16			invalidSampleCount;
	
	// Test 1: Test how many channels we store info for initially
	TTTestAssertion("Default number of channels stored is 1",
					this->mStoredStateNumChannels == 1,
					testAssertionCount,
					errorCount);
	
	
	// Test 2a: Mute a channel and confirm that the number of channels stored have been increased accordingly
	TTValue argIn = 2;
	argIn.append(1);
	TTValue argOut;
	this->setChannelMute(argIn, argOut);
	this->getChannelMute(argIn, argOut);
	
	// Test how many channels we store info for initially
	TTTestAssertion("Number of channels correctly increased",
					argOut.size() == 3,
					testAssertionCount,
					errorCount);
	
	// Test 2b: Test that we have correct mute settings:
	TTFloat64 absdiff = fabs((TTFloat64)argOut[0]) + fabs((TTFloat64)argOut[1]) + fabs(((TTFloat64)argOut[2]-1.));
	TTTestAssertion("Channel mute set correctly",
					TTTestFloatEquivalence(absdiff, 0.0),
					testAssertionCount,
					errorCount);
	
	
	
	// TEST 3: Set solo on a new channel and test that the number of channels stored have been increased accordingly
	argIn = 3;
	argIn.append(1);
	this->setChannelSolo(argIn, argOut);
	this->getChannelSolo(argIn, argOut);
	
	// TEST 3A: Test how many channels we store info for initially
	TTTestAssertion("Number of channels correctly increased",
					argOut.size() == 4,
					testAssertionCount,
					errorCount);
	
	// TEST 3B: Test that we have correct solo settings:
	absdiff = fabs((TTFloat64)argOut[0]) + fabs((TTFloat64)argOut[1]) + fabs((TTFloat64)argOut[2]) + fabs(((TTFloat64)argOut[3]-1.));
	TTTestAssertion("Channel mute set correctly",
					TTTestFloatEquivalence(absdiff, 0.0),
					testAssertionCount,
					errorCount);
	
	// TEST 3C: Test that we have maintained correct mute settings:
	this->getChannelMute(argIn, argOut);
	absdiff = fabs((TTFloat64)argOut[0]) + fabs((TTFloat64)argOut[1]) + fabs(((TTFloat64)argOut[2]-1.)) + fabs((TTFloat64)argOut[3]);
	TTTestAssertion("Channel mute set correctly",
					TTTestFloatEquivalence(absdiff, 0.0),
					testAssertionCount,
					errorCount);
	
	
	
	// Preparing to test processed audio signals:

	// Set the object to process 4 channels
	this->set(kTTSym_maxNumChannels, 4);
		
	// Create two 4-channel audio signals
	TTAudio input(4);
	TTAudio output(4);
	
	input.allocWithVectorSize(64);
	output.allocWithVectorSize(64);
	
	// Fill the input vectors:
	for (int i=0; i<64; i++) {
		input.rawSamples()[0][i] = 1.;
		input.rawSamples()[1][i] = 2.;
		input.rawSamples()[2][i] = 4.;
		input.rawSamples()[3][i] = 8.;
	}
	
	
	
	// TEST 4: Are we about to process 4 channels?
	TTTestAssertion("Ensuring that 4 channels are to be processed",
					this->mMaxNumChannels == 4,
					testAssertionCount,
					errorCount);
	
	
	
	// TEST 5: Testing that soloing works
	this->process(input, output);
	
	invalidSampleCount = verifyOutputSignal(output, 0., 0., 0., 8.);
	TTTestAssertion("Soloing seems to work",
					invalidSampleCount == 0, //
					testAssertionCount,
					errorCount);
	if (invalidSampleCount)
		TTTestLog("Number of bad samples: %i", invalidSampleCount);;
	
	
	
	// TEST 6: testing that muting works
	argIn = 3;
	argIn.append(0);	// Disable soloing again
	this->setChannelSolo(argIn, argOut);
	this->getChannelSolo(argIn, argOut);
	
	this->process(input, output);
	
	invalidSampleCount = verifyOutputSignal(output, 1., 2., 0., 8.);
	TTTestAssertion("Muting seems to work",
					invalidSampleCount == 0, //
					testAssertionCount,
					errorCount);
	if (invalidSampleCount)
		TTTestLog("Number of bad samples: %i", invalidSampleCount);;
	
	
	
	// TEST 7: Testing clear()
	this->clear();
	
	this->process(input, output);
	
	invalidSampleCount = verifyOutputSignal(output, 1., 2., 4., 8.);
	TTTestAssertion("clear() seems to work",
					invalidSampleCount == 0, //
					testAssertionCount,
					errorCount);
	if (invalidSampleCount)
		TTTestLog("Number of bad samples: %i", invalidSampleCount);;

	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
