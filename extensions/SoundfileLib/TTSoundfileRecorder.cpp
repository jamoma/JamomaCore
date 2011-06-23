/* 
 * Jamoma DSP Soundfile Recorder
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfileRecorder.h"

#define thisTTClass			TTSoundfileRecorder
#define thisTTClassName		"soundfile.recorder"
#define thisTTClassTags		"audio, soundfile, record"


TT_AUDIO_CONSTRUCTOR,
mFilePath(kTTSymEmpty),
mFormat(kTTSymEmpty),
mSoundFile(NULL),
mRecord(false),
mNumChannels(0),
mNumBufferFrames(0),
mLength(0),
mLengthInSamples(0),
mTimedRecord(false),
mCycles(0)
{
	addAttribute(			FilePath,		kTypeSymbol);
	addAttribute(			Format,			kTypeSymbol);
	addAttributeWithSetter(	Record,			kTypeBoolean);
	addAttribute(			NumChannels,	kTypeUInt16);
		addAttributeProperty(	NumChannels,	readOnly, kTTBoolYes);
	addAttributeWithSetter(	Length,			kTypeFloat64);
		addAttributeProperty(Length,			range,			TTValue(0, 60000));
		addAttributeProperty(Length,			rangeChecking,	TT("clip"));
	
}


TTSoundfileRecorder::~TTSoundfileRecorder()
{
	setAttributeValue(TT("record"), kTTBoolNo);
	if (mSoundFile)
		sf_close(mSoundFile);
}

TTErr TTSoundfileRecorder::setRecord(const TTValue& newValue)
{
	TTBoolean	newRecordState = newValue;
	TTErr		err = kTTErrNone;	
	
	if (newRecordState == 1)
		setProcessMethod(processAudioRecording);
	else 
		setProcessMethod(processAudioBypass);
		
	if (mRecord != newRecordState) {
		mRecord = newRecordState;
		if (mRecord) {			// start recording
			mLengthInSamples = mLength * sr * 0.001; // reset the Sample counter 
			mCycles = 0;
			if (mLengthInSamples > 0)
				mTimedRecord = true;
			else 
				mTimedRecord = false;
			//mNumChannels = 0;	// set to zero so that the process method will set the num channels and trigger an open
		}
		else {					// stop recording -- close the file
			if (mSoundFile)
				sf_close(mSoundFile);
			mSoundFile = NULL;
		}
	}
	return err;
}

TTErr TTSoundfileRecorder::setLength(const TTValue& newValue)
{	TTFloat64	newLength = newValue;
	if (newLength != mLength){
		mLength = newLength;
		mNumBufferFrames = 0; //hack to force a resize of mBuffer in the process method 
	}
	return kTTErrNone;
}


// "FLAC-24bit" -> SF_FORMAT_FLAC | SF_FORMAT_PCM_24

int TTSoundfileRecorder::translateFormatFromName(TTSymbolPtr name)
{
	int		format = 0;
	char	cname[64];
	char*	s;
	
	if (name)
		strncpy(cname, name->getCString(), 64);
	else
		strncpy(cname, "CAF", 64);

	s = strrchr(cname, '-'); // look for subtype
	if (s) {
		*s = 0;
		s++;
		if (s) {
			if (strstr(s, "16bit"))
				format |= SF_FORMAT_PCM_16;
			else if (strstr(s, "24bit"))
				format |= SF_FORMAT_PCM_24;
			else if (strstr(s, "32bit"))
				format |= SF_FORMAT_PCM_32;
			else
				format |= SF_FORMAT_PCM_24;
		}
	}
	else { // no subtype, set default
		format |= SF_FORMAT_PCM_24;
	}

	// now look at the primary type
	if (strstr(cname, "FLAC"))
		format |= SF_FORMAT_FLAC;
	else if (strstr(cname, "AIFF"))
		format |= SF_FORMAT_AIFF;
	else if (strstr(cname, "WAV"))
		format |= SF_FORMAT_WAV;
	else if (strstr(cname, "Matlab"))
		format |= SF_FORMAT_MAT5;		
	else
		format |= SF_FORMAT_CAF;
	
	return format;	
}


TTErr TTSoundfileRecorder::openFile()
{
	memset(&mSoundFileInfo, 0, sizeof(mSoundFileInfo));	
	mSoundFileInfo.channels = mNumChannels;
	mSoundFileInfo.format = translateFormatFromName(mFormat);
	mSoundFileInfo.samplerate = sr;
	
	mSoundFile = sf_open(mFilePath->getCString(), SFM_WRITE, &mSoundFileInfo);
	
	if (!mSoundFile) {
		return kTTErrGeneric;
	}
	return kTTErrNone;
}


TTErr TTSoundfileRecorder::processAudioRecording(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{	
	TTAudioSignal&		out = outputs->getSignal(0);
	TTAudioSignal&		in  = inputs->getSignal(0);
	TTSampleValuePtr	outSample, inSample;
	TTUInt16			channelCount = in.getNumChannelsAsInt();
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTUInt16			n, channel;
	TTBoolean			bufferNeedsResize = NO;
	//sf_count_t			numSamplesWritten;
	TTUInt64			progress = mCycles*vs*channelCount;
	
	
	if (mNumChannels != channelCount) {		// input channel number has changed, we need to set up the buffer
		mNumChannels = channelCount;
		bufferNeedsResize = YES;		
	}
	
	if (mNumBufferFrames != vs) {   //vector size has changed, we need to set up the buffer
		mNumBufferFrames = vs;
		bufferNeedsResize = YES;
	}
	if (bufferNeedsResize){
		TTUInt64 buffersize = mNumChannels * mNumBufferFrames;
		buffersize = max(buffersize, (TTUInt64)(buffersize * ceil((double)mLengthInSamples/(double)mNumBufferFrames))); //if mLengthInSamples==0, we don't have a timedRecording and we only buffer one frame
		mBuffer.resize(buffersize);
		
	}
	if (!mSoundFile) //if we don't have already a file open, do it now. 
		openFile();
	
	
	for (channel=0; channel<channelCount; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel]; // sending audio out
		for (n=0; n<vs; n++){
			mBuffer[progress+(n * channelCount + channel)] = inSample[n]; //sending audio to recording buffer
			outSample[n] = inSample[n];  // sending audio out
		}
	}
    
	
	if (mTimedRecord){
		mCycles++;
		mLengthInSamples -= vs; // decreasing the samplecounter by a vs if we want to record with a duration
		if (mLengthInSamples <= 0){ //TODO: we might want to chop of the samples that were recorded too long
			sf_write_double(mSoundFile, &mBuffer[0], mBuffer.size());
			return setRecord(0);
		}
	}
	else 
		sf_write_double(mSoundFile, &mBuffer[0], vs*channelCount);
	
	return kTTErrNone;
}

TTErr TTSoundfileRecorder::processAudioBypass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{	
	TTAudioSignal&		out = outputs->getSignal(0);
	TTAudioSignal&		in  = inputs->getSignal(0);
	TTSampleValuePtr	outSample, inSample;
	TTUInt16			channelCount = in.getNumChannelsAsInt();
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTUInt16			n, channel;

	
	// not recording, just bypassing audio and return
	 for (channel=0; channel<channelCount; channel++) {
		 inSample = in.mSampleVectors[channel];
		 outSample = out.mSampleVectors[channel]; // sending audio out
		 for (n=0; n<vs; n++)
			 outSample[n] = inSample[n];  // sending audio out
	}
	return kTTErrNone;
} 
