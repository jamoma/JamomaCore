/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Loads a soundfile into a #TTBuffer
 *
 * @details
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfileToBuffer.h"

#define thisTTClass			TTSoundfileToBuffer
#define thisTTClassName		"soundfile.tobuffer"
#define thisTTClassTags		"audio, soundfile, buffer"


TT_AUDIO_CONSTRUCTOR,
mFilePath(kTTSymEmpty),
mTitle(kTTSymEmpty),
mAnnotation(kTTSymEmpty),
mArtist(kTTSymEmpty),
mDate(kTTSymEmpty),
mSoundFile(NULL),
mDuration(0.0),
mNumChannels(0)
{
	// add the attributes and messages here
}

TTSoundfilePlayer::~TTSoundfilePlayer()
{
	// copied from TTSoundfilePlayer, confirm that it is needed
	if (mSoundFile)
		sf_close(mSoundFile);
}