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

#include "TTSoundfileLoader.h"

#define thisTTClass			TTSoundfileLoader
#define thisTTClassName		"soundfile.loader"
#define thisTTClassTags		"audio, soundfile, buffer"

TTObjectBasePtr TTSoundfileLoader::instantiate(TTSymbol& name, TTValue& arguments)
{
	return new TTSoundfileLoader(arguments);
}


extern "C" void TTSoundfileLoader::registerClass()
{
	TTClassRegister(thisTTClassName, thisTTClassTags, TTSoundfileLoader::instantiate);
}


TTSoundfileLoader::TTSoundfileLoader(TTValue& arguments) :
TTSoundfile(arguments),
mTargetMatrix(NULL)
{    
    // add the attributes and messages here
    //addMessageWithArguments(load);
    
    // initialize happens as part of the load
}

TTSoundfileLoader::~TTSoundfileLoader()
{
	mTargetMatrix = NULL; // reset to NULL for reference counting
}

/**	Internal method that sets the class's pointer to the target sample matrix for loading sound file data. Because only TTMatrixPtr is allowed to be passed using TTValue, we perform a test to ensure that it is indeed a TTSampleMatrix before setting the new pointer.
 @param     newTargetMatrix     pointer to the new matrix
 @return    TTErr               kTTErrNone if the pointer was updated. kTTErrInvalidValue is the pointer was not to a TTSampleMatrix.
 */
TTErr TTSoundfileLoader::setTargetMatrix(const TTMatrixPtr newTargetMatrix)
{
    if (newTargetMatrix->getName() != "samplematrix")
    {
        return kTTErrInvalidValue;
    } else {
        mTargetMatrix = (TTSampleMatrixPtr)&newTargetMatrix;
        return kTTErrNone;
    }
}

/**	Public method used to trigger the load process. Copies samples from a sound file on the hard drive into a TTSampleMatrix. 
 @param[in]     input           requires 2 items: TTSymbol containing the file path, TTMatrixPtr to the target matrix.
 @param[out]    unusedOutput    not used 
 @return        TTErr           kTTErrNone load was successful. kTTErrInvalidFilepath if the filepath was invalid. kTTErrInvalidValue if the pointer to TTSampleMatrix was invalid.
 */
TTErr TTSoundfileLoader::load(const TTValueRef input, TTValueRef unusedOutput)
{
    // sort out the two input values
    TTValue newFilePath = input[0];
    TTMatrixPtr newTargetMatrix = input[1];
    
    // set the mFilePath
    
    // set the mTargetMatrix
    
    // set the start and end points in source file
    
    // set the start and end points in mTargetMatrix
    
    // copy the samples (one at a time initially, to be optimized later)
    
    // QUESTIONS to consider
    // how will we handle multi channels?
    // should the sample rate get copied across?
    // if the size is different, what is the desired behavior?
    
    // reset? should mFilePath & mTargetMatrix be reset at the conclusion?
    
    return kTTErrNone;
}