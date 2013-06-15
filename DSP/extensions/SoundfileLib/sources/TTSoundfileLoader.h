/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Loads soundfile data into a sample matrix
 *
 * @details This object collaborates with #TTSampleMatrix to load values from a sound file into the sample matrix.
 *
 * @see TTSampleMatrix
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SOUNDFILELOADER_H__
#define __TT_SOUNDFILELOADER_H__

#include "TTDSP.h"
#include "TTSoundfile.h"

#ifdef uint
#undef uint
#endif
#include "../libsndfile/sndfile.h"

//** Creates an interface to data in a soundfile from disk */
class TTSoundfileLoader : public TTAudioObjectBase {
	TTCLASS_SETUP(TTSoundfileLoader)
	
protected:
    TTSoundfilePtr mSoundfileInterface;
    
    
    // internal method used for initializing the TTSoundfileLoader and mSoundfileInterface for use
	TTErr init();
    
};

typedef TTSoundfileLoader* TTSoundfileLoaderPtr;

#endif /* defined(__TT_SOUNDFILELOADER_H__) */
