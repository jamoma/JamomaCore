/* 
 * DSP Matrix Mixer Object
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_MATRIXMIXER_H__
#define __TT_MATRIXMIXER_H__


#include "TTAudioObject.h"

/**	TTGain is an exceptionally simple audio processor scales an input audio signal */
class TTEXPORT TTMatrixMixer : public TTAudioObject {
protected:
	TTFloat64**		gainMatrix;

	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:

	
	/**	Constructor. 
		@param newMaxNumChannels	Specifies the initial maximum number of channels.
									This applies to both inputs and outputs.	 */
	TTMatrixMixer(TTUInt16 newMaxNumChannels);

	
	/**	Destructor. */
	virtual ~TTMatrixMixer();
	

	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);
	
	
	TTErr clear();

	
	/** setter for converting gain input from db to linear. 
		@param newValue The argument must consist of three values:
						- The x coordinate of the matrix point (beginning with zero)
						- The y coordinate of the matrix point (beggining with zero)
						- The gain level of the matrix point (in dB)
		@return			An error code.				*/
	TTErr setGain(const TTValue& newValue);
	TTErr setLinearGain(const TTValue& newValue);
	TTErr setMidiGain(const TTValue& newValue);
	
	
	void processOne(TTAudioSignal& in, TTAudioSignal& out, TTFloat64 gain);

};


#endif // __TT_MATRIXMIXER_H__
