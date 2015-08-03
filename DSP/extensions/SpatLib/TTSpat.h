/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Host a SpatLib object
 *
 * @details
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_SPAT_H__
#define __TT_SPAT_H__

#include "TTDSP.h"
#include "TTSampleMatrix.h"
#include "TTSpatEntity.h"
#include "TTSpatSourceEntity.h"
#include "TTSpatSinkEntity.h"


/** Generalized SpatLib wrapper, contains all information on the scene, and embeds a #TTSpatBaseRenderer renderer.
 */
class TTSpat : TTAudioObjectBase {
	TTCLASS_SETUP(TTSpat)
	
	
protected:

	TTAudioObjectBasePtr	mSpatRendererObject;	///< Current spat renderer
	TTSymbol				mSpatRendererName;		///< Name of the current spat renderer
	TTBoolean				mSceneHasChanged;		///< Flag indicating that coefficients need to be recalculated

	// Parameters relating to the scene, and common to many or all spat renderers
	TTChannelCount			mSourceCount;			///< The number of sources
	TTChannelCount			mSinkCount;				///< The number of destinations
	TTSpatSourceVector		mSources;				///< A vector describing the geometry of each of the sources
	TTSpatSinkVector		mSinks;					///< A vector describing the geometry of each of the sinks (e.g., speakers)
	
	// Parameters relating to scene, and specific to one or a few spat renderers
	// None yet

	// Paraneters relating to one or a few specific rendering algorithms
	TTFloat64				mRolloff;				///< Used by DBAP renderer

	
public:
	
#if 0
#pragma mark -
#pragma mark Process Routines
#endif
	
	
	/**	A standard matrix-based audio processing method which may be used for matrix-based spatialization algorithms.
		Subclasses using other techniques may override this method.
	 @param inputs						Incomming audio signals to process from sound sources.
	 @param outputs						Processed audio signals passed to the sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	

#if 0
#pragma mark -
#pragma mark Renderer set/get
#endif
	
	
	/**	Set what spatialisation function to use.
	 @param aSpatFunction			The SpatLib renderer (unit) to use.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSpatFunction(const TTValue& aSpatFunction);
	
	
	/**	Return a list of all available spatialisation renderers (units).
	 @param
	 @param listOfSpatFunctionsToReturn An array of available spatialisation rendering units.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSpatFunctions(const TTValue&, TTValue& listOfSpatFunctionsToReturn);

	
	// TODO: Do we need a getSpatFunction() method?
	
	
#if 0
#pragma mark -
#pragma mark Source set/get
#endif
	

	/**	Set the number of sources.
	 @param mode					The number of sources to spatialise.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSourceCount(const TTValue& aSource);
	
	
	/** Get the number of sources.
	 @param value						Used to return the number of sources.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSourceCount(TTValue& value);
	
	
	/** Set the position of one source.
	 @param sourceNumber				The source (counting from 1) that we want to set the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	TTErr setSourcePosition(TTInt32 sourceNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z);

	
	/** Get the position of one source.
	 @param requestedChannel			The channel (counting from 1) that we want to set the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSourcePosition(const TTValue& aPosition, TTValue& unused);
	
	
	/** Get the position of one source.
	 @param sourceNumber				The source (counting from 1) that we want to query the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	TTErr getSourcePosition(TTInt32 sourceNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z);
	
	
	/** Get the position of one source.
	 @param requestedChannel			The channel (counting from 1) that we want to query the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSourcePosition(const TTValue& requestedChannel, TTValue& aPosition);
	

	/* TODO: Docygen
	 */
	TTErr setSourceWidth(TTInt32 sourceNumber, TTFloat64 width);
	
	TTErr setSourceWidth(const TTValue& aWidth, TTValue& anUnused);
	
	
	
	
	/* TODO: Docygen
	 */
	TTErr getSourceWidth(TTInt32 sourceNumber, TTFloat64& width);
	
	TTErr getSourceWidth(const TTValue& aRequestedChannel, TTValue& aWidth);
	
	
#if 0
#pragma mark -
#pragma mark Sink set/get
#endif
	
	
	/**	Set the number of sinks.
	 @param mode					The number of sinks to spatialise.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSinkCount(const TTValue& aSink);
	
	
	/** Get the number of sinks.
	 @param value						Used to return the number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSinkCount(TTValue& value);
	
	
	/** Set the position of one sink.
	 @param sinkNumber				The sink (counting from 1) that we want to set the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	TTErr setSinkPosition(TTInt32 sinkNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z);
	
	
	/** Get the position of one sink.
	 @param requestedChannel			The channel (counting from 1) that we want to set the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSinkPosition(const TTValue& aPosition, TTValue& unused);
	
	
	/** Get the position of one sink.
	 @param sinkNumber				The sink (counting from 1) that we want to query the position of.
	 @param x							Cartesian x-coordinate of the position.
	 @param y							Cartesian y-coordinate of the position.
	 @param z							Cartesian z-coordinate of the position.
	 */
	TTErr getSinkPosition(TTInt32 sinkNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z);
	
	
	/** Get the position of one sink.
	 @param requestedChannel			The channel (counting from 1) that we want to query the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSinkPosition(const TTValue& requestedChannel, TTValue& aPosition);


	
#if 0
#pragma mark -
#pragma mark Particular to Renderers
#endif
	
	/** TODO: Set rolloff with increasing distance, used by DBAP
	 @param aValue						The desired rolloff value in dB.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setRolloff(const TTValue& aValue);
	
	
	/** TODO: Get rolloff with increasing distance, used by DBAP
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getRolloff(TTValue& aValue);
	
};


#endif // __TT_SPAT_H__
