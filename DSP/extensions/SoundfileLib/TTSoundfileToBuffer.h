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

#ifndef __TT_SOUNDFILETOBUFFER_H__
#define __TT_SOUNDFILETOBUFFER_H__

#include "TTDSP.h"

#ifdef uint
#undef uint
#endif
#include "libsndfile/sndfile.h"

//** Enables user to load a soundfile from disk into a TTBuffer */
class TTSoundfileToBuffer : public TTAudioObjectBase {
	TTCLASS_SETUP(TTSoundfileToBuffer)
	
protected:
	TTSymbol			mFilePath;		///< full POSIX path to the file, including file name
	
};

#endif // __TT_SOUNDFILETOBUFFER_H__