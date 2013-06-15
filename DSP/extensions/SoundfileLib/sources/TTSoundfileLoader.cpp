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
    // add the attributes and messages here
    
    // initialize
    //init();
}

TTSoundfileLoader::~TTSoundfileLoader()
{
	/*
    if (mSoundfileInterface)
        TTObjectBaseRelease(TTObjectBaseHandle(&fileToLoad); // release the interface
    */
}

// internal method used for initializing the TTSoundfileLoader and mSoundfileInterface for use
TTErr TTSoundfileLoader::init()
{
    TTErr err = TTObjectBaseInstantiate("soundfile", (TTObjectBasePtr*)&mSoundfileInterface, kTTValNONE);
    
    return err;
}