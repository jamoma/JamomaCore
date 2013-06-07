/** @file
 *
 * @ingroup audioGraphPlugtastic
 *
 * @brief Manage input signals into Plugtastic 
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __PLUGTASTIC_INPUT_H__
#define __PLUGTASTIC_INPUT_H__

#include "TTDSP.h"


/**	TTGain is an exceptionally simple audio processor scales an input audio signal */
class PlugtasticInput : public TTAudioObjectBase {
	TTCLASS_SETUP(PlugtasticInput)
	
protected:

	TTBoolean	mSidechain; ///< attr
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs
	 @param outputs
	 @return
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __PLUGTASTIC_INPUT_H__
