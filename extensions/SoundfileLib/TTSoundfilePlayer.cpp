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
mNumChannels(0)
{
	addAttributeWithSetter(	FilePath,		kTypeSymbol);
	addAttribute(			Play,			kTypeBoolean);
	addAttribute(			NumChannels,	kTypeUInt16);
	addAttributeProperty(	NumChannels,	readOnly, kTTBoolYes);

	setProcessMethod(processAudio);
	//setAttributeValue(TT("MaxNumChannels"),	arguments);			// This attribute is inherited
}


TTSoundfilePlayer::~TTSoundfilePlayer()
{
	setAttributeValue(TT("Play"), kTTBoolNo);
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
		// TODO: fill in things like the NumChannels attr here
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}


TTErr TTSoundfilePlayer::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		outChannelCount = out.getMaxNumChannelsAsInt();

	// resize of the number of output channels, if needed
	if (outChannelCount < mSoundFileInfo.channels)
		out.setMaxNumChannels(outChannelCount);
	out.setNumChannelsWithInt(outChannelCount);
	
	// if there is an input, we want to treat it as a sample-accurate on/off switch for playback
	if (inputs->numAudioSignals) {
		; // TODO: implement this
	}
	else {
		TTUInt16			vs;
		TTSampleValuePtr	outSample;
		TTUInt16			channel;
		
		for (channel=0; channel<outChannelCount; channel++) {
			outSample = out.mSampleVectors[channel];
			vs = out.getVectorSizeAsInt();
			
			while (vs--)
				*outSample++ = 0;
		}
	}	
	return kTTErrNone;
}
