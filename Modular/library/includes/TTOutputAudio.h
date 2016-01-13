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

/** An audio output component for Jamoma models.
 */
class TTMODULAR_EXPORT TTOutputAudio : public TTOutput
{
	TTCLASS_SETUP(TTOutputAudio)
	
public:	// use public for quick acces during signal processing

	// perform
	void process(TTSampleValue* anInputSampleVector, TTSampleValue* anOutputSampleVector, TTUInt16 aVectorSize);

	// dsp
    void setupAudioSignals(TTUInt16 aVectorSize, TTFloat64 aSampleRate);
};

typedef TTOutputAudio* TTOutputAudioPtr;

#endif // __TT_OUTPUT_AUDIO_H__
