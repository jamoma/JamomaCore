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

#include "TTSoundfile.h"
#include "TTSoundfileLoader.h"

#define thisTTClass			TTSoundfileLoader
#define thisTTClassName		"soundfile.loader"
#define thisTTClassTags		"soundfile.loader"

TT_AUDIO_CONSTRUCTOR,
mSoundfileInterface(NULL)
{
    //TTObjectBaseInstantiate("soundfile", (TTObjectBasePtr*)&mSoundfileInterface, kTTValNONE);
    
    // add the attributes and messages here
}

TTSoundfileLoader::~TTSoundfileLoader()
{
	if (mSoundfileInterface)
		TTObjectBaseRelease(TTObjectBaseHandle(&fileToLoad); // release the interface
}