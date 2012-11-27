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


#ifndef __SPATDBAPRENDERER_H__
#define __SPATDBAPRENDERER_H__

#include "TTDSP.h"
#include "TTSampleMatrix.h"
#include "TTSpatEntity.h"
#include "TTSpatBaseRenderer.h"
#include "TTSpatDBAPSource.h"


/** TTSpatDBAPRenderer contains attributes and methods that are specific to this particular spatialisation renderer.
 */
class TTSpatDBAPRenderer : public TTSpatBaseRenderer {
	
public:
	
	TTSampleMatrixPtr	mMixerMatrixCoefficients;	///< A matrix holding all coefficient for matrix-based mixing of sources to sinks.
	TTFloat64			mRolloff;					///< global
	
	
	/** Constructor
	 */
	TTSpatDBAPRenderer();
	
	
	/** Destructor
	 */
	~TTSpatDBAPRenderer();
	
	/** This method is called whenever matrix coefficients need to be updated.
	 @details This method also takes care of matrix resizing if the number of sources or sinks change.
	 @param sources						A vector of sources
	 @param sinks						A vector of sinks
	 */
	void recalculateMatrixCoefficients(TTSpatSourceVector& aSources, TTSpatSinkVector& aSinks);
		
	
	// TODO: make these accessors non-inlined
	TTFloat64 getRolloff()
	{
		return mRolloff;
	}
	
	// TODO: document that caller must then call recalculateMatrixCoefficients() to update the matrix
	void setRolloff(TTFloat64 aRolloff);
	
};


#endif // __SPATDBAPRENDERER_H__
