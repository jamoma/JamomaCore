/* 
 * Jamoma DSP Soundfile Player
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSoundfilePlayer.h"

#define thisTTClass			TTSoundfilePlayer
#define thisTTClassName		"soundfile.player"
#define thisTTClassTags		"audio, soundfile, playback"


TT_AUDIO_CONSTRUCTOR,
mFilePath(kTTSymEmpty),
mSoundFile(NULL),
mPlay(false),
mLoop(false),
mContinue(false),
mNumChannels(0),
mNumBufferFrames(0)
{
	addAttributeWithSetter(	FilePath,		kTypeSymbol);
	addAttributeWithSetter(	Play,			kTypeBoolean);
	addAttribute(			Loop,			kTypeBoolean);
	addAttribute(			NumChannels,	kTypeUInt16);
	addAttributeProperty(	NumChannels,	readOnly, kTTBoolYes);
	
	addMessage(Pause);
	addMessage(Resume);
	
	setProcessMethod(processAudio);
	//setAttributeValue(TT("MaxNumChannels"),	arguments);			// This attribute is inherited
}


TTSoundfilePlayer::~TTSoundfilePlayer()
{
	setAttributeValue(TT("Play"), kTTBoolNo);
	if (mSoundFile)
		sf_close(mSoundFile);
}


// takes a POSIX path, e.g. /Users/tim/Music/Demos/whiteandnerdy.aif
TTErr TTSoundfilePlayer::setFilePath(const TTValue& newValue)
{
	TTSymbolPtr potentialFilePath = newValue;
	SNDFILE*	soundfile;
	SF_INFO		soundfileInfo;
	
	memset(&soundfileInfo, 0, sizeof(soundfileInfo));
	soundfile = sf_open(potentialFilePath->getCString(), SFM_READ, &soundfileInfo);
	
	if (soundfile) {
		SNDFILE* oldSoundFile = mSoundFile;

		mSoundFile = soundfile;
		if (oldSoundFile)
			sf_close(oldSoundFile);
		memcpy(&mSoundFileInfo, &soundfileInfo, sizeof(SF_INFO));
		mFilePath = potentialFilePath;
		mContinue = 1; //eliminating previous pause state
		// TODO: fill in things like the NumChannels attr here
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTErr TTSoundfilePlayer::setPlay(const TTValue& newValue)
{   
	mPlay = newValue; 
	mContinue = 1; //eliminating previous pause state
	if (mPlay == 0){
		if (mSoundFile)
			sf_seek(mSoundFile, 0, SEEK_SET);
	}	
return kTTErrNone;
}


TTErr TTSoundfilePlayer::Pause()
{   
	mContinue = 0;
	return kTTErrNone;
}

TTErr TTSoundfilePlayer::Resume()
{   
	mContinue = 1;
	return kTTErrNone;
}

TTErr TTSoundfilePlayer::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		outChannelCount = out.getMaxNumChannelsAsInt();
	TTUInt16		numFrames = out.getVectorSizeAsInt();
	TTBoolean		bufferNeedsResize = NO;
	sf_count_t			numSamplesRead; 
	TTUInt16			n;
	TTSampleValuePtr	outSample;
	TTUInt16			channel;
	
    
	if (mSoundFile) {	
	// resize of the number of output channels, if needed
	if (outChannelCount != mSoundFileInfo.channels || !mNumChannels) {
		mNumChannels = mSoundFileInfo.channels;
		out.setMaxNumChannels(mNumChannels);
		bufferNeedsResize = YES;
	}
	out.setNumChannelsWithInt(mNumChannels);
	
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
	
				
		mBuffer.assign(mBuffer.size(), 0.0);
		
		if (mPlay && mContinue) {
			numSamplesRead = sf_read_double(mSoundFile, &mBuffer[0], numFrames*mNumChannels);
			if (numSamplesRead < numFrames*mNumChannels) {
				sf_seek(mSoundFile, 0, SEEK_SET);
				mPlay = mLoop;					
			}
		}

		for (channel=0; channel<mNumChannels; channel++) {
			outSample = out.mSampleVectors[channel];

			for (n=0; n<numFrames; n++)
				outSample[n] = mBuffer[n * mNumChannels + channel];
		}
	}	
	else {         //no soundfile selected, we send out a zero signal on one channel 
		out.setMaxNumChannels(1);
		out.setNumChannelsWithInt(1);
		for (n=0; n<numFrames; n++)
		out.mSampleVectors[0][n] = 0.0;
	}
		
	return kTTErrNone;
}
