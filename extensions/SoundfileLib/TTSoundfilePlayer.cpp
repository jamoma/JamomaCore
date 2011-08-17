/* 
 * Jamoma DSP Soundfile Player
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfilePlayer.h"

#define thisTTClass			TTSoundfilePlayer
#define thisTTClassName		"soundfile.player"
#define thisTTClassTags		"audio, soundfile, playback"


TT_AUDIO_CONSTRUCTOR,
mFilePath(kTTSymEmpty),
mTitle(kTTSymEmpty),
mAnnotation(kTTSymEmpty),
mArtist(kTTSymEmpty),
mDate(kTTSymEmpty),
mSoundFile(NULL),
mPlay(false),
mLoop(false),
mSeek(0),
mSeekInFrames(0),
mDuration(0.0),
mContinue(false),
mNumChannels(0),
mNumBufferFrames(0)
{
	addAttributeWithSetter(		FilePath,		kTypeSymbol);
	addAttributeWithSetter(		Play,			kTypeBoolean);
	addAttributeWithSetter(		Seek,			kTypeFloat64);
	addAttribute(				Loop,			kTypeBoolean);
	addAttribute(				Duration,		kTypeFloat64);
		addAttributeProperty(	Duration,		readOnly, kTTBoolYes);
	addAttribute(				NumChannels,	kTypeUInt16);
		addAttributeProperty(	NumChannels,	readOnly, kTTBoolYes);
	addAttribute(				Title,			kTypeSymbol);
		addAttributeProperty(	Title,			readOnly, kTTBoolYes);
	addAttribute(				Artist,			kTypeSymbol);
		addAttributeProperty(	Artist,			readOnly, kTTBoolYes);
	addAttribute(				Annotation,		kTypeSymbol);
		addAttributeProperty(	Annotation,		readOnly, kTTBoolYes);
	addAttribute(				Date,			kTypeSymbol);
		addAttributeProperty(	Date,			readOnly, kTTBoolYes);
	
	addMessage(pause);
	addMessage(resume);
	setProcessMethod(processAudio);
	//setAttributeValue(kTTSym_maxNumChannels,	arguments);			// This attribute is inherited
}


TTSoundfilePlayer::~TTSoundfilePlayer()
{
	setAttributeValue(TT("play"), kTTBoolNo);
	if (mSoundFile)
		sf_close(mSoundFile);
}


// takes a POSIX path, e.g. /Users/tim/Music/Demos/whiteandnerdy.aif
TTErr TTSoundfilePlayer::setFilePath(const TTValue& newValue)
{
	TTSymbolPtr potentialFilePath = newValue;
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
	soundfile = sf_open(potentialFilePath->getCString(), SFM_READ, soundfileInfo);
	
	if (soundfile) {
		SNDFILE* oldSoundFile = mSoundFile;
		
		mSoundFile = soundfile;
		if (oldSoundFile)
			sf_close(oldSoundFile);
		memcpy(&mSoundFileInfo, soundfileInfo, sizeof(SF_INFO));

		mFilePath = potentialFilePath;
		mPlay = 0;
		mContinue = 1; //eliminating previous pause state
		
		// Now we gather some infos about the sound file 
		textInfo = sf_get_string(soundfile, SF_STR_TITLE);
		if (textInfo) mTitle = TT(textInfo);
		else mTitle = kTTSymEmpty;
		textInfo = sf_get_string(soundfile, SF_STR_ARTIST);
		if (textInfo) mArtist = TT(textInfo);
		else mArtist =  kTTSymEmpty;
		textInfo = sf_get_string(soundfile, SF_STR_COMMENT);
		if (textInfo) mAnnotation = TT(textInfo);
		else mAnnotation =  kTTSymEmpty;
		textInfo = sf_get_string(soundfile, SF_STR_DATE);
		if (textInfo) mDate = TT(textInfo);
		else mDate =  kTTSymEmpty;
		mDuration = mSoundFileInfo.frames / mSoundFileInfo.samplerate; 
		
		// TODO: fill in things like the NumChannels attr here
		
		return kTTErrNone;
	}
	else {
		char errstr[256];
		sf_error_str (soundfile, errstr, 256);
		TTLogMessage("cannot open soundfile %s: %s", potentialFilePath->getCString(), errstr);
		return kTTErrGeneric;
	}
}

TTErr TTSoundfilePlayer::setPlay(const TTValue& newValue)
{   
	mPlay = newValue; 
	mContinue = 1; //eliminating previous pause state
	if (mPlay == 0){
		if (mSoundFile){
			mSeek = 0;
			sf_seek(mSoundFile, 0, SEEK_SET);
		}
	}	
return kTTErrNone;
}

TTErr TTSoundfilePlayer::setSeek(const TTValue& newValue)
{   
	if (mSoundFile) {
		mSeek = newValue;
		TTLimitMin(mSeek, 0.0);
		mSeekInFrames = mSeek * sr * 0.001;
		if (sf_seek(mSoundFile, mSeekInFrames, SEEK_SET) != mSeekInFrames) {
			char errstr[256];
			sf_error_str (mSoundFile, errstr, 256);
			TTLogMessage("error in seek of %s: %s", mFilePath->getCString(), errstr);
			return kTTErrGeneric;
		}
		mContinue = 1; //eliminating previous pause state
		mPlay = 1;
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;	
}

TTErr TTSoundfilePlayer::pause()
{   
	mContinue = 0;
	return kTTErrNone;
}

TTErr TTSoundfilePlayer::resume()
{   
	mContinue = 1;
	return kTTErrNone;
}

TTErr TTSoundfilePlayer::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTAudioSignal&	outPlayhead = outputs->getSignal(1);
	TTUInt16		outChannelCount = out.getMaxNumChannelsAsInt();
	TTUInt16		numFrames = out.getVectorSizeAsInt();
	TTBoolean		bufferNeedsResize = NO;
	sf_count_t			numSamplesRead; 
	TTUInt16			n;
	TTSampleValuePtr	outSample;// outSamplePlayhead;
	TTUInt16			channel;
	
    
	if (mSoundFile) {	
	// resize of the number of output channels, if needed
	if (outChannelCount != mSoundFileInfo.channels || !mNumChannels) {
		mNumChannels = mSoundFileInfo.channels;
		out.setMaxNumChannels(mNumChannels);
		bufferNeedsResize = YES;
		out.setNumChannelsWithInt(mNumChannels);
		outPlayhead.setMaxNumChannels(1);
		outPlayhead.setNumChannelsWithInt(1);
	}
	
	if (mNumBufferFrames != numFrames) {
		mNumBufferFrames = numFrames;
		bufferNeedsResize = YES;
	}
	if (bufferNeedsResize)
		mBuffer.resize(mNumBufferFrames * mNumChannels);
	
	if (!mNumChannels)
		return TTAudioObject::muteProcess(inputs, outputs);
	
	// if there is an input, we want to treat it as a sample-accurate on/off switch for playback
	//if (inputs->numAudioSignals) {
	//	; // TODO: implement this
	//}
	//else {
	
				
		//mBuffer.assign(mBuffer.size(), 0.0);
		
		if (mPlay && mContinue) {
			numSamplesRead = sf_readf_double(mSoundFile, &mBuffer[0], numFrames);
			if (numSamplesRead < numFrames) {
				sf_seek(mSoundFile, mSeekInFrames, SEEK_SET);
				mPlay = mLoop;					
			}
		}
		else 
			mBuffer.assign(mBuffer.size(), 0.0);

		for (channel=0; channel<mNumChannels; channel++) {
			outSample = out.mSampleVectors[channel];
        	for (n=0; n<numFrames; n++)
				outSample[n] = mBuffer[n * mNumChannels + channel];
		}
	
		for (n=0; n<numFrames; n++)	
			outPlayhead.mSampleVectors[0][n] = n; // FIXME: this is a dummy value, replace with a proper playhead position
			//FIXME: see http://redmine.jamoma.org/issues/578
		    //FIXME: see http://redmine.jamoma.org/issues/547
	}	
	else { //no soundfile selected, we send out a zero signal on one channel 
		out.setMaxNumChannels(1);
		out.setNumChannelsWithInt(1);
		for (n=0; n<numFrames; n++)
		out.mSampleVectors[0][n] = 0.0;
	}
		
	return kTTErrNone;
}
