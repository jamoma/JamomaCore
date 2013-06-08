/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Loads a soundfile into a #TTSampleMatrix
 *
 * @details
 * 
 * @see TTSampleMatrix, TTSampleMatrix
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SOUNDFILETOSAMPLEMATRIX_H__
#define __TT_SOUNDFILETOSAMPLEMATRIX_H__

#include "TTDSP.h"
#include "TTSampleMatrix.h"

#ifdef uint
#undef uint
#endif
#include "libsndfile/sndfile.h"

//** Enables user to load a soundfile from disk into a TTSampleMatrix */
class TTSoundfileToSampleMatrix : public TTAudioObjectBase {
	TTCLASS_SETUP(TTSoundfileToSampleMatrix)
	
protected:
	TTSymbol		mFilePath;		///< full POSIX path to the file, including file name
	TTSymbol		mTitle, mAnnotation, mArtist, mDate; ///< soundfile metadata
	SNDFILE*		mSoundFile; 	///< libsndfile handle for the actual file open
	SF_INFO			mSoundFileInfo;	///< libsndfile metadata for the file we open
	
	TTSampleMatrixPtr		mTargetMatrix;		///< local pointer to where we will load the soundfile
};

// TODO: this object needs to work with the TTSampleMatrix. It can be wrapped in the TTSampleMatrix object like fill() to allow for library function. But it needs to be built here within the sndfilelib to limit our exposure to a 3rd party library.

//** Send a file path to the object and attempt to load the file *//
TTErr TTSoundfileToSampleMatrix::setFilePath(const TTValue& newValue)
{
	TTSymbol	potentialFilePath = newValue;
	SNDFILE*	soundfile;
	const char*	textInfo;
#ifdef TT_PLATFORM_WIN
	// There is a bug in libsndfile on Windows where upon return from this function a runtime check fails
	// because the stack is corrupted around soundfileInfo when sf_open() is called.
	// We work around this by allocating some extra memory to absorb the overrun. [tap]
	SF_INFO		soundfileInfo[2];
#else
	SF_INFO		soundfileInfo[1];
#endif

	memset(&soundfileInfo, 0, sizeof(SF_INFO));
	//soundfileInfo.format = 0;
	soundfile = sf_open(potentialFilePath.c_str(), SFM_READ, soundfileInfo);
	
	if (soundfile) { // if the filepath was valid
		
		// swap out the old for the new, but hold onto the old for a moment
		SNDFILE* oldSoundFile = mSoundFile;
		mSoundFile = soundfile;
		
		// if there was an old file, we can now close it
		if (oldSoundFile)
			sf_close(oldSoundFile);
		
		// copy the metadata to our local variable
		memcpy(&mSoundFileInfo, soundfileInfo, sizeof(SF_INFO));
		
		// copy the new filepath to the our local variable
		mFilePath = potentialFilePath;
		// there is some playback specific stuff here in original
		// should be abstracted out if we want a shared setFilePath()
		
		// copy specific metadata pieces to separate TTSymbols
		// in transfer from player, made this little pattern into a macro
		#define SF_STRING_TO_TTSYMBOL(sf_info_piece, local_ttsymbol) \
			textInfo = sf_get_string(soundfile, sf_info_piece); \
			if (textInfo) local_ttsymbol = TT(textInfo); \
			else local_ttsymbol = kTTSymEmpty;
		
		// title
		SF_STRING_TO_TTSYMBOL(SF_STR_TITLE, mTitle);
		// artist
		SF_STRING_TO_TTSYMBOL(SF_STR_ARTIST, mArtist);
		// comment
		SF_STRING_TO_TTSYMBOL(SF_STR_COMMENT, mAnnotation);
		// date
		SF_STRING_TO_TTSYMBOL(SF_STR_DATE, mDate);
		
		// duration
		mDuration = mSoundFileInfo.frames / mSoundFileInfo.samplerate;
		
		return kTTErrNone;
	} else { // if the filepath was invalid
		char errstr[256];
		sf_error_str(soundfile, errstr, 256);
		TTLogMessage("cannot open soundfile %s: %s", potentialFilePath.c_str(), errstr);
		return kTTErrGeneric;
	}
	
}

#endif // __TT_SOUNDFILETOSAMPLEMATRIX_H__