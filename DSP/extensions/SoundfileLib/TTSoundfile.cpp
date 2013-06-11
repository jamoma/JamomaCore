/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Provides a common interface to soundfile data
 *
 * @details This object provides a common set of attributes and methods for working with soundfiles at a specific filepath.
 * This allows us to access metadata and copy values in a common way without duplicating code. As with the rest of the
 * SoundfileLib, it relies on the third-party <a href="http://www.mega-nerd.com/libsndfile/">libsndfile library</a>.@n
 * Be aware that attributes and metadata are cached when the setFilePath method is called in order to provide efficiency, but this may lead to problems if the file somehow changes after the method call.
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfile.h"

#define thisTTClass			TTSoundfile
#define thisTTClassName		"soundfile"
#define thisTTClassTags		"soundfile"

TT_AUDIO_CONSTRUCTOR,
mFilePath(kTTSymEmpty),
mNumChannels(0),
mSampleRate(0.0),
mDurationInSamples(0),
mDurationInSeconds(0.0),
mTitle(kTTSymEmpty),
mArtist(kTTSymEmpty),
mDate(kTTSymEmpty),
mAnnotation(kTTSymEmpty),
mSoundFile(NULL)
{
	// add the attributes and messages here
    addAttributeWithSetter(FilePath, kTypeSymbol);
    addAttribute(NumChannels, kTypeInt16);
        addAttributeProperty(NumChannels, readOnly, kTTBoolYes);
    // need to add the rest of these here...
    addAttribute(SampleRate, kTypeFloat64);
        addAttributeProperty(SampleRate, readOnly, kTTBoolYes);
    addAttribute(DurationInSamples, kTypeInt64);
        addAttributeProperty(DurationInSamples, readOnly, kTTBoolYes);
    addAttribute(DurationInSeconds, kTypeFloat64);
        addAttributeProperty(DurationInSeconds, readOnly, kTTBoolYes);
    addAttribute(Title, kTypeSymbol);
        addAttributeProperty(Title, readOnly, kTTBoolYes);
    addAttribute(Artist, kTypeSymbol);
        addAttributeProperty(Artist, readOnly, kTTBoolYes);
    addAttribute(Date, kTypeSymbol);
        addAttributeProperty(Date, readOnly, kTTBoolYes);
    addAttribute(Annotation, kTypeSymbol);
        addAttributeProperty(Annotation, readOnly, kTTBoolYes);
	
	//* Send a file path to the object and attempt to load the file *//
	TTErr setFilePath(const TTValue& value);
}

TTSoundfile::~TTSoundfile()
{
	// copied from TTSoundfilePlayer, confirm that it is needed
	if (mSoundFile)
		sf_close(mSoundFile);
}


TTErr TTSoundfile::setFilePath(const TTValue& newValue)
{
	TTSymbol	potentialFilePath = newValue;
	SNDFILE*	soundfile;
	const char*	textInfo;
#ifdef TT_PLATFORM_WIN
	// There is a bug in libsndfile on Windows where upon return from this function a runtime check fails
	// because the stack is corrupted around soundfileInfo when sf_open() is called.
	// We work around this by allocating some extra memory to absorb the overrun.
    // [tap - old comment from soundfileplayer]
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
		
		/* copy additional data to local variables */
        // filepath
		mFilePath = potentialFilePath;
        
        // number of channels
        mNumChannels = mSoundFileInfo.channels;
        
        // sample rate
        mSampleRate = mSoundFileInfo.samplerate;
        
        // duration in samples
		mDurationInSamples = mSoundFileInfo.frames;
        
        // duration in seconds
		mDurationInSeconds = mDurationInSamples / mSampleRate;
		
		// copy specific metadata pieces to separate TTSymbols
		// in transfer from player, made this little pattern into a macro
            #define SF_STRING_TO_TTSYMBOL(sf_info_piece, local_ttsymbol) \
                textInfo = sf_get_string(soundfile, sf_info_piece); \
                if (textInfo) { \
                    local_ttsymbol = TT(textInfo); \
                } \
                else local_ttsymbol = kTTSymEmpty;
		
		// title
		SF_STRING_TO_TTSYMBOL(SF_STR_TITLE, mTitle);
		// artist
		SF_STRING_TO_TTSYMBOL(SF_STR_ARTIST, mArtist);
		// date
		SF_STRING_TO_TTSYMBOL(SF_STR_DATE, mDate);
        // comment
		SF_STRING_TO_TTSYMBOL(SF_STR_COMMENT, mAnnotation);
        
		
		return kTTErrNone;
        
	} else { // if the filepath was invalid
		char errstr[256];
		sf_error_str(soundfile, errstr, 256);
		TTLogMessage("cannot open soundfile %s: %s", potentialFilePath.c_str(), errstr);
        
		return kTTErrInvalidValue;
        
	}
	
}

TTErr	TTSoundfile::peek(const TTColumnID frame, const TTRowID channel, TTSampleValue& value)
{
    double temp_value[channel];
    sf_count_t seekInFrames;
    sf_count_t numSamplesRead;
    
    seekInFrames = sf_seek(mSoundFile, frame, SEEK_SET);
    
    if (seekInFrames == -1) {
        return kTTErrGeneric;
    }
    
    numSamplesRead = sf_readf_double(mSoundFile, &temp_value[0], 1);
    
    if (numSamplesRead != 1) {
        return kTTErrGeneric;
    }
    
    value = temp_value[channel];
    return kTTErrNone;
    
}