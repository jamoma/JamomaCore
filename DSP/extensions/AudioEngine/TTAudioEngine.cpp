
#include "TTAudioEngine.h"

#define thisTTClass				TTAudioEngine
#define thisTTClassName			"AudioEngine"
#define thisTTClassDescription	"Provide an interface to audio input and output services of the OS"
#define thisTTClassTags			"audio, engine, singleton"

TTObjectBasePtr	TTAudioEngine::sSingletonInstance = NULL;
TTDictionaryPtr	TTAudioEngine::sDictionary = NULL;


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_AudioEngine(void)
{
	TTDSPInit();
	thisTTClass :: registerClass();
	
	// create the global instance
	
	TTAudioEngine::sDictionary = new TTDictionary("j@m0m@_audioengine");
	TTPtr engine = TTAudioEngine::create();
	
	TTAudioEngine::sDictionary->setValue(engine);
	
	return kTTErrNone;
}


TT_BASE_OBJECT_CONSTRUCTOR,
	mNumInputChannels(2),
	mNumOutputChannels(2),
	mVectorSize(64),
	mSampleRate(44100),
	mStream(NULL),
	mInputDeviceInfo(NULL),
	mOutputDeviceInfo(NULL),
	mInputDeviceIndex(0),
	mOutputDeviceIndex(0),
	mIsRunning(false),
	mInputBuffer(NULL),
	mOutputBuffer(NULL)
{
	if (sSingletonInstance)
		throw TTException("cannot instantiate multiple copies of a singleton class");

	mCallbackObservers = new TTList;
	mCallbackObservers->setThreadProtection(NO);	// ... because we make calls into this at every audio vector calculation ...

	TTObjectBaseInstantiate(kTTSym_audiosignal, &mInputBuffer, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &mOutputBuffer, 1);

	// numChannels should be readonly -- how do we do that?
	addAttribute(NumInputChannels,	kTypeUInt16);
	addAttribute(NumOutputChannels,	kTypeUInt16);

	addAttributeWithSetter(VectorSize,		kTypeUInt16);
	addAttributeWithSetter(SampleRate,		kTypeUInt32);
	addAttributeWithSetter(InputDevice,		kTypeSymbol);
	addAttributeWithSetter(OutputDevice,	kTypeSymbol);

	addMessage(start);
	addMessage(stop);
	addMessageWithArguments(getCpuLoad);

	addMessageWithArguments(getAvailableInputDeviceNames);
	addMessageWithArguments(getAvailableOutputDeviceNames);

	addMessageWithArguments(addCallbackObserver);
	addMessageProperty(addCallbackObserver, hidden, YES);
	addMessageWithArguments(removeCallbackObserver);
	addMessageProperty(removeCallbackObserver, hidden, YES);
	
	addMessageWithArguments(getInputSignalReference);
	addMessageWithArguments(getOutputSignalReference);

	// Set defaults -- there are no devices actually named 'default', so we set the values directly
	mInputDevice = "default";
	mOutputDevice = "default";
}


TTAudioEngine::~TTAudioEngine()
{
	PaError err;

	if (mStream) {
		if (mIsRunning)
			stop();

		err = Pa_CloseStream(mStream);
		if (err != paNoError)
			TTLogError("PortAudio error freeing engine: %s", Pa_GetErrorText(err));
	}
	delete mCallbackObservers;
	TTObjectBaseRelease(&mInputBuffer);
	TTObjectBaseRelease(&mOutputBuffer);
}


TTErr TTAudioEngine::initStream()
{
	PaError		err;
	TTBoolean	shouldRun = mIsRunning;

	if (mIsRunning)
		stop();

	if (mStream) {
		Pa_CloseStream(mStream);
		mStream = NULL;
	}

	if ((mInputDevice == "default" || mInputDevice == kTTSymEmpty) && (mOutputDevice == "default" || mOutputDevice == kTTSymEmpty)) {
		err = Pa_OpenDefaultStream(&mStream,
								   mNumInputChannels,
								   mNumOutputChannels,
								   paFloat32,
								   mSampleRate,
								   mVectorSize,
								   TTAudioEngineStreamCallback,
								   this);
	}
	else {
		PaStreamParameters	outputParameters;
		PaStreamParameters	inputParameters;

		inputParameters.channelCount = mNumInputChannels;
		inputParameters.device = mInputDeviceIndex;
		inputParameters.hostApiSpecificStreamInfo = NULL;
		inputParameters.sampleFormat = paFloat32;
		inputParameters.suggestedLatency = Pa_GetDeviceInfo(mInputDeviceIndex)->defaultLowInputLatency;

		outputParameters.channelCount = mNumOutputChannels;
		outputParameters.device = mOutputDeviceIndex;
		outputParameters.hostApiSpecificStreamInfo = NULL;
		outputParameters.sampleFormat = paFloat32;
		outputParameters.suggestedLatency = Pa_GetDeviceInfo(mOutputDeviceIndex)->defaultLowOutputLatency;

		err = Pa_OpenStream(
							&mStream,
							&inputParameters,
							&outputParameters,
							mSampleRate,
							mVectorSize,
							paNoFlag,						//flags that can be used to define dither, clip settings and more
							TTAudioEngineStreamCallback,	//your callback function
							this);

	}

	if (err != paNoError )
		TTLogError("PortAudio error creating TTAudioEngine: %s", Pa_GetErrorText(err));


	// Now that the stream is initialized, we need to setup our own buffers for reading and writing.
	mInputBuffer->setMaxNumChannels(mNumInputChannels);
	mInputBuffer->setNumChannels(mNumInputChannels);
	mInputBuffer->setVectorSizeWithInt(mVectorSize);
	mInputBuffer->alloc();

	mOutputBuffer->setMaxNumChannels(mNumOutputChannels);
	mOutputBuffer->setNumChannels(mNumOutputChannels);
	mOutputBuffer->setVectorSizeWithInt(mVectorSize);
	mOutputBuffer->alloc();

	if (shouldRun)
		start();

	return (TTErr)err;
}


TTErr TTAudioEngine::start()
{
	PaError err = paNoError;

	if (!mIsRunning) {
		if (!mStream)
			initStream();

		err = Pa_StartStream(mStream);
		if (err != paNoError)
			TTLogError("PortAudio error starting engine: %s", Pa_GetErrorText(err));

		mIsRunning = true;
	}
	return (TTErr)err;
}


TTErr TTAudioEngine::stop()
{
	PaError err = paNoError;

	if (mStream) {
		err = Pa_StopStream(mStream);
		if (err != paNoError)
			TTLogError("PortAudio error stopping engine: %s", Pa_GetErrorText(err));
	}
	mIsRunning = false;
	return (TTErr)err;
}


TTErr TTAudioEngine::getCpuLoad(const TTValue& unusedInput, TTValue& returnedValue)
{
	TTFloat64 cpuLoad = Pa_GetStreamCpuLoad(mStream);

	returnedValue = cpuLoad;
	return kTTErrNone;
}


TTErr TTAudioEngine::getAvailableInputDeviceNames(const TTValue& unusedInput, TTValue& returnedDeviceNames)
{
	const PaDeviceInfo*	deviceInfo;
    int					numDevices;

	returnedDeviceNames.clear();

    numDevices = Pa_GetDeviceCount();
    if (numDevices < 0) {
        printf("ERROR: Pa_CountDevices returned 0x%x\n", numDevices);
        return kTTErrGeneric;
    }

    for (int i=0; i<numDevices; i++) {
        deviceInfo = Pa_GetDeviceInfo(i);
		if (deviceInfo->maxInputChannels)
			returnedDeviceNames.append(deviceInfo->name);
    }
	return kTTErrNone;
}


TTErr TTAudioEngine::getAvailableOutputDeviceNames(const TTValue& unusedInput, TTValue& returnedDeviceNames)
{
	const PaDeviceInfo*	deviceInfo;
    int					numDevices;

	returnedDeviceNames.clear();

    numDevices = Pa_GetDeviceCount();
    if (numDevices < 0) {
        printf("ERROR: Pa_CountDevices returned 0x%x\n", numDevices);
        return kTTErrGeneric;
    }

    for (int i=0; i<numDevices; i++) {
        deviceInfo = Pa_GetDeviceInfo(i);
		if (deviceInfo->maxOutputChannels)
			returnedDeviceNames.append(deviceInfo->name);
    }
	return kTTErrNone;
}


TTErr TTAudioEngine::setInputDevice(TTValue& newDeviceName)
{
	TTSymbol			newDevice = newDeviceName;
	const PaDeviceInfo*	deviceInfo;
    int					numDevices;

	if (newDevice != mInputDevice) {
		numDevices = Pa_GetDeviceCount();
		for (int i=0; i<numDevices; i++) {
			deviceInfo = Pa_GetDeviceInfo(i);
			if (newDevice == TTSymbol(deviceInfo->name)) {
				mInputDeviceInfo = deviceInfo;
				mInputDeviceIndex = i;
				mNumInputChannels = mInputDeviceInfo->maxInputChannels;

				mInputDevice = newDevice;
				if (mIsRunning)
					return initStream();
				else if (mStream) {
					Pa_CloseStream(mStream);
					mStream = NULL;
				}
				return kTTErrNone;
			}
		}
		return kTTErrGeneric;
	}
	return kTTErrNone;
}


TTErr TTAudioEngine::setOutputDevice(TTValue& newDeviceName)
{
	TTSymbol			newDevice = newDeviceName;
	const PaDeviceInfo*	deviceInfo;
    int					numDevices;

	if (newDevice != mOutputDevice) {
		numDevices = Pa_GetDeviceCount();
		for (int i=0; i<numDevices; i++) {
			deviceInfo = Pa_GetDeviceInfo(i);
			if (newDevice == TTSymbol(deviceInfo->name)) {
				mOutputDeviceInfo = deviceInfo;
				mOutputDeviceIndex = i;
				mNumOutputChannels = mOutputDeviceInfo->maxOutputChannels;

				mOutputDevice = newDevice;
				if (mIsRunning)
					return initStream();
				else if (mStream) {
					Pa_CloseStream(mStream);
					mStream = NULL;
				}
				return kTTErrNone;
			}
		}
		return kTTErrGeneric;
	}
	return kTTErrNone;
}


TTErr TTAudioEngine::setVectorSize(TTValue& newVectorSize)
{
	if (TTUInt16(newVectorSize) != mVectorSize) {
		mVectorSize = newVectorSize;
		if (mIsRunning)
			return initStream();
	}
	return kTTErrNone;
}


TTErr TTAudioEngine::setSampleRate(TTValue& newSampleRate)
{
	if (TTUInt32(newSampleRate) != mSampleRate) {
		mSampleRate = newSampleRate;
		if (mIsRunning)
			return initStream();
	}
	return kTTErrNone;
}


TTErr TTAudioEngine::addCallbackObserver(const TTValue& objectToReceiveNotifications, TTValue& unusedOutput)
{
	mCallbackObservers->append(objectToReceiveNotifications);
	return kTTErrNone;
}


TTErr TTAudioEngine::removeCallbackObserver(const TTValue& objectCurrentlyReceivingNotifications, TTValue& unusedOutput)
{
	mCallbackObservers->remove(objectCurrentlyReceivingNotifications);
	return kTTErrNone;
}


TTInt32 TTAudioEngine::callback(const TTFloat32*		input,
						TTFloat32*						output,
						TTUInt32						frameCount,
						const PaStreamCallbackTimeInfo*	timeInfo,
						PaStreamCallbackFlags			statusFlags)
{
	mInputBuffer->clear();
	mOutputBuffer->clear();

	// right now we copy all of the channels, regardless of whether or not they are actually being used
	// TODO: only copy the channels that actually contain new audio samples
	for (unsigned int i=0; i<frameCount; i++) {
		for (TTUInt16 channel=0; channel<mNumInputChannels; channel++)
			mInputBuffer->mSampleVectors[channel][i] = *input++;
    }

	// notify any observers that we are about to process a vector
	// for example, an audio graph will do all of its processing in response to this
	// also, the scheduler will be serviced as a result of this
	mCallbackObservers->iterateObjectsSendingMessage("audioEngineWillProcess");

	// right now we copy all of the channels, regardless of whether or not they are actually being used
	// TODO: only copy the channels that actually contain new audio samples
	for (unsigned int i=0; i<frameCount; i++) {
		for (TTUInt16 channel=0; channel<mNumOutputChannels; channel++)
			*output++ = TTClip(mOutputBuffer->mSampleVectors[channel][i], -1.0, 1.0);
    }
    return 0;
}


TTErr TTAudioEngine::getInputSignalReference(TTValue& anUnusedInput, TTValue& aReturnedAudioSignalPtr)
{
	aReturnedAudioSignalPtr = (TTPtr)TTObjectBaseReference(mInputBuffer);
	return kTTErrNone;
}


TTErr TTAudioEngine::getOutputSignalReference(TTValue& anUnusedInput, TTValue& aReturnedAudioSignalPtr)
{
	aReturnedAudioSignalPtr = (TTPtr)TTObjectBaseReference(mOutputBuffer);
	return kTTErrNone;
}


#if 0
#pragma mark -
#pragma mark class methods
#endif



TTObjectBasePtr TTAudioEngine::create()
{
	PaError	paErr;
	TTErr   err = kTTErrNone;

	if (!sSingletonInstance) {
		paErr = Pa_Initialize();
		if (paErr == paNoError)
			err = TTObjectBaseInstantiate(thisTTClassName, &sSingletonInstance, kTTValNONE);
		else {
			TTLogError("PortAudio error: %s", Pa_GetErrorText(paErr));
			TT_ASSERT("PortAudio initialized", false);
		}
	}
	if (!err)
        return TTObjectBaseReference(sSingletonInstance);
    else
        return NULL;
}


TTErr TTAudioEngine::destroy()
{
	if (sSingletonInstance->getReferenceCount() == 1) {
		PaError err = Pa_Terminate();
		if (err != paNoError)
			TTLogError("PortAudio error: %s\n", Pa_GetErrorText( err ) );
	}
	return TTObjectBaseRelease((TTObjectBasePtr*)&sSingletonInstance);
}


int TTAudioEngineStreamCallback(const void*						input,
								void*							output,
								unsigned long					frameCount,
								const PaStreamCallbackTimeInfo*	timeInfo,
								PaStreamCallbackFlags			statusFlags,
								void*							userData )
{
	TTAudioEnginePtr engine = TTAudioEnginePtr(userData);
	return engine->callback((const TTFloat32*)input, (TTFloat32*)output, frameCount, timeInfo, statusFlags);
}

