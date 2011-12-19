/* 
 * Jamoma DSP Soundfile Player
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SOUNDFILEPLAYER_H__
#define __TT_SOUNDFILEPLAYER_H__

#include "TTDSP.h"

#ifdef uint
#undef uint
#endif
#include "libsndfile/sndfile.h"


/**	The simplest of lowpass filters: a single-pole, no-zero algorithm. */
class TTSoundfilePlayer : public TTAudioObject {
	TTCLASS_SETUP(TTSoundfilePlayer)

	TTSymbolPtr			mFilePath;			///< full POSIX path to the file, including file name
	TTSymbolPtr			mTitle, mAnnotation, mArtist, mDate;
	SNDFILE*			mSoundFile;			///< libsndfile handle for the actual file we open
	SF_INFO				mSoundFileInfo;		///< libsndfile metadata for the file we open
	sf_count_t			mSeekInFrames;
	TTBoolean			mPlay;				///< is actively playing back the file?
	TTBoolean			mLoop;				///< Loop flag
	TTFloat64			mSeek;			    ///< Cue time start
	TTFloat64			mDuration;			///< Length of the loaded soundfile - readonly
	TTBoolean			mContinue;			///< Pause/Resume flag
	TTUInt16			mNumChannels;		///< read-only: number of channels in the open file
	TTUInt16			mNumBufferFrames;	///< number of frames in the buffer to be read from the file at a time
	TTSampleVector		mBuffer;			///< buffer of mNumBufferFrames * mNumChannels;
	
	

	/**	Setter for the mode attribute.
	 	This also sets the audio processing method.  */
	TTErr setFilePath(const TTValue& value);
	TTErr setPlay(const TTValue& value);
	TTErr setSeek(const TTValue& value);
	TTErr pause();
	TTErr resume();
	
	// Block-based Audio Processing Methods
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __TT_SOUNDFILEPLAYER_H__
