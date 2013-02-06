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


#ifndef __SPATBASE_H__
#define __SPATBASE_H__

#include "TTDSP.h"
#include "TTSampleMatrix.h"
#include "TTSpatEntity.h"
#include "TTSpatBaseRenderer.h"


/**	This class is eventually intended to provide a generalised interface for spatial renderers.
 @todo The class might be further generalised so that it can be reused for other spatial renderers.
 */
class TTSpatBase : public TTAudioObjectBase {
	TTCLASS_SETUP(TTSpatBase)
	
	// TODO: We need to store these members as pointers to vectors instead of as vectors
	// because inheriting classes will have potentially extended versions of the sources, sinks, and renderers
	
	TTSpatSourceVector	mSources;		///< A vector describing the geometry of the sources
	TTSpatSinkVector	mSinks;			///< A vector describing the geometry of the sinks (e.g., speakers)
	TTSpatBaseRenderer*	mRenderer;		///< Pointer to the actual spatial renderer for this class

	
	/**	A standard audio processing method as used by TTBlue objects.
	 @param inputs						Incomming audio signals to process from sound sources.
	 @param outputs						Processed audio signals passed to the sinks.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	
public:
	
	/** Get the number of sources.
	 @param value						Used to return the number of sources.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSourceCount(TTValue& value);
	
	
	/** Set the number of sources.
	 @param value						The desired number of sources.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSourceCount(const TTValue& value);
	
	
	/** Get the number of sinks.
	 @param value						Used to return the number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSinkCount(TTValue& value);
	
	
	/** Set the number of sinks.
	 @param value						The desired number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
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
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
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
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
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
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
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
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSinkPosition(const TTValue& aPosition, TTValue& unused);
	
	
};



#endif // __SPATBASE_H__
