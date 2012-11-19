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

/** The TTSpatSnapRenderer class keeps 
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
	 @param sources
	 @param sinks
	 */
	void recalculateMatrixCoefficients(TTSpatEntityVector& sources, TTSpatEntityVector& sinks);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
		
};



/**	TODO
 */
class TTSpatSnap : TTAudioObject {
	TTCLASS_SETUP(TTSpatSnap)
	
	TTSpatEntityVector	mSources;					///< A vector describing the geometry of the sources
	TTSpatEntityVector	mSinks;						///< A vector describing the geometry of the sinks (e.g., speakers)
	TTSpatSnapRenderer	mRenderer;					///< The actual spatial renderer for this class
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
	
public:
	
	TTErr getSourceCount(TTValue& value);
	
	TTErr setSourceCount(const TTValue& value);
	
	TTErr getSinkCount(TTValue& value);
	
	TTErr setSinkCount(const TTValue& value);
	

	void getOneSourcePosition(TTInt32 sourceNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z);
	
	TTErr getSourcePosition(TTValue& aPosition);
	
	void setOneSourcePosition(TTInt32 sourceNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z);

	TTErr setSourcePosition(const TTValue& aPosition);
	
	void getOneSinkPosition(TTInt32 sinkNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z);
	
	TTErr getSinkPosition(TTValue& aPosition);

	void setOneSinkPosition(TTInt32 sinkNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z);
	
	TTErr setSinkPosition(const TTValue& aPosition);

};



#endif // __SPATSNAP_H__
