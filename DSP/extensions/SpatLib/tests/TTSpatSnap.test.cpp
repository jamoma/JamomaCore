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




TTErr TTSpatSnap::test(TTValue& returnedTestInfo)
{
	// preliminary setup
	
	
	int					errorCount = 0;
	int					testAssertionCount = 0;
	
	TTSpatSnap::testSourceAndSinkCountSetterAndGetter(testAssertionCount, errorCount, returnedTestInfo);

	TTSpatSnap::testSourcePositionSetterAndGetter(testAssertionCount, errorCount, returnedTestInfo);
	
	/************************************************************
	 *
	 * Setting and getting sink positions
	 *
	 ************************************************************/
	
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
	TTTestLog("Testing position of sink 1");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 1);
	
	this->sendMessage("getSinkPosition", getChannel, anEntity);
	
	TTTestAssertion("getSinkPosition[1]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					testAssertionCount,
					errorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSinkPosition[1]: Returning position for correct channel",
					(channelNumber==1),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[1]: Returning correct default x-position",
					TTTestFloatEquivalence(x, 0.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[1]: Returning correct default y-position",
					TTTestFloatEquivalence(y, 0.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[1]: Returning correct default z-position",
					TTTestFloatEquivalence(z, 0.),
					testAssertionCount,
					errorCount);
	
	
	// Get and test sink 2:
	
	TTTestLog(" ");
	TTTestLog("Testing position of sink 2");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 2);
	
	this->sendMessage("getSinkPosition", getChannel, anEntity);
	
	TTTestAssertion("getSinkPosition[2]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					testAssertionCount,
					errorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSinkPosition[2]: Returning position for correct channel",
					(channelNumber==2),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[2]: Returning correct x-position",
					TTTestFloatEquivalence(x, 2.2),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[2]: Returning correct y-position",
					TTTestFloatEquivalence(y, 0.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[2]: Returning correct z-position",
					TTTestFloatEquivalence(z, 0.),
					testAssertionCount,
					errorCount);
	
	
	// Get and test sink 3:
	
	TTTestLog(" ");
	TTTestLog("Testing position of sink 3");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 3);
	
	this->sendMessage("getSinkPosition", getChannel, anEntity);
	
	TTTestAssertion("getSinkPosition[3]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					testAssertionCount,
					errorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSinkPosition[3]: Returning position for correct channel",
					(channelNumber==3),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[3]: Returning correct x-position",
					TTTestFloatEquivalence(x, 0.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[3]: Returning correct y-position",
					TTTestFloatEquivalence(y, 3.3),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[3]: Returning correct z-position",
					TTTestFloatEquivalence(z, 0.),
					testAssertionCount,
					errorCount);
	
	
	// Get and test sink 4:
	
	TTTestLog(" ");
	TTTestLog("Testing position of sink 4");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 4);
	
	this->sendMessage("getSinkPosition", getChannel, anEntity);
	
	TTTestAssertion("getSinkPosition[4]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					testAssertionCount,
					errorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSinkPosition[4]: Returning position for correct channel",
					(channelNumber==4),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[4]: Returning correct x-position",
					TTTestFloatEquivalence(x, 0.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[4]: Returning correct y-position",
					TTTestFloatEquivalence(y, 0.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[4]: Returning correct z-position",
					TTTestFloatEquivalence(z, 4.4),
					testAssertionCount,
					errorCount);
	
	
	// Get and test sink 5:
	
	TTTestLog(" ");
	TTTestLog("Testing position of sink 5");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 5);
	
	this->sendMessage("getSinkPosition", getChannel, anEntity);
	
	TTTestAssertion("getSinkPosition[5]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					testAssertionCount,
					errorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSinkPosition[5]: Returning position for correct channel",
					(channelNumber==5),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[5]: Returning correct x-position",
					TTTestFloatEquivalence(x, -2.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[5]: Returning correct y-position",
					TTTestFloatEquivalence(y, -3.14),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[5]: Returning correct z-position",
					TTTestFloatEquivalence(z, -4.),
					testAssertionCount,
					errorCount);
	
	/************************************************************
	 *
	 * Test mRenderer matrix coefficients for current sources and sinks
	 *
	 ************************************************************/
	
	TTFloat64 cellValue;
	TTFloat64 cellValueSquareSum;
	
	// Test that all cell values are still equaling 0.
	cellValueSquareSum = 0.;
	for (TTInt16 row=0; row<7; row++)
	{
		for (TTInt16 col=0; col<5; col++)
		{
			this->mRenderer.mMixerMatrixCoefficients->get2d(row, col, cellValue);
			cellValueSquareSum += cellValue*cellValue;
			TTTestLog("cellValueSquareSum = %f", cellValueSquareSum);
			TTTestLog("cell[%i,%i] = %f", row, col, cellValue);
		}
	}
	
	// Test that all cell values are still equaling 0.
	cellValueSquareSum = 0.;
	for (TTInt16 row=0; row<7; row++)
	{
		for (TTInt16 col=0; col<5; col++)
		{
			this->mRenderer.mMixerMatrixCoefficients->get2d(row, col, cellValue);
			TTTestLog("cell[%i,%i] = %f", row, col, cellValue);
		}
		TTTestLog(" ");
	}
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

TTErr TTSpatSnap::testSourceAndSinkCountSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo)
{
	
	TTTestLog("Testing TTSpatSnap attributes and messages");
	TTTestLog(" ");
	
	// Check that sourceCount defaults to 1
	
	TTFloat64 sourceCountTest;
	TTFloat64 sinkCountTest;
	
	this->getAttributeValue("sourceCount", sourceCountTest);
	TTTestAssertion("sourceCount attribute defaults to 1",
					TTTestFloatEquivalence(sourceCountTest, 1.),
					testAssertionCount,
					errorCount);
	
	// Check that sinkCount defaults to 1
	
	this->getAttributeValue("sinkCount", sinkCountTest);
	TTTestAssertion("sinkCount attribute attribute defaults to 1",
					TTTestFloatEquivalence(sinkCountTest, 1.),
					testAssertionCount,
					errorCount);
	
	// Test initial matrix size:
	
	TTTestAssertion("Initial matrix has 1 row",
					(this->mRenderer.mMixerMatrixCoefficients->getRowCount())==1,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("Initial matrix has 1 column",
					(this->mRenderer.mMixerMatrixCoefficients->getColumnCount())==1,
					testAssertionCount,
					errorCount);
	
	// Test setter and getter for sourceCount attribute
	
	this->setAttributeValue("sourceCount", 7);
	this->getAttributeValue("sourceCount", sourceCountTest);
	TTTestAssertion("setter and getter for sourceCount attribute",
					TTTestFloatEquivalence(sourceCountTest, 7.),
					testAssertionCount,
					errorCount);
	
	// Test setter and getter for sinkCount attribute
	
	this->setAttributeValue("sinkCount", 5);
	this->getAttributeValue("sinkCount", sinkCountTest);
	TTTestAssertion("setter and getter for sinkCount attribute",
					TTTestFloatEquivalence(sinkCountTest, 5.),
					testAssertionCount,
					errorCount);
	
	// Test initial matrix size:
	
	TTTestAssertion("Matrix now has 7 rows",
					(this->mRenderer.mMixerMatrixCoefficients->getRowCount())==7,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("Initial matrix has 5 columns",
					(this->mRenderer.mMixerMatrixCoefficients->getColumnCount())==5,
					testAssertionCount,
					errorCount);

	
	TTTestLog("testing");
	return kTTErrNone;
}


TTErr TTSpatSnap::testSourcePositionSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo)
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
	
	// Set source 3: (33.3, 0., 0.)
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
	TTTestLog("Testing position of source 1");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 1);
	
	this->sendMessage("getSourcePosition", getChannel, anEntity);
	
	TTTestAssertion("getSourcePosition[1]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					testAssertionCount,
					errorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSourcePosition[1]: Returning position for correct channel",
					(channelNumber==1),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[1]: Returning correct x-position",
					TTTestFloatEquivalence(x, -2.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[1]: Returning correct y-position",
					TTTestFloatEquivalence(y, -3.14),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[1]: Returning correct z-position",
					TTTestFloatEquivalence(z, -4.2),
					testAssertionCount,
					errorCount);
	
	// Get and test source 2:
	
	TTTestLog(" ");
	TTTestLog("Testing position of source 2");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 2);
	
	this->sendMessage("getSourcePosition", getChannel, anEntity);
	
	TTTestAssertion("getSourcePosition[2]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					testAssertionCount,
					errorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSourcePosition[2]: Returning position for correct channel",
					(channelNumber==2),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[2]: Returning correct default x-position",
					TTTestFloatEquivalence(x, 0.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[2]: Returning correct default y-position",
					TTTestFloatEquivalence(y, 0.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[2]: Returning correct default z-position",
					TTTestFloatEquivalence(z, 0.),
					testAssertionCount,
					errorCount);
	
	// Get and test source 3:
	
	TTTestLog(" ");
	TTTestLog("Testing position of source 3");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 3);
	
	this->sendMessage("getSourcePosition", getChannel, anEntity);
	
	TTTestAssertion("getSourcePosition[3]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					testAssertionCount,
					errorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSourcePosition[3]: Returning position for correct channel",
					(channelNumber==3),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[3]: Returning correct x-position",
					TTTestFloatEquivalence(x, 3.1),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[3]: Returning correct y-position",
					TTTestFloatEquivalence(y, 0.2),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[3]: Returning correct z-position",
					TTTestFloatEquivalence(z, -0.2),
					testAssertionCount,
					errorCount);
	
	// Get and test source 4:
	
	TTTestLog(" ");
	TTTestLog("Testing position of source 4");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 4);
	
	this->sendMessage("getSourcePosition", getChannel, anEntity);
	
	TTTestAssertion("getSourcePosition[4]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					testAssertionCount,
					errorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSourcePosition[4]: Returning position for correct channel",
					(channelNumber==4),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[4]: Returning correct x-position",
					TTTestFloatEquivalence(x, 0.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[4]: Returning correct y-position",
					TTTestFloatEquivalence(y, 4.6),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[4]: Returning correct z-position",
					TTTestFloatEquivalence(z, 0.),
					testAssertionCount,
					errorCount);
	
	
	// Get and test source 5:
	
	TTTestLog(" ");
	TTTestLog("Testing position of source 5");
	TTTestLog(" ");
	
	anEntity.clear();
	getChannel.set(0, 5);
	
	this->sendMessage("getSourcePosition", getChannel, anEntity);
	
	TTTestAssertion("getSourcePosition[5]: Returning TTValue array with four members",
					(anEntity.getSize() == 4),
					testAssertionCount,
					errorCount);
	
	anEntity.get(0, channelNumber);
	anEntity.get(1, x);
	anEntity.get(2, y);
	anEntity.get(3, z);
	
	TTTestAssertion("getSourcePosition[5]: Returning position for correct channel",
					(channelNumber==5),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[5]: Returning correct x-position",
					TTTestFloatEquivalence(x, -0.1),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[5]: Returning correct y-position",
					TTTestFloatEquivalence(y, 0.1),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSourcePosition[5]: Returning correct z-position",
					TTTestFloatEquivalence(z, 5.5),
					testAssertionCount,
					errorCount);
	
	return kTTErrNone;
}
