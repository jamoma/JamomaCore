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


/**	This class is eventually intended to provide a generalised interface for spatial renderers.
 @todo The class might be further generalised so that it can be reused for other spatial renderers.
 */
class TTSpatSnap : TTAudioObject {
	TTCLASS_SETUP(TTSpatSnap)
	
	TTSpatSourceVector	mSources;		///< A vector describing the geometry of the sources
	TTSpatSinkVector	mSinks;			///< A vector describing the geometry of the sinks (e.g., speakers)
	TTSpatSnapRenderer	mRenderer;		///< The actual spatial renderer for this class

	
	/**	A standard audio processing method as used by TTBlue objects.
	 @param anInputs						Incomming audio signals to process from sound sources.
	 @param anOutputs						Processed audio signals passed to the sinks.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr anInputs, TTAudioSignalArrayPtr anOutputs);

	/**	Unit Tests.
	 @param aReturnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& aReturnedTestInfo);
	
public:
	
	/** Get the number of sources.
	 @param aValue						Used to return the number of sources.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSourceCount(TTValue& aValue);
	
	
	/** Set the number of sources.
	 @param aValue						The desired number of sources.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSourceCount(const TTValue& aValue);
	
	
	/** Get the number of sinks.
	 @param value						Used to return the number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSinkCount(TTValue& value);
	
	
	/** Set the number of sinks.
	 @param aValue						The desired number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSinkCount(const TTValue& aValue);
	
	
	/** Get the position of one source.
	 @param aSourceNumber				The source (counting from 1) that we want to query the position of.
	 @param aX							Cartesian x-coordinate of the position.
	 @param aY							Cartesian y-coordinate of the position.
	 @param aZ							Cartesian z-coordinate of the position.
	 */
	void getOneSourcePosition(TTInt32 aSourceNumber, TTFloat64& aX, TTFloat64& aY, TTFloat64& aZ);
	
	
	/** Get the position of one source.
	 @param aRequestedChannel			The channel (counting from 1) that we want to query the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSourcePosition(const TTValue& aRequestedChannel, TTValue& aPosition);
	
	
	/** Set the position of one source.
	 @param sourceNumber				The source (counting from 1) that we want to set the position of.
	 @param aX							Cartesian x-coordinate of the position.
	 @param aY							Cartesian y-coordinate of the position.
	 @param aZ							Cartesian z-coordinate of the position.
	 */
	void setOneSourcePosition(TTInt32 aSourceNumber, TTFloat64 aX, TTFloat64 aY, TTFloat64 aZ);

	
	/** Get the position of one source.
	 @param aRequestedChannel			The channel (counting from 1) that we want to set the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSourcePosition(const TTValue& aPosition, TTValue& anUnused);
	
	
	/** Get the position of one sink.
	 @param aSourceNumber				The sink (counting from 1) that we want to query the position of.
	 @param aX							Cartesian x-coordinate of the position.
	 @param aY							Cartesian y-coordinate of the position.
	 @param aZ							Cartesian z-coordinate of the position.
	 */
	void getOneSinkPosition(TTInt32 aSinkNumber, TTFloat64& aX, TTFloat64& aY, TTFloat64& aZ);
	
	
	/** Get the position of one sink.
	 @param aRequestedChannel			The channel (counting from 1) that we want to query the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSinkPosition(const TTValue& aRequestedChannel, TTValue& aPosition);

	
	/** Set the position of one sink.
	 @param aSourceNumber				The sink (counting from 1) that we want to set the position of.
	 @param aX							Cartesian x-coordinate of the position.
	 @param aY							Cartesian y-coordinate of the position.
	 @param aZ							Cartesian z-coordinate of the position.
	 */
	void setOneSinkPosition(TTInt32 aSinkNumber, TTFloat64 aX, TTFloat64 aY, TTFloat64 aZ);
	
	
	/** Set the position of one sink.
	 @param aRequestedChannel			The channel (counting from 1) that we want to set the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSinkPosition(const TTValue& aPosition, TTValue& anUnused);
	
private:
	
	/** Unit tests of the getters and setters for the attributes sourceCont and sinkCount.
	 @param aTestAssertionCount			The number of test assertions that have been performed so far.
	 @param anErrorCount				The numebr of assertions that have failed so far.
	 @param aReturnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testSourceAndSinkCountSetterAndGetter(int& aTestAssertionCount, int& anErrorCount, TTValue& aReturnedTestInfo);

	
	/** Unit tests for messages to set and get source positions"
	 @param aTestAssertionCount			The number of test assertions that have been performed so far.
	 @param anErrorCount				The numebr of assertions that have failed so far.
	 @param aReturnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testSourcePositionSetterAndGetter(int& aTestAssertionCount, int& anErrorCount, TTValue& aReturnedTestInfo);
	
	
	/** Unit tests for messages to set and get source positions"
	 @param aTestAssertionCount			The number of test assertions that have been performed so far.
	 @param anErrorCount				The numebr of assertions that have failed so far.
	 @param aReturnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testSinkPositionSetterAndGetter(int& aTestAssertionCount, int& anErrorCount, TTValue& aReturnedTestInfo);
	
	
	/** Unit test for checking that we have correct matrix coefficient values.
	 @param aTestAssertionCount			The number of test assertions that have been performed so far.
	 @param anErrorCount				The numebr of assertions that have failed so far.
	 @param aReturnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testMatrixCoefficients(int& aTestAssertionCount, int& anErrorCount, TTValue& aReturnedTestInfo);
	
	
	/** Unit test that pass multichannel audio to the object and test that we get correct audo for all sink channels.
	 @param aTestAssertionCount			The number of test assertions that have been performed so far.
	 @param anErrorCount				The numebr of assertions that have failed so far.
	 @param aReturnedTestInfo			Information on the outcome of the tests.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr testAudioProcessing(int& aTestAssertionCount, int& anErrorCount, TTValue& aReturnedTestInfo);
	
};



#endif // __SPATSNAP_H__
