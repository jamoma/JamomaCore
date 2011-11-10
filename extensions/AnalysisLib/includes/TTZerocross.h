/* 
 * TTBlue Zero-crossing detector and counter.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_ZEROCROSS_H__
#define __TT_ZEROCROSS_H__

#include "TTDSP.h"


/**	TTZerocross analyzes the incoming audio by looking for zero-crossings.
	When a zero crossing occurs it both reports the crossing and also 
	keeps a count of the number of zero crossings per analysis period.
 */
class TTZerocross : TTAudioObject {
	TTCLASS_SETUP(TTZerocross)

	TTUInt32	mSize;					///< Attribute: size of the analysis buffer
	TTFloat64	rSize;					///< reciprocal of the size attribute
	TTBoolean	lastSampleWasOverZero;	///< was the last sample over zero?
	TTUInt32	counter;				///< counts zero-crossings
	TTFloat64	finalCount;
	TTUInt32	analysisLocation;		///< keep track of how many samples so far
	
	/**	This method gets called when the inherited maxNumChannels attribute is changed. */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	
	/**	This method gets called when the inherited sr attribute is changed. */
	TTErr updateSr();
	
	/**	Audio processing method.
	 
		WARNING: this unit requires 1 input and 2 outputs -- it does not yet configure itself for other arrangements!

	 	@param	in		A pointer to a TTAudioSignal object that may contain any number of channels.
	 					This signal is considered the master, and thus it provides the vectorsize
	 					and number of channels should the two signals not be matched.
	 	@param	out		A pointer to a TTAudioSignal object that has the output sample vectors.
	 	@return			A TTBlue error code.	*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Attribute Setter. */
	TTErr setSize(const TTValue& value);

	/**	Resets the history used in the analysis.	*/
	TTErr Clear();
};


#endif // __TT_ZEROCROSS_H__
