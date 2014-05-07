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
	
	mSignalIn = TTObject(kTTSym_audiosignal, 1);
	mSignalOut = TTObject(kTTSym_audiosignal, 1);
	mSignalZero = TTObject(kTTSym_audiosignal, 1);
}


TTInputAudio::~TTInputAudio()
{
    ;
}


void TTInputAudio::process(TTSampleValue* anInputSampleVector, TTSampleValue* anOutputSampleVector, TTUInt16 aVectorSize)
{
	// Store the input from the inlets
	TTAudioSignalPtr(mSignalIn.instance())->setVector64Copy(0, aVectorSize, anInputSampleVector);
    
    // Sum signal from j.send~ objects
    for (mSignalCache.begin(); mSignalCache.end(); mSignalCache.next()) {
        TTObject o = mSignalCache.current()[0];
        TTAudioSignalPtr sentSignal = TTAudioSignalPtr(o.instance());
        
        if (sentSignal)
            *TTAudioSignalPtr(mSignalIn.instance()) += *sentSignal;
    }
	
	// if signal is bypassed or muted, send a zero signal to the algorithm
	if (mBypass || mMute)
		TTAudioSignal::copy(*TTAudioSignalPtr(mSignalZero.instance()), *TTAudioSignalPtr(mSignalOut.instance()));
	
	// else copy in to out
	else
		TTAudioSignal::copy(*TTAudioSignalPtr(mSignalIn.instance()), *TTAudioSignalPtr(mSignalOut.instance()));
	
	// clear the signal cache
	mSignalCache.clear();
	
	// Send the input on to the outlets for the algorithm, if desired
	if (anOutputSampleVector)
		TTAudioSignalPtr(mSignalOut.instance())->getVectorCopy(0, aVectorSize, anOutputSampleVector);
}

