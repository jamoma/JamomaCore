/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Jamoma DSP Soundfile Recorder
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfileRecorder.h"

#define thisTTClass			TTSoundfileRecorder
#define thisTTClassName		"soundfile.recorder"
#define thisTTClassTags		"dspSoundFileLib, audio, soundfile, record"


TT_AUDIO_CONSTRUCTOR,
mFilePath(kTTSymEmpty),
mFormat(kTTSymEmpty),
mSoundFile(NULL),
mRecord(false),
mNumChannels(0),
mNumBufferFrames(0),
mLength(0),
mLengthInSamples(0),
mCycles(0)
{
	addAttributeWithSetter(	FilePath,		kTypeSymbol);
	addAttribute(			Format,			kTypeSymbol);
	addAttributeWithSetter(	Record,			kTypeBoolean);
	addAttribute(			NumChannels,	kTypeUInt16);
		addAttributeProperty(	NumChannels,	readOnly, TTValue(YES));
	addAttributeWithSetter(	Length,			kTypeFloat64);
		addAttributeProperty(Length,			range,			TTValue(0, 60000));
		addAttributeProperty(Length,			rangeChecking,	TT("clip"));
	
}


TTSoundfileRecorder::~TTSoundfileRecorder()
{
	setAttributeValue(TT("record"), NO);
	if (mSoundFile)
		sf_close(mSoundFile);
}

TTErr TTSoundfileRecorder::setRecord(const TTValue& newValue)
{
	TTBoolean	newRecordState = newValue;
	TTErr		err = kTTErrNone;	
	
	if (newRecordState == 1){
		if (mLength <= 0)
			setProcessMethod(processAudioRecording);
		else 
			setProcessMethod(processTimedAudioRecording);
		}
	else 
		setProcessMethod(processAudioBypass);
		
	if (mRecord != newRecordState) {
		mRecord = newRecordState;
		if (mRecord) {			// start recording
			mLengthInSamples = mLength * sr * 0.001; // reset the Sample counter 
			mCycles = 0;
			//mNumChannels = 0;	// set to zero so that the process method will set the num channels and trigger an open
		} 
		else {					// stop recording -- close the file
			if (mSoundFile){ 
				sf_close(mSoundFile);
			mSoundFile = NULL;
			}
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
// something to consider when you want to write large amount of data as fast as possible: http://www.mega-nerd.com/libsndfile/FAQ.html#Q006
int TTSoundfileRecorder::translateFormatFromName(TTSymbol& name)
{
	int		format = 0;
	char	cname[64];
	char*	s;
	
	if (name)
		strncpy(cname, name.c_str(), 64);
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
		format |= SF_FORMAT_MAT4;		
	else
		format |= SF_FORMAT_CAF;
	
	return format;	
}


TTErr TTSoundfileRecorder::setFilePath(const TTValue& newValue)
{
	mFilePath = newValue;
	/*if ((mNumChannels) && (mFormat))
		return openFile();
	else */
		return kTTErrNone;
}


TTErr TTSoundfileRecorder::openFile()
{
	memset(&mSoundFileInfo, 0, sizeof(mSoundFileInfo));	
	mSoundFileInfo.channels = mNumChannels;
	mSoundFileInfo.format = translateFormatFromName(mFormat);
	mSoundFileInfo.samplerate = sr;
	
	mSoundFile = sf_open(mFilePath.c_str(), SFM_WRITE, &mSoundFileInfo);
	
	if (!mSoundFile) {
		TTLogMessage("Can't create soundfile.\n");
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
	//TTUInt64			progress = mCycles*vs*channelCount;
	
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
		mBuffer.resize(buffersize);
	}

	if (!mSoundFile) { //if we don't have already a file open, do it now. 
		TTErr err = openFile();
		if (err != kTTErrNone) // file didn't open, let's stop recording
			return setRecord(0);
	}
	
	for (channel=0; channel<channelCount; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel]; // sending audio out
		for (n=0; n<vs; n++)
			//mBuffer[progress+(n * channelCount + channel)] = inSample[n]; //sending audio to recording buffer
			mBuffer[(n * channelCount + channel)] = inSample[n]; //sending audio to recording buffer
		memcpy(outSample, inSample, sizeof(TTSampleValue) * vs);
	}
    //mCycles++;
	//if (mCycles == 100){
	
	if (sf_writef_double(mSoundFile, &mBuffer[0], vs) != vs) {
		char errorStr[256];
        sf_error_str(mSoundFile, errorStr, 256);
		TTLogError("Error while writing file: %s \n",errorStr);
	}
	
	//	mCycles = 0;
	//}
	
	return kTTErrNone;
}


TTErr TTSoundfileRecorder::processTimedAudioRecording(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
		TTUInt64 buffersize = mNumChannels * mNumBufferFrames * ceil((double)mLengthInSamples/(double)mNumBufferFrames); 
		mBuffer.resize(buffersize);		
	}
	
	if (!mSoundFile) {//if we don't have already a file open, do it now. 
		TTErr err = openFile();
		if (err != kTTErrNone) // file didn't open, let's stop recording 
			return setRecord(0);
	}	
	
	for (channel=0; channel<channelCount; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel]; // sending audio out
		for (n=0; n<vs; n++)
			mBuffer[progress+(n * channelCount + channel)] = inSample[n]; //sending audio to recording buffer
		memcpy(outSample, inSample, sizeof(TTSampleValue) * vs); // sending audio out
	}    
	
	mCycles++;
	mLengthInSamples -= vs; // decreasing the samplecounter by a vs
	if (mLengthInSamples <= 0){ //TODO: we might want to chop of the samples that were recorded too long
		if (sf_writef_double(mSoundFile, &mBuffer[0], mCycles*vs) != mCycles*vs) {
			char errorStr[256];
			sf_error_str(mSoundFile, errorStr, 256);
			TTLogError("Error while writing file: %s \n",errorStr);
		}
		return setRecord(0);
	} 
	else return kTTErrNone;
}


TTErr TTSoundfileRecorder::processAudioBypass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{	
	TTAudioSignal&		out = outputs->getSignal(0);
	TTAudioSignal&		in  = inputs->getSignal(0);
	TTSampleValuePtr	outSample, inSample;
	TTUInt16			channelCount = in.getNumChannelsAsInt();
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTUInt16			channel;

	
	// not recording, just bypassing audio and return
	 for (channel=0; channel<channelCount; channel++) {
		 inSample = in.mSampleVectors[channel];
		 outSample = out.mSampleVectors[channel]; // sending audio out
		 memcpy(outSample, inSample, sizeof(TTSampleValue) * vs); // sending audio out
	}
	return kTTErrNone;
} 







