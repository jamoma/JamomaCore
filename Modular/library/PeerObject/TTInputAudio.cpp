/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief An audio input component for Jamoma models.
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright © 2013, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTInputAudio.h"

#define thisTTClass			TTInputAudio
#define thisTTClassName		"Input.audio"
#define thisTTClassTags		"input"


TTObjectBasePtr TTInputAudio::instantiate (TTSymbol name, TTValue arguments)
{
	return new TTInputAudio(arguments);
}


extern "C" void TTInputAudio::registerClass()
{
	TTClassRegister(TTSymbol("Input.audio"), thisTTClassTags, TTInputAudio::instantiate);
}


TTInputAudio :: TTInputAudio (const TTValue& arguments) :
TTInput(arguments)
{
	mType = "audio";
	
	TTObjectBaseInstantiate(kTTSym_audiosignal, &mSignalIn, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &mSignalOut, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &mSignalZero, 1);
}


TTInputAudio::~TTInputAudio()
{
	TTObjectBaseRelease(&mSignalIn);
	TTObjectBaseRelease(&mSignalOut);
	TTObjectBaseRelease(&mSignalZero);
}


void TTInputAudio::process(TTSampleValue* anInputSampleVector, TTSampleValue* anOutputSampleVector, TTUInt16 aVectorSize)
{
	// Store the input from the inlets
	TTAudioSignalPtr(mSignalIn)->setVector64Copy(0, aVectorSize, anInputSampleVector);
    
    // Sum signal from j.send~ objects
    if (mSignalCache) {
        
        for (mSignalCache->begin(); mSignalCache->end(); mSignalCache->next()) {
            TTAudioSignalPtr sentSignal = TTAudioSignalPtr((TTObjectBasePtr)mSignalCache->current()[0]);
            
            if (sentSignal)
                *TTAudioSignalPtr(mSignalIn) += *sentSignal;
        }
    }
	
	// if signal is bypassed or muted, send a zero signal to the algorithm
	if (mBypass || mMute)
		TTAudioSignal::copy(*TTAudioSignalPtr(mSignalZero), *TTAudioSignalPtr(mSignalOut));
	
	// else copy in to out
	else
		TTAudioSignal::copy(*TTAudioSignalPtr(mSignalIn), *TTAudioSignalPtr(mSignalOut));
	
	// clear the signal cache
	mSignalCache->clear();
	
	// Send the input on to the outlets for the algorithm, if desired
	if (anOutputSampleVector)
		TTAudioSignalPtr(mSignalOut)->getVectorCopy(0, aVectorSize, anOutputSampleVector);
}

