/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Loads soundfile data into a sample matrix
 *
 * @details This object collaborates with #TTSampleMatrix to load values from a sound file into the sample matrix. An extension of the #TTSoundfile object.
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
#include "TTSampleMatrix.h"

//** Creates an interface to data in a soundfile from disk */
class TTSoundfileLoader : public TTSoundfile {
	TTCLASS_SETUP(TTSoundfileLoader)
	
protected:
    TTSampleMatrixPtr   mTargetMatrix;
    
    
    // internal method used for initializing the TTSoundfileLoader and mSoundfileInterface for use. You need to pass in a filepath and pointer the the targetted TTSampleMartix
	TTErr init(const TTSymbol& filePathAsSymbol, const TTSampleMatrixPtr newTargetMatrix);
    
public:
    TTErr load(const TTValueRef input, TTValueRef unusedOutput);
    
};

typedef TTSoundfileLoader* TTSoundfileLoaderPtr;

#endif /* defined(__TT_SOUNDFILELOADER_H__) */
