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
#define thisTTClassTags		"dspSoundFileLib, audio, soundfile, buffer"

TTObjectBasePtr TTSoundfileLoader::instantiate(TTSymbol name, TTValue arguments)
{
	return new TTSoundfileLoader(arguments);
}


extern "C" void TTSoundfileLoader::registerClass()
{
	TTClassRegister(thisTTClassName, thisTTClassTags, TTSoundfileLoader::instantiate);
}


TTSoundfileLoader::TTSoundfileLoader(const TTValue& arguments) :
    TTSoundfile(arguments),
    mTargetMatrix(NULL)
{    
    this->mTargetMatrixLengthInSamples = 0;
    this->mTargetMatrixNumChannels = 0;
    this->mTargetMatrixSampleRate = 0.;
    this->mStartCopyAtSampleIndex = 0;
    this->mEndCopyAtSampleIndex = 0;
    this->mCopyFromChannelIndex = 0;
    
    // add the attributes and messages here
    addMessageWithArguments(load);
    
    // initialize happens as part of the load
}

TTSoundfileLoader::~TTSoundfileLoader()
{
	mTargetMatrix = NULL; // reset to NULL for reference counting
}

// target a new TTSampleMatrix
TTErr TTSoundfileLoader::setTargetMatrix(const TTSampleMatrixPtr newTargetMatrix)
{
    TTErr err = kTTErrNone;
    
    mTargetMatrix = newTargetMatrix;
    mTargetMatrixLengthInSamples = mTargetMatrix->getRowCount();
    mTargetMatrixNumChannels = mTargetMatrix->getColumnCount();
    mTargetMatrix->getAttributeValue("sampleRate",mTargetMatrixSampleRate);
    
    return err;
}

// target a new TTObjectBase if it proves to be a TTSampleMatrix
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

// copy values from sound file until TTSampleMartix is completely full.
TTErr TTSoundfileLoader::copyUntilFilled()
{
    // NOTE: this method assumes that sampleRates match.
    // we are using class variables in the code here.
    
    if ((mEndCopyAtSampleIndex - mStartCopyAtSampleIndex) < mTargetMatrixLengthInSamples)
    {
        // if the soundfile is shorter than the samplemartix...
        // we will throw an error because we are only interested in completely filling the SampleMartix, for now
        return kTTErrGeneric;
    } else {
        // if the soundfile is longer than the samplemartix...
        TTSampleValue valueToMove;
        
        // to deal with multi-channel differences, we copy the minimum
        // number of channels present in either the source or target
        TTColumnID numChannelsToCopy = std::min(mTargetMatrixNumChannels, this->getNumChannels());
        numChannelsToCopy = std::min(numChannelsToCopy, (this->getNumChannels() - mCopyFromChannelIndex));
        //TTTestLog("we will copy %i channels", numChannelsToCopy);
        
        for (TTRowID sample=0;sample<mTargetMatrixLengthInSamples;sample++)
        {
            for (TTColumnID channel=0; channel<numChannelsToCopy; channel++)
            {
                
                this->peek( (sample + mStartCopyAtSampleIndex),
                            (channel + mCopyFromChannelIndex),
                            valueToMove);
                //TTTestLog("peek sample %i returned the value %f", sample, valueToMove); 
                
                mTargetMatrix->poke(    sample,
                                        channel,
                                        valueToMove);
            }
        }
        
        return kTTErrNone;
    }
}

// copy values from sound file into TTSampleMartix with a different sampleRate until it is completely full.
TTErr TTSoundfileLoader::copyUntilFilledWithResampling()
{
    // NOTE: this method does not assumes that sampleRates match.
    // we are using class variables in the code here.
    
    TTFloat64 targetToSourceFactor = this->mSampleRate/mTargetMatrixSampleRate;
    TTFloat64 sourceToTargetFactor = mTargetMatrixSampleRate/this->mSampleRate;
    
    if (((mEndCopyAtSampleIndex - mStartCopyAtSampleIndex) * sourceToTargetFactor) < mTargetMatrixLengthInSamples)
    {
        // if the soundfile is shorter than the samplemartix...
        // we will throw an error because we are only interested in completely filling the SampleMartix, for now
        return kTTErrGeneric;
    } else {
        // if the soundfile is longer than the samplemartix...
        TTSampleValue valueToMove;
        TTFloat64 sourceFloatIndex;
        
        // to deal with multi-channel differences, we copy the minimum
        // number of channels present in either the source or target
        TTColumnID numChannelsToCopy = std::min(mTargetMatrixNumChannels, this->getNumChannels());
        numChannelsToCopy = std::min(numChannelsToCopy, (this->getNumChannels() - mCopyFromChannelIndex));
        //TTTestLog("we will copy %i channels", numChannelsToCopy);
        
        for (   TTRowID targetIndex=0;
                targetIndex<mTargetMatrixLengthInSamples;
                targetIndex++    )
        {
            
            sourceFloatIndex =  mStartCopyAtSampleIndex +
                                (targetIndex * targetToSourceFactor);
            
            for (TTColumnID channel=0; channel<numChannelsToCopy; channel++)
            {
            
                this->peeki(    sourceFloatIndex,
                                (channel + mCopyFromChannelIndex),
                                valueToMove);
                //TTTestLog("peek sample %i returned the value %f", sample, valueToMove); // temp
                
                mTargetMatrix->poke(    targetIndex,
                                        channel,
                                        valueToMove);
            }
        }
        
        return kTTErrNone;
    }
}

// override this method from superclass to set additional parameters 
TTErr TTSoundfileLoader::setFilePath(const TTValue& newValue)
{
    TTErr err = kTTErrNone;
    
    err = TTSoundfile::setFilePath(newValue);
    this->mStartCopyAtSampleIndex = 0;
    if (!err)
    {
        this->mEndCopyAtSampleIndex = this->getLengthInSamples();
    } else {
        this->mEndCopyAtSampleIndex = 0;
    }
    this->mCopyFromChannelIndex = 0;
    
    return err;
}


// load new sound file into a SampleMatrix
TTErr TTSoundfileLoader::load(const TTValueRef input, TTValueRef unusedOutput)
{
    // sort out the two input values
    TTObjectBasePtr newTargetMatrix = input[0];
    TTSymbol newFilePath = input[1];
    TTErr err = kTTErrNone;
    
    // set the mTargetMatrix
    err = setTargetMatrix(newTargetMatrix);
    
    // set the mFilePath, which also sets default values for
    // mStartCopyAtSampleIndex, mEndCopyAtSampleIndex & mCopyFromChannelIndex
    if (!err)
        err = setFilePath(newFilePath);
    
    // set optional input parameters
    if (!err)
    {
        if (input.size() > 2) mCopyFromChannelIndex = input[2];
        if (input.size() > 3) mStartCopyAtSampleIndex = input[3];
        if (input.size() > 4) mEndCopyAtSampleIndex = input[4];
    }
    
    if (!err)
    {
        // compare sample rates
        TTBoolean sameSampleRate = TTTestFloatEquivalence(mTargetMatrixSampleRate, this->mSampleRate, true, 0.0000001);
        
        if (sameSampleRate)
        {
            // copy the samples (one at a time initially, could be optimized later)
            err = copyUntilFilled();
        } else {
            // copy the samples with resampling (one at a time initially, could be optimized later)
            err = copyUntilFilledWithResampling();
        }
    }
        
    // reset? should mFilePath & mTargetMatrix be reset at the conclusion?
    
    return err;
}