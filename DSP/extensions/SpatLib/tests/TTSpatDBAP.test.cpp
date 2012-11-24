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
#include "TTSpatDBAP.h"




TTErr TTSpatDBAP::test(TTValue& returnedTestInfo)
{
	// preliminary setup
	int					errorCount = 0;
	int					testAssertionCount = 0;
	/*
	
	// Attributes and messages
	TTSpatSnap::testSourceAndSinkCountSetterAndGetter(testAssertionCount, errorCount, returnedTestInfo);
	TTSpatSnap::testSourcePositionSetterAndGetter(testAssertionCount, errorCount, returnedTestInfo);
	TTSpatSnap::testSinkPositionSetterAndGetter(testAssertionCount, errorCount, returnedTestInfo);
	
	// Inspect matrix coefficients
	TTSpatSnap::testMatrixCoefficients(testAssertionCount, errorCount, returnedTestInfo);
	
	// Test audio processing
	TTSpatSnap::testAudioProcessing(testAssertionCount, errorCount, returnedTestInfo);
		
	 */
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
