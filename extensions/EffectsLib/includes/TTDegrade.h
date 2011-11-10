/* 
 * TTBlue Degrade Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_DEGRADE_H__
#define __TT_DEGRADE_H__

#include "TTDSP.h"


/**	TTDegrade in an audio processor that distorts a signal in ugly digital ways.
 	This class is a good example of a very simple audio filter that can process any 
 	number of parallel audio channels, with just a couple of attributes.
 */
class TTDegrade : public TTAudioObject {
	TTCLASS_SETUP(TTDegrade)

	TTUInt16		mBitShift;		///< Amount of bits to shift away based on attrBitdepth.
	TTSampleVector	mAccumulator;	///< Holds values over from one vector to the next for each channel.
	TTSampleVector	mOutput;		///< Holds values over from one vector to the next for each channel..
	TTUInt8			mBitdepth;		///< Use a range of 1 to 24 to emulate the specified bitdepth.
	TTFloat64		mSrRatio;		///< Use a range of 0.0 to 1.0 to specify a ratio of the current sample-rate to emulate in order to intentional aliasing artifacts.

	/**	Setter for the inherited maxNumChannels attribute.		*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	/**	Setter for the bitdepth attribute. */
	TTErr setBitdepth(const TTValue& value);

	/**	Standard audio processing method as used by TTBlue objects.
	 *	This object can process N parallel channels of audio.  It is assumed that the number
	 *	of inputs and outputs are the same, as are the vector sizes of those inputs and outputs.
	 *	@param	in		A pointer to a TTAudioSignal object that may contain any number of channels.
	 *					This signal is considered the master, and thus it provides the vectorsize
	 *					and number of channels should the two signals not be matched.
	 *	@param	out		A pointer to a TTAudioSignal object that has the output sample vectors.
	 *	@return	Returns a TTBlue Error Code.  TODO: Perhaps we should check if the signals are matched and then
	 *			return an error if they aren't?  Currently we are just returning TT_ERR_NONE all the time.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __TT_DEGRADE_H__
