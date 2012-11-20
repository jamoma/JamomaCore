/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief A basic proof-of-concept spatial renderer where the audio of a source will snap to the nearest sink.
 *
 * @details TODO
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

/** TTSpatSnapRenderer contains attributes and methods that are specific to this particular spatialisation renderer.
 */
class TTSpatSnapRenderer {
	
public:
	
	TTSampleMatrixPtr mMixerMatrixCoefficients;			///< A matrix holding all coefficient for matrix-based mixing of sources to sinks.
	
	/** Constructor
	 */
	TTSpatSnapRenderer();
	
	
	/** Destructor
	 */
	~TTSpatSnapRenderer();
	
	/** This method is called whenever matrix coefficients need to be updated.
	 @details This method also takes care of matrix resizing if the number of sources or sinks change.
	 @param sources						A vector of sources
	 @param sinks						A vector of sinks
	 */
	void recalculateMatrixCoefficients(TTSpatEntityVector& sources, TTSpatEntityVector& sinks);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs						Incomming audio signals to process from sound sources.
	 @param outputs						Processed audio signals passed to the sinks.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
		
};



/**	This class is eventually intended to provide a generalised interface for spatial renderers.
 @todo The class might be further generalised so that it can be reused for other spatial renderers.
 */
class TTSpatSnap : TTAudioObject {
	TTCLASS_SETUP(TTSpatSnap)
	
	TTSpatEntityVector	mSources;		///< A vector describing the geometry of the sources
	TTSpatEntityVector	mSinks;			///< A vector describing the geometry of the sinks (e.g., speakers)
	TTSpatSnapRenderer	mRenderer;		///< The actual spatial renderer for this class

	
	/**	A standard audio processing method as used by TTBlue objects.
	 @param inputs						Incomming audio signals to process from sound sources.
	 @param outputs						Processed audio signals passed to the sinks.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests.	
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
	
public:
	
	/** Get the number of sources.
	 @param value						Used to return the number of sources.
	 */
	TTErr getSourceCount(TTValue& value);
	
	
	/** Set the number of sources.
	 @param value						The desired number of sources.
	 */
	TTErr setSourceCount(const TTValue& value);
	
	
	/** Get the number of sinks.
	 @param value						Used to return the number of sinks.
	 */
	TTErr getSinkCount(TTValue& value);
	
	
	/** Set the number of sinks.
	 @param value						The desired number of sinks.
	 */
	TTErr setSinkCount(const TTValue& value);
	
	
	/** Get the position of one source.
	 @param sourceNumber				The source (counting from 1) that we want to query the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	void getOneSourcePosition(TTInt32 sourceNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z);
	
	
	/** Get the position of one source.
	 @param requestedChannel			The channel (counting from 1) that we want to query the position of.
	 @param aPosition					Used to return the position.
	 */
	TTErr getSourcePosition(const TTValue& requestedChannel, TTValue& aPosition);
	
	
	/** Set the position of one source.
	 @param sourceNumber				The source (counting from 1) that we want to set the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	void setOneSourcePosition(TTInt32 sourceNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z);

	
	/** Get the position of one source.
	 @param requestedChannel			The channel (counting from 1) that we want to set the position of.
	 @param aPosition					Used to return the position.
	 */
	TTErr setSourcePosition(const TTValue& aPosition, TTValue& unused);
	
	
	/** Get the position of one sink.
	 @param sourceNumber				The sink (counting from 1) that we want to query the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	void getOneSinkPosition(TTInt32 sinkNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z);
	
	
	/** Get the position of one sink.
	 @param requestedChannel			The channel (counting from 1) that we want to query the position of.
	 @param aPosition					Used to return the position.
	 */
	TTErr getSinkPosition(const TTValue& requestedChannel, TTValue& aPosition);

	
	/** Set the position of one sink.
	 @param sourceNumber				The sink (counting from 1) that we want to set the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	void setOneSinkPosition(TTInt32 sinkNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z);
	
	
	/** Set the position of one sink.
	 @param requestedChannel			The channel (counting from 1) that we want to set the position of.
	 @param aPosition					Used to return the position.
	 */
	TTErr setSinkPosition(const TTValue& aPosition, TTValue& unused);
	
private:
	
	/** Unit tests of the getters and setters for the attributes sourceCont and sinkCount.
	 */
	TTErr testSourceAndSinkCountSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);

	
	/** Unit tests for messages to set and get source positions"
	 */
	TTErr testSourcePositionSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
	
	/** Unit tests for messages to set and get source positions"
	 */
	TTErr testSinkPositionSetterAndGetter(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
	
	/** Unit test for checking that we have correct matrix coefficient values.
	 */
	TTErr testMatrixCoefficients(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
	
	/** Unit test that pass multichannel audio to the object and test that we get correct audo for all sink channels.
	 */
	TTErr testAudioProcessing(int& testAssertionCount, int& errorCount, TTValue& returnedTestInfo);
	
};



#endif // __SPATSNAP_H__
