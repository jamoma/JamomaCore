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

/**	Internal method that sets the class's pointer to the target sample matrix for loading sound file data. 
 @param     newTargetMatrix     pointer to the new matrix
 @return    TTErr               kTTErrNone if the pointer was updated.
 */
TTErr TTSoundfileLoader::setTargetMatrix(const TTSampleMatrixPtr newTargetMatrix)
{
    mTargetMatrix = newTargetMatrix;
    return kTTErrNone;
}

/**	Internal method that sets the class's pointer to the target sample matrix for loading sound file data. This version acts as a function overload so that setTargetMatrix() can accept a TTObjectBase* as an input parameter and test whether it points to an actual instance of TTSampleMatrix.
 @param     newTargetMatrix     pointer to the new matrix
 @return    TTErr               kTTErrNone if the pointer was updated. kTTErrInvalidValue if the pointer was not to a TTSampleMatrix.
 */
TTErr TTSoundfileLoader::setTargetMatrix(const TTObjectBase* newTargetObjectPtr)
{
    TTSampleMatrixPtr newTargetMatrix = NULL;
    
    if (newTargetObjectPtr->getName() != TT("samplematrix"))
    {
        return kTTErrInvalidValue;
    } else {
        // get a generic TTPtr, then cast to TTSampleMatrixPtr
        newTargetMatrix = (TTSampleMatrixPtr)(TTPtr(newTargetObjectPtr));
        return setTargetMatrix(newTargetMatrix);
    }
}

/**	Internal method that copies values from the sound file to the targetted TTSampleMatrix. Beware that the setFilePath() and setTargetMatrix() must be successfully executed before this method is called.
 @return    TTErr               kTTErrNone if copy is successful. kTTErrGeneric if the source soundfile was too short to fill samplematrix.
 */
TTErr TTSoundfileLoader::copyUntilFilled()
{
    // NOTE: we will temporarily assume that numChannels and sampleRate match
    TTUInt32 targetMatrixLength = mTargetMatrix->getComponentCount();
    TTSampleMatrixPtr targetMatrixPtr = mTargetMatrix;
    
    if (this->getLengthInSamples() < targetMatrixLength)
    {
        // if the soundfile is shorter than the samplemartix...
        // we will throw an error because we are only interested in completely filling the SampleMartix, for now
        return kTTErrGeneric;
    } else {
        // if the soundfile is longer than the samplemartix...
        TTSampleValue valueToMove;
        
        for (TTRowID sample=0;sample<targetMatrixLength;sample++)
        {
            // TTSoundfile:peek() -> TTSampleMatrix:poke()
            this->peek(sample,0,valueToMove);
            //TTTestLog("peek sample %i returned the value %f", sample, valueToMove); // temp
            targetMatrixPtr->poke(sample,0,valueToMove); // this line causing segmentation faults
        }
        
        return kTTErrNone;
    }
}

/**	Public method used to trigger the load process. Copies samples from a sound file on the hard drive into a TTSampleMatrix. 
 @param[in]     input           requires 2 items: TTSymbol containing the file path, TTPtr to the target matrix.
 @param[out]    unusedOutput    not used 
 @return        TTErr           kTTErrNone load was successful. kTTErrInvalidFilepath if the filepath was invalid. kTTErrInvalidValue if the pointer to TTSampleMatrix was invalid.
 */
TTErr TTSoundfileLoader::load(const TTValueRef input, TTValueRef unusedOutput)
{
    // sort out the two input values
    TTSymbol newFilePath = kTTSymEmpty; //input[0]
    TTObjectBasePtr newTargetMatrix = NULL; //input[1]
    TTErr err = kTTErrNone;
    
    input.get(0,newFilePath);
    input.get(1,newTargetMatrix);
    
    // set the mFilePath
    err = setFilePath(newFilePath);
    
    // set the mTargetMatrix
    if (!err)
        err = setTargetMatrix(newTargetMatrix);
    
    // set the start and end points in source file
    
    // set the start and end points in mTargetMatrix
    
    // copy the samples (one at a time initially, to be optimized later)
    if (!err)
        err = copyUntilFilled();
    
    // QUESTIONS to consider
    // how will we handle multi channels?
    // should the sample rate get copied across?
    // if the size is different, what is the desired behavior?
    
    // reset? should mFilePath & mTargetMatrix be reset at the conclusion?
    
    return err;
}