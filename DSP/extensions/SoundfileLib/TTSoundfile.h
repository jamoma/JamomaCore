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

#ifndef __TT_SOUNDFILE_H__
#define __TT_SOUNDFILE_H__

#include "TTDSP.h"

#ifdef uint
#undef uint
#endif
#include "libsndfile/sndfile.h"

//** Creates an interface to data in a soundfile from disk */
class TTSoundfile : public TTAudioObjectBase {
	TTCLASS_SETUP(TTSoundfile)
	
protected:
	TTSymbol		mFilePath;              ///< full POSIX path to the file, including file name
    TTRowID         mNumChannels;           ///< channels in the file
    TTFloat64       mSampleRate;            ///< samples per second
    TTColumnID      mDurationInSamples;     ///< length in samples
    TTFloat64       mDurationInSeconds;     ///< length in seconds
    TTSymbol		mTitle;                 ///< title if metadata is present in the file
    TTSymbol		mArtist;                ///< artist if metadata is present in the file
    TTSymbol		mDate;                  ///< date if metadata is present in the file
    TTSymbol		mAnnotation;            ///< comments if metadata is present in the file

private:
	SNDFILE*		mSoundFile;             ///< libsndfile handle for the actual file we open
	SF_INFO			mSoundFileInfo;         ///< libsndfile metadata for the file we open
	
    /** Atribute accessor. Send a filepath to the object and attempt to interface with the file.
     @param	newValue        full POSIX path to the file, including file name
     @return	TTErr		kTTErrInvalidValue is the filepath is invalid, otherwise kTTErrNone 
     */
    TTErr setFilePath(const TTValue& newValue);
    
    /**	Simple data accessor.
     @return	TTRowID		the number of channels in mSoundFile at mFilePath */
    TTRowID getNumChannels()
    {
        return mNumChannels;
    };
    
    /**	Simple data accessor.
     @return	TTFloat64		samples per second of mSoundFile at mFilePath */
    TTFloat64 getSampleRate()
    {
        return mSampleRate;
    };
    
    /**	Simple data accessor.
     @return	TTColumnID		the number of frames in mSoundFile at mFilePath */
    TTColumnID getDurationInSamples()
    {
        return this->mDurationInSamples;
    };
    
    /**	Simple data accessor.
     @return	TTFloat64		duration in second of mSoundFile at mFilePath */
    TTFloat64 getDurationInSeconds()
    {
        return mDurationInSeconds;
    };
    
    /**	Simple data accessor.
     @return	TTSymbol		title pulled from the mSoundFile's metadata */
    TTSymbol getTitle()
    {
        return mTitle;
    };
    
    /**	Simple data accessor.
     @return	TTSymbol		artist pulled from the mSoundFile's metadata */
    TTSymbol getArtist()
    {
        return mArtist;
    };
    
    /**	Simple data accessor.
     @return	TTSymbol		date pulled from the mSoundFile's metadata */
    TTSymbol getDate()
    {
        return mDate;
    };
    
    /**	Simple data accessor.
     @return	TTSymbol		comments pulled from the mSoundFile's metadata */
    TTSymbol getAnnotation()
    {
        return mAnnotation;
    };
    
    /** Get the value stored at a specified index and channel. Modelled after the method found in #TTSampleMatrix. Note that both channels and samples use zero indexing. There is currently no boundary checking implemented.
     @param[in]     frame       index of sample as count from the beginning of file. first sample = 0.
     @param[in]     channel     channel within multichannel file. 
     @param[out]    value       used to return the value pulled from sound file.
     @return        TTErr       returns kTTErrNone until futher notice
     */
    TTErr	peek(const TTColumnID frame, const TTRowID channel, TTSampleValue& value);
    
    /** Unit test for this object.
	 @param[out] returnedTestInfo	The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);

};

typedef TTSoundfile* TTSoundfilePtr;

#endif
