/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief An audio output component for Jamoma models.
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright © 2013, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOutputAudio.h"

#define thisTTClass			TTOutputAudio
#define thisTTClassName		"Output.audio"
#define thisTTClassTags		"output"

TTObjectBasePtr TTOutputAudio::instantiate (TTSymbol name, TTValue arguments)
{
	return new TTOutputAudio(arguments);
}


extern "C" void TTOutputAudio::registerClass()
{
	TTClassRegister(TTSymbol("Output.audio"), thisTTClassTags, TTOutputAudio::instantiate);
}


TTOutputAudio::TTOutputAudio(const TTValue& arguments) :
TTOutput(arguments)
{
	TTValue				args;
	
	mType = "audio";

	// the only argument is the owner, which is used as a baton to hand to the callback
	if (arguments.size())
		mReturnSignalCallback = TTCallbackPtr((TTObjectBasePtr)arguments[0]);
	if (arguments.size() > 1)
		mReturnLinkCallback = TTCallbackPtr((TTObjectBasePtr)arguments[1]);
	
	TTObjectBaseInstantiate(kTTSym_audiosignal, &mSignalIn, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &mSignalOut, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &mSignalTemp, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &mSignalZero, 1);
    
	TTObjectBaseInstantiate(TTSymbol("crossfade"), &mMixUnit, 1);
	if (mMixUnit)
        mMixUnit->setAttributeValue(TTSymbol("position"), 1.0);
	
    TTObjectBaseInstantiate(TTSymbol("gain"), &mGainUnit, 1);
    if (mGainUnit)
        mGainUnit->setAttributeValue(TTSymbol("linearGain"), 1.0);
    
	TTObjectBaseInstantiate(TTSymbol("ramp"), &mRampMixUnit, 1);
	TTObjectBaseInstantiate(TTSymbol("ramp"), &mRampGainUnit, 1);
}


TTOutputAudio::~TTOutputAudio()
{
	TTObjectBaseRelease(&mSignalIn);
	TTObjectBaseRelease(&mSignalOut);
	TTObjectBaseRelease(&mSignalTemp);
	TTObjectBaseRelease(&mSignalZero);
	TTObjectBaseRelease(&mMixUnit);
	TTObjectBaseRelease(&mGainUnit);
	TTObjectBaseRelease(&mRampMixUnit);
	TTObjectBaseRelease(&mRampGainUnit);
}


void TTOutputAudio::process(TTSampleValue* anInputSampleVector, TTSampleValue* anOutputSampleVector, TTUInt16 aVectorSize)
{
	// Store the audio vector as a proper audio signal
	TTAudioSignalPtr(mSignalIn)->setVector64Copy(0, aVectorSize, anInputSampleVector);
	
	// if the output signal is muted
	if (mMute)
		TTAudioSignal::copy(*TTAudioSignalPtr(mSignalZero), *TTAudioSignalPtr(mSignalOut));
	
	// if input signal exists
	else if (mInputObject) {
		
		// if input signal is bypassed : copy input (in Temp)
		if (mInputObject->mBypass)
			TTAudioSignal::copy(*TTAudioSignalPtr(mInputObject->mSignalIn), *TTAudioSignalPtr(mSignalTemp));
		
		// otherwise mix input and output signals (in Temp)
		else
			TTAudioObjectBasePtr(mMixUnit)->process(TTAudioSignalPtr(mInputObject->mSignalOut), TTAudioSignalPtr(mSignalIn), TTAudioSignalPtr(mSignalTemp));
		
		// then perform gain control (from Temp)
		TTAudioObjectBasePtr(mGainUnit)->process(TTAudioSignalPtr(mSignalTemp), TTAudioSignalPtr(mSignalOut));
	}
	// otherwise just perform gain control
	else
		TTAudioObjectBasePtr(mGainUnit)->process(TTAudioSignalPtr(mSignalIn), TTAudioSignalPtr(mSignalOut));
	
	// Send the input on to the outlets for the algorithm
	TTAudioSignalPtr(mSignalOut)->getVectorCopy(0, aVectorSize, anOutputSampleVector);
}

