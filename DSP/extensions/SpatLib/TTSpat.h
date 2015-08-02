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


/** Generalized SpatLib rendering unit wrapper.
 */
class TTSpat : TTAudioObjectBase {
	TTCLASS_SETUP(TTSpat)
	
	
protected:

	TTAudioObjectBasePtr	mSpatFunctionObject;	///< Current spat renderer
	TTSymbol				mSpatFunction;			///< Name of the current spat renderer
	TTBoolean				mSceneHasChanged;		///< Flag indicating that coefficients need to be recalculated

	// Parameters relating to scene, and common to many or all spat renderers
	TTChannelCount			mSourceCount;	///< The number of sources
	TTChannelCount			mSinkCount;		///< The number of destinations
	TTSpatSourceVector		mSources;		///< A vector describing the geometry of the sources
	TTSpatSinkVector		mSinks;			///< A vector describing the geometry of the sinks (e.g., speakers)
	
	// Parameters relating to scene, and specific to one or a few spat renderers
	// None yet

	// Paraneters relating to unit rendering algorithm, and specific to one or a few spat units
	TTFloat64			mRolloff;			///< global

	//	TTSampleMatrixPtr	mMixerMatrixCoefficients;	///< A matrix holding all coefficient for matrix-based mixing of sources to sinks.
	
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
	
#if 0
#pragma mark -
#pragma mark Process Routines
#endif
	
	/** This method _must_ be defined by subclasses
	 @details This method also takes care of matrix resizing if the number of sources or sinks change.
	 @param sources						A vector of sources
	 @param sinks						A vector of sinks
	 */
	virtual void recalculateMatrixCoefficients(TTSpatSourceVector& sources, TTSpatSinkVector& sinks) = 0;
	
	
	/**	A standard matrix-based audio processing method which may be used for matrix-based spatialization algorithms.
		Subclasses using other techniques may override this method.
	 @param inputs						Incomming audio signals to process from sound sources.
	 @param outputs						Processed audio signals passed to the sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
#if 0
#pragma mark -
#pragma mark Setters and Getters
#endif
	
	// TODO: Add setters and getters for the source: width and order

	
	
	/**	Set the number of sources.
	 @param mode					The number of sources to spatialise.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSourceCount(const TTValue& aSource);
	
	
	/**	Set number of destinations
	 @param mode					The number of destinations that sound will be rendered to.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSinkCount(const TTValue& aSink);
	
	
//	TTErr getSourcePosition(const TTValue& anIndex, TTValue& returnedPosition);
//	TTErr setSourcePosition(const TTValue& aPosition, TTValue& unused);
//	TTErr getSinkPosition(const TTValue& anIndex, TTValue& returnedPosition);
//	TTErr setSinkPosition(const TTValue& aPosition, TTValue& unused);
	
	/**	Return a list of all the available parameters that are specific to the current spatialisation method.
	 @param
	 @param listOfParameterNamesToReturn An array of available spatialisation rendering units.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
//	TTErr getFunctionParameters(const TTValue&, TTValue& listOfParameterNamesToReturn);
	
	
	/** Get the current value of a parameter (attribute) used by the current spatialisation method.
	 @param aParameterNameIn		The name of the parameter that we want to query the value of.
	 @param
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
//	TTErr getFunctionParameter(const TTValue& aParameterNameIn, TTValue& aValueOut);
	
	
	/** Set the value of a parameter (attribute) used by the current spatialisation method.
	 @param aParameterNameIn		The name of the parameter that we want to set and the value thatvwe want to set it to.
	 @param
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
//	TTErr setFunctionParameter(const TTValue& aParameterNameAndValue, TTValue&);
	
	

	
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
	
	
	
	TTErr setSourceWidth(const TTValue& aWidth, TTValue& anUnused);
	
	
	TTErr getSourceWidth(const TTValue& aRequestedChannel, TTValue& aWidth);

	
#if 0
#pragma mark -
#pragma mark Particular to Units
#endif
		
	/** TODO: document
	 @param aValue						Used to return the number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTFloat64 getRolloff()
	{
		return mRolloff;
	}
	
	/** TODO: document
	 @param aValue						The desired number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setRolloff(const TTValue& aValue)
	{
		mRolloff = aValue;

	}
	
	
	
	
};


#endif // __TT_SPAT_H__
