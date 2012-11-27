/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Unit tests for the SpatSnap SpatLib spatialisation renderer.
 *
 * @details
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTSpatSnap.h"




TTErr TTSpatSnap::test(TTValue& aReturnedTestInfo)
{
	// preliminary setup
	int					errorCount = 0;
	int					testAssertionCount = 0;
	
	// Attributes and messages
	TTSpatSnap::testSourceAndSinkCountSetterAndGetter(testAssertionCount, errorCount, aReturnedTestInfo);
	TTSpatSnap::testSourcePositionSetterAndGetter(testAssertionCount, errorCount, aReturnedTestInfo);
	TTSpatSnap::testSinkPositionSetterAndGetter(testAssertionCount, errorCount, aReturnedTestInfo);
	
	// Inspect matrix coefficients
	TTSpatSnap::testMatrixCoefficients(testAssertionCount, errorCount, aReturnedTestInfo);
	
	// Test audio processing
	TTSpatSnap::testAudioProcessing(testAssertionCount, errorCount, aReturnedTestInfo);
		
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, aReturnedTestInfo);
}

TTErr TTSpatSnap::testSourceAndSinkCountSetterAndGetter(int& aTestAssertionCount, int& anErrorCount, TTValue& aReturnedTestInfo)
{
	
	TTTestLog(" ");
	TTTestLog("Changing number of sources and sinks");
	TTTestLog(" ");
	
	// Check that sourceCount defaults to 1
	
	TTFloat64 sourceCountTest;
	TTFloat64 sinkCountTest;
	
	this->getAttributeValue("sourceCount", sourceCountTest);
	TTTestAssertion("sourceCount attribute defaults to 1",
					TTTestFloatEquivalence(sourceCountTest, 1.),
					aTestAssertionCount,
					anErrorCount);
	
	// Check that sinkCount defaults to 1
	
	this->getAttributeValue("sinkCount", sinkCountTest);
	TTTestAssertion("sinkCount attribute attribute defaults to 1",
					TTTestFloatEquivalence(sinkCountTest, 1.),
					aTestAssertionCount,
					anErrorCount);
	
	// Test initial matrix size:
	
	TTTestAssertion("Initial matrix has 1 row",
					(this->mRenderer->mMixerMatrixCoefficients->getRowCount())==1,
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("Initial matrix has 1 column",
					(this->mRenderer->mMixerMatrixCoefficients->getColumnCount())==1,
					aTestAssertionCount,
					anErrorCount);
	
	// Test setter and getter for sourceCount attribute
	
	this->setAttributeValue("sourceCount", 7);
	this->getAttributeValue("sourceCount", sourceCountTest);
	TTTestAssertion("setter and getter for sourceCount attribute",
					TTTestFloatEquivalence(sourceCountTest, 7.),
					aTestAssertionCount,
					anErrorCount);
	
	// Test setter and getter for sinkCount attribute
	
	this->setAttributeValue("sinkCount", 5);
	this->getAttributeValue("sinkCount", sinkCountTest);
	TTTestAssertion("setter and getter for sinkCount attribute",
					TTTestFloatEquivalence(sinkCountTest, 5.),
					aTestAssertionCount,
					anErrorCount);
	
	// Test initial matrix size:
	
	TTTestAssertion("Matrix now has 7 rows",
					(this->mRenderer->mMixerMatrixCoefficients->getRowCount())==7,
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("Initial matrix has 5 columns",
					(this->mRenderer->mMixerMatrixCoefficients->getColumnCount())==5,
					aTestAssertionCount,
					anErrorCount);

	
	TTTestLog("testing");
	return kTTErrNone;
}


TTErr TTSpatSnap::testSourcePositionSetterAndGetter(int& aTestAssertionCount, int& anErrorCount, TTValue& aReturnedTestInfo)
{
	TTValue anEntity;
	TTValue unused;
	anEntity.setSize(4);
	
	anEntity.setSize(4);
	
	// Set source 1: (-2., -3.14, -4.2)
	anEntity.set(0, 1);
	anEntity.set(1, -2.);
	anEntity.set(2, -3.14);
	anEntity.set(3, -4.2);
	this->sendMessage("setSourcePosition", anEntity, unused);
	
	// Source 2: Default = (0., 0., 0.) so we don't set it.
	
	// Set source 3: (3.1, 0.2, -0.2)
	
	anEntity.set(0, 3);
	anEntity.set(1, 3.1);
	anEntity.set(2, 0.2);
	anEntity.set(3, -0.2);
	this->sendMessage("setSourcePosition", anEntity, unused);
	
	// Set source 4: (0., 4.6, 0.)
	
	anEntity.set(0, 4);
	anEntity.set(1, 0.);
	anEntity.set(2, 4.6);
	anEntity.set(3, 0.);
	this->sendMessage("setSourcePosition", anEntity, unused);
	
	// Set source 5: (-0.1, 0.1, 5.5)
	
	anEntity.set(0, 5);
	anEntity.set(1, -0.1);
	anEntity.set(2, 0.1);
	anEntity.set(3, 5.5);
	this->sendMessage("setSourcePosition", anEntity, unused);
	
	// Now we test five source positions:
	
	TTValue getChannel;
	TTFloat64 x, y, z;
	TTInt16 channelNumber;
	
	getChannel.setSize(1);
	
	getChannel.setSize(1);
	
	
	// Get and test source 1:
	
	TTTestLog(" ");
	TTTestLog("Setting and getting position of source 1");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 1);
	
	this->sendMessage("getSourcePosition", getChannel, anEntity);
	
	TTTestAssertion("getSourcePosition[1]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					aTestAssertionCount,
					anErrorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSourcePosition[1]: Returning position for correct channel",
					(channelNumber==1),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[1]: Returning correct x-position",
					TTTestFloatEquivalence(x, -2.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[1]: Returning correct y-position",
					TTTestFloatEquivalence(y, -3.14),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[1]: Returning correct z-position",
					TTTestFloatEquivalence(z, -4.2),
					aTestAssertionCount,
					anErrorCount);
	
	// Get and test source 2:
	
	TTTestLog(" ");
	TTTestLog("Getting default position of source 2");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 2);
	
	this->sendMessage("getSourcePosition", getChannel, anEntity);
	
	TTTestAssertion("getSourcePosition[2]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					aTestAssertionCount,
					anErrorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSourcePosition[2]: Returning position for correct channel",
					(channelNumber==2),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[2]: Returning correct default x-position",
					TTTestFloatEquivalence(x, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[2]: Returning correct default y-position",
					TTTestFloatEquivalence(y, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[2]: Returning correct default z-position",
					TTTestFloatEquivalence(z, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	// Get and test source 3:
	
	TTTestLog(" ");
	TTTestLog("Setting and getting position of source 3");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 3);
	
	this->sendMessage("getSourcePosition", getChannel, anEntity);
	
	TTTestAssertion("getSourcePosition[3]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					aTestAssertionCount,
					anErrorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSourcePosition[3]: Returning position for correct channel",
					(channelNumber==3),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[3]: Returning correct x-position",
					TTTestFloatEquivalence(x, 3.1),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[3]: Returning correct y-position",
					TTTestFloatEquivalence(y, 0.2),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[3]: Returning correct z-position",
					TTTestFloatEquivalence(z, -0.2),
					aTestAssertionCount,
					anErrorCount);
	
	// Get and test source 4:
	
	TTTestLog(" ");
	TTTestLog("Setting and getting position of source 4");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 4);
	
	this->sendMessage("getSourcePosition", getChannel, anEntity);
	
	TTTestAssertion("getSourcePosition[4]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					aTestAssertionCount,
					anErrorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSourcePosition[4]: Returning position for correct channel",
					(channelNumber==4),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[4]: Returning correct x-position",
					TTTestFloatEquivalence(x, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[4]: Returning correct y-position",
					TTTestFloatEquivalence(y, 4.6),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[4]: Returning correct z-position",
					TTTestFloatEquivalence(z, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	
	// Get and test source 5:
	
	TTTestLog(" ");
	TTTestLog("Setting and getting position of source 5");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 5);
	
	this->sendMessage("getSourcePosition", getChannel, anEntity);
	
	TTTestAssertion("getSourcePosition[5]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					aTestAssertionCount,
					anErrorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSourcePosition[5]: Returning position for correct channel",
					(channelNumber==5),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[5]: Returning correct x-position",
					TTTestFloatEquivalence(x, -0.1),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[5]: Returning correct y-position",
					TTTestFloatEquivalence(y, 0.1),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSourcePosition[5]: Returning correct z-position",
					TTTestFloatEquivalence(z, 5.5),
					aTestAssertionCount,
					anErrorCount);
	
	return kTTErrNone;
}

TTErr TTSpatSnap::testSinkPositionSetterAndGetter(int& aTestAssertionCount, int& anErrorCount, TTValue& aReturnedTestInfo)
{	
	// Set the location of five sinks:
	
	TTValue anEntity;
	TTValue unused;
	anEntity.setSize(4);
	
	// Sink 1: Default = (0., 0., 0.) so we don't set it.
	
	// Sink 2: (2.2, 0., 0.)
	
	anEntity.set(0, 2);
	anEntity.set(1, 2.2);
	anEntity.set(2, 0.);
	anEntity.set(3, 0.);
	this->sendMessage("setSinkPosition", anEntity, unused);
	
	// Sink 3: (0., 3.3, 0.)
	
	anEntity.set(0, 3);
	anEntity.set(1, 0.);
	anEntity.set(2, 3.3);
	anEntity.set(3, 0.);
	this->sendMessage("setSinkPosition", anEntity, unused);
	
	// Sink 4: (0., 0., 4.4)
	
	anEntity.set(0, 4);
	anEntity.set(1, 0.);
	anEntity.set(2, 0.);
	anEntity.set(3, 4.4);
	this->sendMessage("setSinkPosition", anEntity, unused);
	
	// Sink 5: (-2., -3.14, -4.)
	
	anEntity.set(0, 5);
	anEntity.set(1, -2.);
	anEntity.set(2, -3.14);
	anEntity.set(3, -4.);
	this->sendMessage("setSinkPosition", anEntity, unused);
	
	// Now we test five sink positions:
	
	TTValue getChannel;
	TTFloat64 x, y, z;
	TTInt16 channelNumber;
	
	getChannel.setSize(1);
	
	// Get and test sink 1:
	
	TTTestLog(" ");
	TTTestLog("Getting default position of sink 1");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 1);
	
	this->sendMessage("getSinkPosition", getChannel, anEntity);
	
	TTTestAssertion("getSinkPosition[1]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					aTestAssertionCount,
					anErrorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSinkPosition[1]: Returning position for correct channel",
					(channelNumber==1),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[1]: Returning correct default x-position",
					TTTestFloatEquivalence(x, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[1]: Returning correct default y-position",
					TTTestFloatEquivalence(y, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[1]: Returning correct default z-position",
					TTTestFloatEquivalence(z, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	
	// Get and test sink 2:
	
	TTTestLog(" ");
	TTTestLog("Setting and getting position of sink 2");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 2);
	
	this->sendMessage("getSinkPosition", getChannel, anEntity);
	
	TTTestAssertion("getSinkPosition[2]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					aTestAssertionCount,
					anErrorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSinkPosition[2]: Returning position for correct channel",
					(channelNumber==2),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[2]: Returning correct x-position",
					TTTestFloatEquivalence(x, 2.2),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[2]: Returning correct y-position",
					TTTestFloatEquivalence(y, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[2]: Returning correct z-position",
					TTTestFloatEquivalence(z, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	
	// Get and test sink 3:
	
	TTTestLog(" ");
	TTTestLog("Setting and getting position of sink 3");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 3);
	
	this->sendMessage("getSinkPosition", getChannel, anEntity);
	
	TTTestAssertion("getSinkPosition[3]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					aTestAssertionCount,
					anErrorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSinkPosition[3]: Returning position for correct channel",
					(channelNumber==3),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[3]: Returning correct x-position",
					TTTestFloatEquivalence(x, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[3]: Returning correct y-position",
					TTTestFloatEquivalence(y, 3.3),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[3]: Returning correct z-position",
					TTTestFloatEquivalence(z, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	
	// Get and test sink 4:
	
	TTTestLog(" ");
	TTTestLog("Setting and getting position of sink 4");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 4);
	
	this->sendMessage("getSinkPosition", getChannel, anEntity);
	
	TTTestAssertion("getSinkPosition[4]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					aTestAssertionCount,
					anErrorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSinkPosition[4]: Returning position for correct channel",
					(channelNumber==4),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[4]: Returning correct x-position",
					TTTestFloatEquivalence(x, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[4]: Returning correct y-position",
					TTTestFloatEquivalence(y, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[4]: Returning correct z-position",
					TTTestFloatEquivalence(z, 4.4),
					aTestAssertionCount,
					anErrorCount);
	
	
	// Get and test sink 5:
	
	TTTestLog(" ");
	TTTestLog("Setting and getting position of sink 5");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 5);
	
	this->sendMessage("getSinkPosition", getChannel, anEntity);
	
	TTTestAssertion("getSinkPosition[5]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					aTestAssertionCount,
					anErrorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSinkPosition[5]: Returning position for correct channel",
					(channelNumber==5),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[5]: Returning correct x-position",
					TTTestFloatEquivalence(x, -2.),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[5]: Returning correct y-position",
					TTTestFloatEquivalence(y, -3.14),
					aTestAssertionCount,
					anErrorCount);
	
	TTTestAssertion("getSinkPosition[5]: Returning correct z-position",
					TTTestFloatEquivalence(z, -4.),
					aTestAssertionCount,
					anErrorCount);
	
	return kTTErrNone;
}

TTErr TTSpatSnap::testMatrixCoefficients(int& aTestAssertionCount, int& anErrorCount, TTValue& aReturnedTestInfo)
{
	TTFloat64 expectedValues[7][5];
	TTFloat64 retrievedCoefficientValues[7][5];
	TTFloat64 diff;
	TTFloat64 absDiffSum=0;
	
	// Extected matrix values based on matrix size and source/sink positions as set in previous methods
	expectedValues[0][0] = 0.;
	expectedValues[0][1] = 0.;
	expectedValues[0][2] = 0.;
	expectedValues[0][3] = 0.;
	expectedValues[0][4] = 1.;

	expectedValues[1][0] = 1.;
	expectedValues[1][1] = 0.;
	expectedValues[1][2] = 0.;
	expectedValues[1][3] = 0.;
	expectedValues[1][4] = 0.;

	expectedValues[2][0] = 0.;
	expectedValues[2][1] = 1.;
	expectedValues[2][2] = 0.;
	expectedValues[2][3] = 0.;
	expectedValues[2][4] = 0.;

	expectedValues[3][0] = 0.;
	expectedValues[3][1] = 0.;
	expectedValues[3][2] = 1.;
	expectedValues[3][3] = 0.;
	expectedValues[3][4] = 0.;

	expectedValues[4][0] = 0.;
	expectedValues[4][1] = 0.;
	expectedValues[4][2] = 0.;
	expectedValues[4][3] = 1.;
	expectedValues[4][4] = 0.;

	expectedValues[5][0] = 1.;
	expectedValues[5][1] = 0.;
	expectedValues[5][2] = 0.;
	expectedValues[5][3] = 0.;
	expectedValues[5][4] = 0.;

	expectedValues[6][0] = 1.;
	expectedValues[6][1] = 0.;
	expectedValues[6][2] = 0.;
	expectedValues[6][3] = 0.;
	expectedValues[6][4] = 0.;
	
	// Get all current matrix coefficients
	for (TTInt16 row=0; row<7; row++) {
		for (TTInt16 col=0; col<5; col++) {
			this->mRenderer->mMixerMatrixCoefficients->get2d(row, col, retrievedCoefficientValues[row][col]);
			diff = retrievedCoefficientValues[row][col] - expectedValues[row][col];
			absDiffSum += diff*diff;
		}
	}
	
	TTTestLog("");
	TTTestAssertion("Correct matrix coefficients",
					TTTestFloatEquivalence(absDiffSum, 0.),
					aTestAssertionCount,
					anErrorCount);
	
	return kTTErrNone;
}

TTErr TTSpatSnap::testAudioProcessing(int& aTestAssertionCount, int& anErrorCount, TTValue& aReturnedTestInfo)
{
	TTAudioSignalPtr input = NULL;
	TTAudioSignalPtr output = NULL;
	
	// create audio signal objects
	TTObjectInstantiate(kTTSym_audiosignal, &input, 7);
	TTObjectInstantiate(kTTSym_audiosignal, &output, 5);
	
	input->allocWithVectorSize(64);
	output->allocWithVectorSize(64);
	
	for (TTInt16 sample=0; sample<64; sample++)
		input->mSampleVectors[0][sample] = 1.0;
	
	for (TTInt16 sample=0; sample<64; sample++)
		input->mSampleVectors[1][sample] = 2.0;
	
	for (TTInt16 sample=0; sample<64; sample++)
		input->mSampleVectors[2][sample] = 4.0;
	
	for (TTInt16 sample=0; sample<64; sample++)
		input->mSampleVectors[3][sample] = 8.0;
	
	for (TTInt16 sample=0; sample<64; sample++)
		input->mSampleVectors[4][sample] = 16.0;
	
	for (TTInt16 sample=0; sample<64; sample++)
		input->mSampleVectors[5][sample] = 32.0;
	
	for (TTInt16 sample=0; sample<64; sample++)
		input->mSampleVectors[6][sample] = 64.0;
	
	this->process(input, output);
	
	
	// Test processed audio
	TTTestLog("");
	
	// Sink 1 receieves signal fra source 2, 6 and 7: Expected value equals 2. + 32. +64. = 98.
	
	int validSampleCount = 0;
	TTSampleValuePtr samples = output->mSampleVectors[0];
	
	for (int i=0; i<64; i++) {
		validSampleCount += TTTestFloatEquivalence(98., samples[i]);
	}
	TTTestAssertion("Correct audio signal processed to sink 1",
					validSampleCount == 64,
					aTestAssertionCount,
					anErrorCount);
	TTTestLog("Number of bad samples: %i", 64-validSampleCount);
	
	// Sink 2 receieves signal fra source 3: Expected value equals 4.
	
	validSampleCount = 0;
	samples = output->mSampleVectors[1];
	
	for (int i=0; i<64; i++) {
		validSampleCount += TTTestFloatEquivalence(4., samples[i]);
	}
	TTTestAssertion("Correct audio signal processed to sink 2",
					validSampleCount == 64,
					aTestAssertionCount,
					anErrorCount);
	TTTestLog("Number of bad samples: %i", 64-validSampleCount);
	
	// Sink 3 receieves signal fra source 4: Expected value equals 8.
	
	validSampleCount = 0;
	samples = output->mSampleVectors[2];
	
	for (int i=0; i<64; i++) {
		validSampleCount += TTTestFloatEquivalence(8., samples[i]);
	}
	TTTestAssertion("Correct audio signal processed to sink 3",
					validSampleCount == 64,
					aTestAssertionCount,
					anErrorCount);
	TTTestLog("Number of bad samples: %i", 64-validSampleCount);
	
	// Sink 4 receieves signal fra source 5: Expected value equals 16.
	
	validSampleCount = 0;
	samples = output->mSampleVectors[3];
	
	for (int i=0; i<64; i++) {
		validSampleCount += TTTestFloatEquivalence(16., samples[i]);
	}
	TTTestAssertion("Correct audio signal processed to sink 4",
					validSampleCount == 64,
					aTestAssertionCount,
					anErrorCount);
	TTTestLog("Number of bad samples: %i", 64-validSampleCount);
	
	// Sink 5 receieves signal fra source 1: Expected value equals 1.
	
	validSampleCount = 0;
	samples = output->mSampleVectors[4];
	
	for (int i=0; i<64; i++) {
		validSampleCount += TTTestFloatEquivalence(1., samples[i]);
	}
	TTTestAssertion("Correct audio signal processed to sink 5",
					validSampleCount == 64,
					aTestAssertionCount,
					anErrorCount);
	TTTestLog("Number of bad samples: %i", 64-validSampleCount);
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	
	return kTTErrNone;
}
