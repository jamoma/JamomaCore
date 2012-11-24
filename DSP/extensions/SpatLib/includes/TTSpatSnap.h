/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief A basic proof-of-concept spatial renderer where the audio of a source will snap to the nearest sink.
 *
 * @details
 *
 * @todo: Extend with a solution for interpolating to new matrix coefficients
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __SPATSNAP_H__
#define __SPATSNAP_H__

#include "TTDSP.h"
#include "TTSampleMatrix.h"
#include "TTSpatEntity.h"
#include "TTSpatSnapRenderer.h"
#include "TTSpatBase.h"


/**	This class is eventually intended to provide a generalised interface for spatial renderers.
 @todo The class might be further generalised so that it can be reused for other spatial renderers.
 */
class TTSpatSnap : TTSpatBase {
	TTCLASS_SETUP(TTSpatSnap)
	
//	TTSpatSourceVector	mSources;		///< A vector describing the geometry of the sources
//	TTSpatSinkVector	mSinks;			///< A vector describing the geometry of the sinks (e.g., speakers)
//	TTSpatSnapRenderer	mRenderer;		///< The actual spatial renderer for this class

	
	/**	Unit Tests.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);

	
private:
	
	/** Unit tests of the getters and setters for the attributes sourceCont and sinkCount.
	 @param testAssertionCount			The number of test assertions that have been performed so far.
	 @param errorCount					The numebr of assertions that have failed so far.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testSourceAndSinkCountSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);

	
	/** Unit tests for messages to set and get source positions"
	 @param testAssertionCount			The number of test assertions that have been performed so far.
	 @param errorCount					The numebr of assertions that have failed so far.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testSourcePositionSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
	
	/** Unit tests for messages to set and get source positions"
	 @param testAssertionCount			The number of test assertions that have been performed so far.
	 @param errorCount					The numebr of assertions that have failed so far.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testSinkPositionSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
	
	/** Unit test for checking that we have correct matrix coefficient values.
	 @param testAssertionCount			The number of test assertions that have been performed so far.
	 @param errorCount					The numebr of assertions that have failed so far.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testMatrixCoefficients(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
	
	/** Unit test that pass multichannel audio to the object and test that we get correct audo for all sink channels.
	 @param testAssertionCount			The number of test assertions that have been performed so far.
	 @param errorCount					The numebr of assertions that have failed so far.
	 @param returnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testAudioProcessing(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
};



#endif // __SPATSNAP_H__
