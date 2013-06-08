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

#ifndef __TT_OUTPUT_AUDIO_H__
#define __TT_OUTPUT_AUDIO_H__

#include "TTOutput.h"
#include "TTInputAudio.h"

/** An audio output component for Jamoma models.
 */
class TTMODULAR_EXPORT TTOutputAudio : public TTOutput
{
	TTCLASS_SETUP(TTOutputAudio)
	
public:	// use public for quick acces during signal processing

	void process(TTSampleValue* anInputSampleVector, TTSampleValue* anOutputSampleVector, TTUInt16 aVectorSize);

	
	void setupAudioSignals(TTUInt16 aVectorSize, TTFloat64 aSampleRate)
	{
		mRampGainUnit->setAttributeValue(kTTSym_sampleRate, aSampleRate);	// convert midi to db for tap_gain
		mGainUnit->setAttributeValue(TTSymbol("interpolated"), 1);
		mRampMixUnit->setAttributeValue(kTTSym_sampleRate, aSampleRate);	// convert midi to db for tap_gain
		
		mSignalIn->setAttributeValue(kTTSym_numChannels, 1);
		mSignalOut->setAttributeValue(kTTSym_numChannels, 1);
		mSignalTemp->setAttributeValue(kTTSym_numChannels, 1);
		mSignalZero->setAttributeValue(kTTSym_numChannels, 1);
		
		mSignalIn->setAttributeValue(kTTSym_vectorSize, aVectorSize);
		mSignalOut->setAttributeValue(kTTSym_vectorSize, aVectorSize);
		mSignalTemp->setAttributeValue(kTTSym_vectorSize, aVectorSize);
		mSignalZero->setAttributeValue(kTTSym_vectorSize, aVectorSize);
		
		mSignalOut->sendMessage(kTTSym_alloc);
		mSignalTemp->sendMessage(kTTSym_alloc);
		mSignalZero->sendMessage(kTTSym_alloc);
		mSignalZero->sendMessage(kTTSym_clear);
	}
};

typedef TTOutputAudio* TTOutputAudioPtr;

#endif // __TT_OUTPUT_AUDIO_H__
