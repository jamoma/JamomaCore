/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Base class for Spat renderers
 *
 * @details
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place, Jan Schacher
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, Timothy Place, Jan Schacher @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SpatLib__TTSpatBaseRenderer__
#define __SpatLib__TTSpatBaseRenderer__

#include "TTDSP.h"
#include "TTSpat.h"


/** TTSpatBaseRenderer defines the basic interface from which all renderers inherit.
 */
class TTSpatBaseRenderer {
	
	TTAudioObjectBasePtr	mSpatInstance;				///< The #TTSpat instance that this rendering instance is associated with.
	
public:
	
	TTSampleMatrixPtr mMixerMatrixCoefficients;			///< A matrix holding all coefficient for matrix-based mixing of sources to sinks.
	
	
	/** Constructor
	 */
	TTSpatBaseRenderer();
	
	
	/** Destructor
	 */
	virtual ~TTSpatBaseRenderer();
	
	/** This method _must_ be defined by subclasses
	 @details This method also takes care of matrix resizing if the number of sources or sinks change.
	 @param sources						A vector of sources
	 @param sinks						A vector of sinks
	 */
	virtual void recalculateCoefficients(TTSpatSourceVector& sources, TTSpatSinkVector& sinks) = 0;
	
	
	/**	A standard matrix-based audio processing method which may be used for matrix-based spatialization algorithms.
		Subclasses using other techniques may override this method.
	 @param inputs						Incomming audio signals to process from sound sources.
	 @param outputs						Processed audio signals passed to the sinks.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
};




#endif /* defined(__SpatLib__TTSpatBaseRenderer__) */
