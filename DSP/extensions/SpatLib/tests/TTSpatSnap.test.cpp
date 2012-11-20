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
	
	TTTestLog("Testing TTSpatSnap attributes and messages");
	TTTestLog(" ");
	
	// N test assertions
	
	// Test setter and getter for sourceCount attribute

	TTFloat64 sourceCountTest;
	
	this->setAttributeValue("sourceCount", 3);
	this->getAttributeValue("sourceCount", sourceCountTest);
	TTTestAssertion("setter and getter for sourceCount attribute",
					TTTestFloatEquivalence(sourceCountTest, 3.),
					testAssertionCount,
					errorCount);
	
	// Test setter and getter for sinkCount attribute
	
	TTFloat64 sinkCountTest;
	
	this->setAttributeValue("sinkCount", 5);
	this->getAttributeValue("sinkCount", sinkCountTest);
	TTTestAssertion("setter and getter for sinkCount attribute",
					TTTestFloatEquivalence(sinkCountTest, 5.),
					testAssertionCount,
					errorCount);

	// Set the location of five sinks:
	
	TTValue anEntity;
	TTValue unused;
	anEntity.setSize(4);
	
	// Sink 1: Default = (0., 0., 0.) so we don't set it.
	
	// Sink 2: (1., 0., 0.)
	
	anEntity.set(0, 2);
	anEntity.set(1, 1.);
	anEntity.set(2, 0.);
	anEntity.set(3, 0.);
	this->sendMessage("setSinkPosition", anEntity, unused);
	
	// Sink 3: (0., 1., 0.)
	
	anEntity.set(0, 3);
	anEntity.set(1, 0.);
	anEntity.set(2, 1.);
	anEntity.set(3, 0.);
	this->sendMessage("setSinkPosition", anEntity, unused);
	
	// Sink 4: (0., 0., 1.)
	
	anEntity.set(0, 4);
	anEntity.set(1, 0.);
	anEntity.set(2, 0.);
	anEntity.set(3, 1.);
	this->sendMessage("setSinkPosition", anEntity, unused);
	
	// Sink 5: (-2., -3.14, -4.)
	
	anEntity.set(0, 5);
	anEntity.set(1, -2.);
	anEntity.set(2, -3.14);
	anEntity.set(3, -4.);
	this->sendMessage("setSinkPosition", anEntity, unused);
	
	// Now we test five positions:
	
	TTValue getChannel;
	TTFloat64 x, y, z;
	TTInt16 channelNumber;
	
	getChannel.setSize(1);
	
	// Test sink 1:
	
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
	
	
	// Test sink 2:
	
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
					TTTestFloatEquivalence(x, 1.),
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
	
	
	// Test sink 3:
	
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
					TTTestFloatEquivalence(y, 1.),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("getSinkPosition[3]: Returning correct z-position",
					TTTestFloatEquivalence(z, 0.),
					testAssertionCount,
					errorCount);
	
	
	// Test sink 4:
	
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
					TTTestFloatEquivalence(z, 1.),
					testAssertionCount,
					errorCount);
	
	
	// Test sink 5:
	
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
	
	
	
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
