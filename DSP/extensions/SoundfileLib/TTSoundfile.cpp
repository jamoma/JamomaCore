/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Provides a common interface to soundfile data
 *
 * @details This object provides a common set of attributes and methods for working with soundfiles at a specific filepath.
 * This allows us to access metadata and copy values in a common way without duplicating code. As with the rest of the
 * SoundfileLib, the third-party <a href="http://www.mega-nerd.com/libsndfile/">libsndfile library</a> is used for actual
 * access.
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfile.h"

TTObjectBasePtr TTSoundfile::instantiate(TTSymbol& name, TTValue& arguments)
{
	return new TTSoundfile(arguments);
}


extern "C" void TTSoundfile::registerClass()
{
	TTClassRegister(thisTTClassName, thisTTClassTags, TTSoundfile::instantiate);
}


TTErr TTSoundfile::setFilePath(const TTValue& newValue)
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
