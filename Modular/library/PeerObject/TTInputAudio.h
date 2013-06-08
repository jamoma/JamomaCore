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

#ifndef __TT_INPUT_AUDIO_H__
#define __TT_INPUT_AUDIO_H__

#include "TTInput.h"

/** An audio input component for Jamoma models.
 */
class TTMODULAR_EXPORT TTInputAudio : public TTInput
{
	TTCLASS_SETUP(TTInputAudio)

public:
	void process(TTSampleValue* anInputSampleVector, TTSampleValue* anOutputSampleVector, TTUInt16 aVectorSize);

	TTSampleValue* getVector()
	{
		return TTAudioSignalPtr(mSignalOut)->mSampleVectors[0];
	}
	
	void setupAudioSignals(TTUInt16 aVectorSize)
	{
		mSignalIn->setAttributeValue(kTTSym_numChannels, 1);
		mSignalOut->setAttributeValue(kTTSym_numChannels, 1);
        mSignalZero->setAttributeValue(kTTSym_numChannels, 1);
        
		mSignalIn->setAttributeValue(kTTSym_vectorSize, aVectorSize);
		mSignalOut->setAttributeValue(kTTSym_vectorSize, aVectorSize);
        mSignalZero->setAttributeValue(kTTSym_vectorSize, aVectorSize);
		
		mSignalOut->sendMessage(kTTSym_alloc);
        mSignalZero->sendMessage(kTTSym_alloc);
        mSignalZero->sendMessage(kTTSym_clear);
	}
};

typedef TTInputAudio* TTInputAudioPtr;


#endif // __TT_INPUT_AUDIO_H__
