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
#include "TTSampleMatrix.h"

#define thisTTClass			TTSoundfileLoader
#define thisTTClassName		"soundfile.loader"
#define thisTTClassTags		"audio, soundfile, buffer"

TT_AUDIO_CONSTRUCTOR,
mSoundfileInterface(NULL),
mTargetMatrix(NULL)
{    
    // add the attributes and messages here
    
    // initialize, but that may need to be separate call
}

TTSoundfileLoader::~TTSoundfileLoader()
{
	if (mSoundfileInterface)
        TTObjectBaseRelease(TTObjectBaseHandle(&mSoundfileInterface)); // release the interface
}

// internal method used for initializing the TTSoundfileLoader and mSoundfileInterface for use
TTErr TTSoundfileLoader::init(const TTSymbol& filePathAsSymbol, const TTSampleMatrixPtr newTargetMatrix)
{
    
    // instantiate the soundfile interface class
    TTErr err = TTObjectBaseInstantiate("soundfile", (TTObjectBasePtr*)&mSoundfileInterface, kTTValNONE);
    
    if (err)
    {
        return err;
    } else { // attempt to set the filepath
        err = mSoundfileInterface->setFilePath(filePathAsSymbol);
    }
    
    if (err)
    {
        return err;
    } else { // set the target matrix for loading samples
        mTargetMatrix = newTargetMatrix;
    }
    
    return err;
    
}