/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Loads a soundfile into a #TTBuffer
 *
 * @details
 * 
 * @see TTBuffer, TTSampleMatrix
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
#include "TTSampleMatrix.h"

#ifdef uint
#undef uint
#endif
#include "libsndfile/sndfile.h"

//** Enables user to load a soundfile from disk into a TTBuffer */
class TTSoundfileToBuffer : public TTAudioObjectBase {
	TTCLASS_SETUP(TTSoundfileToBuffer)
	
protected:
	TTSymbol		mFilePath;		///< full POSIX path to the file, including file name
	TTSymbol		mTitle, mAnnotation, mArtist, mDate; ///< soundfile metadata
	SNDFILE*		mSoundFile; 	///< libsndfile handle for the actual file open
	SF_INFO			mSoundFileInfo;	///< libsndfile metadata for the file we open
	
	TTSampleMatrixPtr		mTargetMatrix;		///< local pointer to where we will load the soundfile
};

// This object needs to work with the TTSampleMatrix. It can be wrapped in the TTBuffer object like fill() to allow for library function. But it needs to be built here within the sndfilelib to limit our exposure to a 3rd party library.

#endif // __TT_SOUNDFILETOBUFFER_H__