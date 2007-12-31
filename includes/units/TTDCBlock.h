/* 
 * TTBlue DC Offset Filter and Blocker 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioObject.h"

/**	TTDCBlock in an audio processor that filters out DC Offsets from an input.
 *	This class is a good example of a very simple audio filter that can process any 
 *	number of parallel audio channels.
 */ 

class TTDCBlock : TTAudioObject {
private:
	double	 	lastInput[TT_MAX_NUM_CHANNELS];		///<  Feedback values used for the audio filter			
	double		lastOutput[TT_MAX_NUM_CHANNELS];	///< Feedback values used for the audio filter

public:

	/**	Constructor. */
	TTDCBlock();

	/**	Destructor. */
	~TTDCBlock();

	/**	Resets the DC-Blocking filter.
	 *	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.
	 */
	TTErr clear();

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
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

@end
