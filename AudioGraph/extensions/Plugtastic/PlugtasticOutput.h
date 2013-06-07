/** @file
 *
 * @ingroup audioGraphUtilityLib
 *
 * @brief Manage output signals from Plugtastic 
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __PLUGTASTIC_OUTPUT_H__
#define __PLUGTASTIC_OUTPUT_H__

#include "TTDSP.h"


/**	TTGain is an exceptionally simple audio processor scales an input audio signal */
class PlugtasticOutput : public TTAudioObjectBase {
	TTCLASS_SETUP(PlugtasticOutput)
	
protected:	
	
	TTFloat64		mGain;	///< linear gain to be applied to the input signal
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/** setter for converting gain input from db to linear. */
	TTErr setGain(const TTValue& newValue);
	
	/** getter for converting gain input from linear to db. */
	TTErr getGain(TTValue& value);
	
	/** set the gain using midi units. */
	TTErr setMidiGain(const TTValue& newValue);
	
	/** retreive the gain in midi units. */
	TTErr getMidiGain(TTValue& value);

};


#endif // __PLUGTASTIC_OUTPUT_H__
