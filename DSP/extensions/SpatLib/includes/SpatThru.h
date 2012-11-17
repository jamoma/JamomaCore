/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Super simple through-putting spatialization object for Jamoma DSP
 *
 * @details This unit simply throughputs whatever comes in.
 * As a real-world spatialisation technique that is pretty much useless, but 
 * it could be considered a bypassing method, and it is also useful while
 * developing this library in order to first implement simple-stupid units
 * before delving into the real spatialisation renderers.
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPATTHRU_H__
#define __SPATTHRU_H__

#include "TTDSP.h"


/**	This implements a spatialisation method that just let sources through */
class SpatThru : public TTAudioObject {
	TTCLASS_SETUP(SpatThru)
	
protected:
	
	TTUInt16 mSourceCount;
	TTUInt16 mDestinationCount;
	
	// Attributes
	TTErr setSourceCount(const TTValue& value);
	TTErr setDestinationCount(const TTValue& value);	
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __SPATTHRU_H__
