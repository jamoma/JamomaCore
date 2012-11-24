/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Jamoma DSP SpatLib unit based on Distance-based amplitude panning (DBAP)
 *
 * @details DBAP permits sinks (speakers) to be positioned any way you want. 
 * Speaker configurations are not limited to circles/spheres surrounding a sweet spot, but can be used e.g. to locate speakers in several adjecent spaces.
 * DBAP is matrix-based and ensures equal intensity while adjusting gains to each of the sinks in such a way that relative gain diminish with increasing distance from source to sink.
 * The exact rolloff rate (in dB) can be controlled with the rolloff attribute of the #TTSpatDBAPRenderer class.
 *
 * @todo: Extend with a solution for interpolating to new matrix coefficients
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


/*
 
The following are development notes while developing TTSpatDBAP starting of from the source files foir TTSpatSnap:
 
 DIFFERENCES WITH SNAP :
 
 - sources need a width
 - renderer needs to implement a global rolloff
 - weight coefficient to be associated with each source-sink pair (a matrix)
 
 */


#ifndef __SPATDBAP_H__
#define __SPATDBAP_H__

#include "TTDSP.h"
#include "TTSampleMatrix.h"
#include "TTSpatEntity.h"
#include "TTSpatDBAPRenderer.h"
#include "TTSpatDBAPSource.h"


/**	Jamoma DSP SpatLib unit based on Distance-based amplitude panning (DBAP)
 *
 * @details DBAP permits sinks (speakers) to be positioned any way you want.
 * Speaker configurations are not limited to circles/spheres surrounding a sweet spot, but can be used e.g. to locate speakers in several adjecent spaces.
 * DBAP is matrix-based and ensures equal intensity while adjusting gains to each of the sinks in such a way that relative gain diminish with increasing distance from source to sink.
 * The exact rolloff rate (in dB) can be controlled with the rolloff attribute of the #TTSpatDBAPRenderer class.
 */
class TTSpatDBAP : TTAudioObject {
	TTCLASS_SETUP(TTSpatDBAP)
	
	TTSpatDBAPSourceVector	mSources;		///< A vector describing the geometry of the sources
	TTSpatSinkVector		mSinks;			///< A vector describing the geometry of the sinks (e.g., speakers)
	TTSpatDBAPRenderer		mRenderer;		///< The actual spatial renderer for this class

	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs						Incomming audio signals to process from sound sources.
	 @param outputs						Processed audio signals passed to the sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
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
	 @param aValue						Used to return the number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSinkCount(TTValue& aValue);
	
	
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
	 @param requestedChannel			The channel (counting from 1) that we want to query the position of.
	 @param aPosition					Used to return the position.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSourcePosition(const TTValue& aRequestedChannel, TTValue& aPosition);
	
	
	/** Set the position of one source.
	 @param aSourceNumber				The source (counting from 1) that we want to set the position of.
	 @param aX							Cartesian x-coordinate of the position.
	 @param aY							Cartesian y-coordinate of the position.
	 @param aZ							Cartesian z-coordinate of the position.
	 */
	void setOneSourcePosition(TTInt32 aSourceNumber, TTFloat64 aX, TTFloat64 aY, TTFloat64 aZ);

	
	/** Get the position of one source.
	 @param requestedChannel			The channel (counting from 1) that we want to set the position of.
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
	 @param sourceNumber				The sink (counting from 1) that we want to set the position of.
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

	
	/** TODO: document
	 @param aValue						Used to return the number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getRolloff(TTValue& aValue);
	
	
	/** TODO: document
	 @param aValue						The desired number of sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setRolloff(const TTValue& aValue);
	

	
	TTErr setSourceWidth(const TTValue& aWidth, TTValue& anUnused);
	TTErr getSourceWidth(const TTValue& aRequestedChannel, TTValue& aWidth);

};



#endif // __SPATDBAP_H__
