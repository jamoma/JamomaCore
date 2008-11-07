/* 
 * TTBlue Audio Engine
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioEngine.h"
#include "TTEnvironment.h"
#define thisTTClass TTAudioEngine


TTAudioEngine::TTAudioEngine()
	:TTObject("audioEngine"),
	 numInputChannels(2),
	 numOutputChannels(2),
	 vectorSize(64),
	 sampleRate(44100),
	 stream(NULL),
	 inputBuffer(NULL),
	 outputBuffer(NULL),
	 inputDevice(NULL),
	 outputDevice(NULL),
	 isRunning(false)
{
	callbackObservers = new TTList;
	callbackObservers->setThreadProtection(NO);	// ... because we make calls into this at every audio vector calculation ...

	TTObjectInstantiate(kTTSym_audiosignal, &inputBuffer, 1);
	TTObjectInstantiate(kTTSym_audiosignal, &outputBuffer, 1);
	
	// numChannels should be readonly -- how do we do that?
	registerAttributeSimple(numInputChannels,	kTypeUInt16);
	registerAttributeSimple(numOutputChannels,	kTypeUInt16);
	
	registerAttributeWithSetter(vectorSize,		kTypeUInt16);
	registerAttributeWithSetter(sampleRate,		kTypeUInt32);
	registerAttributeWithSetter(inputDevice,	kTypeSymbol);
	registerAttributeWithSetter(outputDevice,	kTypeSymbol);
	
	registerMessageSimple(start);
	registerMessageSimple(stop);
	registerMessageWithArgument(getCpuLoad);
	
	registerMessageWithArgument(addCallbackObserver);
	registerMessageWithArgument(removeCallbackObserver);

	// Set defaults
	setAttributeValue(TT("inputDevice"), TT("default"));
	setAttributeValue(TT("outputDevice"), TT("default"));
}


TTAudioEngine::~TTAudioEngine()
{
	PaError err;

	if(stream){
		if(isRunning)
			stop();
				
		err = Pa_CloseStream(stream);
		if(err != paNoError)
			TTLogError("PortAudio error freeing engine: %s", Pa_GetErrorText(err));
	}
	delete callbackObservers;
	TTObjectRelease(inputBuffer);
	TTObjectRelease(outputBuffer);
}


TTErr TTAudioEngine::initStream()
{
	PaError		err;
	TTBoolean	shouldRun = isRunning;
		
	if(isRunning)
		stop();
		
	if(stream){
		Pa_CloseStream(stream);
		stream = NULL;
	}

	if((inputDevice == TT("default") || inputDevice == NULL) && (outputDevice == TT("default") || outputDevice == NULL)){
		err = Pa_OpenDefaultStream(&stream,
								   numInputChannels,
								   numOutputChannels,
								   paFloat32,
								   sampleRate,
								   vectorSize,
								   TTAudioEngineStreamCallback,
								   this);
	}
	else{
		PaStreamParameters	outputParameters;
		PaStreamParameters	inputParameters;

		inputParameters.channelCount = numInputChannels;
		inputParameters.device = inputDeviceIndex;
		inputParameters.hostApiSpecificStreamInfo = NULL;
		inputParameters.sampleFormat = paFloat32;
		inputParameters.suggestedLatency = Pa_GetDeviceInfo(inputDeviceIndex)->defaultLowInputLatency;
		
		outputParameters.channelCount = numOutputChannels;
		outputParameters.device = outputDeviceIndex;
		outputParameters.hostApiSpecificStreamInfo = NULL;
		outputParameters.sampleFormat = paFloat32;
		outputParameters.suggestedLatency = Pa_GetDeviceInfo(outputDeviceIndex)->defaultLowOutputLatency;
		
		err = Pa_OpenStream(
							&stream,
							&inputParameters,
							&outputParameters,
							sampleRate,
							vectorSize,
							paNoFlag,						//flags that can be used to define dither, clip settings and more
							TTAudioEngineStreamCallback,	//your callback function
							this);

	}
	
	if(err != paNoError )
		TTLogError("PortAudio error creating TTAudioEngine: %s", Pa_GetErrorText(err));
	
	
	// Now that the stream is initialized, we need to setup our own buffers for reading and writing.
	inputBuffer->setmaxNumChannels(numInputChannels);
	inputBuffer->setnumChannels(numInputChannels);
	inputBuffer->setvectorSize(vectorSize);
	inputBuffer->alloc();

	outputBuffer->setmaxNumChannels(numInputChannels);
	outputBuffer->setnumChannels(numInputChannels);
	outputBuffer->setvectorSize(vectorSize);
	outputBuffer->alloc();	
	
	if(shouldRun)
		start();
	
	return (TTErr)err;
}


TTErr TTAudioEngine::start()
{
	PaError err;
	
	if(!isRunning){
		if(!stream)
			initStream();
		
		err = Pa_StartStream(stream);
		if(err != paNoError) 
			TTLogError("PortAudio error starting engine: %s", Pa_GetErrorText(err));
		
		isRunning = true;
	}
	return (TTErr)err;
}


TTErr TTAudioEngine::stop()
{
	PaError err = 0;
	
	if(stream){
		err = Pa_StopStream(stream);
		if(err != paNoError) 
			TTLogError("PortAudio error starting engine: %s", Pa_GetErrorText(err));
	}
	isRunning = false;
	return (TTErr)err;
}


TTErr TTAudioEngine::getCpuLoad(TTValue& returnedValue)
{
	TTFloat64 cpuLoad = Pa_GetStreamCpuLoad(stream);
	returnedValue = cpuLoad;
	return kTTErrNone;
}


TTErr TTAudioEngine::getAvailableInputDevices(TTValue& returnedDeviceNames)
{
	const PaDeviceInfo*	deviceInfo;
    int					numDevices;
	
	returnedDeviceNames.clear();
	
    numDevices = Pa_GetDeviceCount();
    if(numDevices < 0){
        printf("ERROR: Pa_CountDevices returned 0x%x\n", numDevices);
        return kTTErrGeneric;
    }
	
    for(int i=0; i<numDevices; i++){
        deviceInfo = Pa_GetDeviceInfo(i);
		if(deviceInfo->maxInputChannels)
			returnedDeviceNames.append(TT(deviceInfo->name));
    }
	return kTTErrNone;
}


TTErr TTAudioEngine::getAvailableOutputDevices(TTValue& returnedDeviceNames)
{
	const PaDeviceInfo*	deviceInfo;
    int					numDevices;
	
	returnedDeviceNames.clear();
	
    numDevices = Pa_GetDeviceCount();
    if(numDevices < 0){
        printf("ERROR: Pa_CountDevices returned 0x%x\n", numDevices);
        return kTTErrGeneric;
    }
	
    for(int i=0; i<numDevices; i++){
        deviceInfo = Pa_GetDeviceInfo(i);
		if(deviceInfo->maxOutputChannels)
			returnedDeviceNames.append(TT(deviceInfo->name));
    }
	return kTTErrNone;
}


TTErr TTAudioEngine::setinputDevice(TTValue& newDeviceName)
{
	TTSymbolPtr			newDevice = newDeviceName;
	const PaDeviceInfo*	deviceInfo;
    int					numDevices;
	
	if(newDevice != inputDevice){
		numDevices = Pa_GetDeviceCount();
		for(int i=0; i<numDevices; i++){
			deviceInfo = Pa_GetDeviceInfo(i);
			if(newDevice == TT(deviceInfo->name)){
				inputDeviceInfo = deviceInfo;
				inputDeviceIndex = i;
				numInputChannels = inputDeviceInfo->maxInputChannels;

				inputDevice = newDevice;
				if(isRunning)
					return initStream();
				return kTTErrNone;
			}
		}
		return kTTErrGeneric;
	}
	return kTTErrNone;
}


TTErr TTAudioEngine::setoutputDevice(TTValue& newDeviceName)
{
	TTSymbolPtr			newDevice = newDeviceName;
	const PaDeviceInfo*	deviceInfo;
    int					numDevices;

	if(newDevice != outputDevice){
		numDevices = Pa_GetDeviceCount();
		for(int i=0; i<numDevices; i++){
			deviceInfo = Pa_GetDeviceInfo(i);
			if(newDevice == TT(deviceInfo->name)){
				outputDeviceInfo = deviceInfo;
				outputDeviceIndex = i;
				numOutputChannels = outputDeviceInfo->maxOutputChannels;

				outputDevice = newDevice;
				if(isRunning)
					return initStream();
				return kTTErrNone;
			}
		}
		return kTTErrGeneric;
	}
	return kTTErrNone;
}


TTErr TTAudioEngine::setvectorSize(TTValue& newVectorSize)
{
	if(TTUInt16(newVectorSize) != vectorSize){
		vectorSize = newVectorSize;
		if(isRunning)
			return initStream();
	}
	return kTTErrNone;
}


TTErr TTAudioEngine::setsampleRate(TTValue& newSampleRate)
{
	if(TTUInt32(newSampleRate) != sampleRate){
		sampleRate = newSampleRate;
		if(isRunning)
			return initStream();
	}
	return kTTErrNone;
}


TTErr TTAudioEngine::addCallbackObserver(const TTValue& objectToReceiveNotifications)
{
	callbackObservers->append(objectToReceiveNotifications);
	return kTTErrNone;
}


TTErr TTAudioEngine::removeCallbackObserver(const TTValue& objectCurrentlyReceivingNotifications)
{
	callbackObservers->remove(objectCurrentlyReceivingNotifications);
	return kTTErrNone;
}


TTInt32 TTAudioEngine::callback(const TTFloat32*		input, 
						TTFloat32*						output, 
						TTUInt32						frameCount, 
						const PaStreamCallbackTimeInfo*	timeInfo, 
						PaStreamCallbackFlags			statusFlags)
{
	inputBuffer->clear();
	outputBuffer->clear();

	// notify any observers that we are about to process a vector
	callbackObservers->iterateObjectsSendingMessage(kTTSym_audioEngineWillProcess);
	
	// right now we copy all of the channels, regardless of whether or not they are actually being used
	// TODO: only copy the channels that actually contain new audio samples
	for(unsigned int i=0; i<frameCount; i++ ){
//		TTSampleVector sampleVector[numOutputChannels];
		
		for(TTUInt16 channel=0; channel<numInputChannels; channel++){
//			sampleVector[channel] = inputBuffer->sampleVectors[channel];
//			sampleVector[channel][i] = *input++;
			inputBuffer->sampleVectors[channel][i] = *input++;
		}
		
		for(TTUInt16 channel=0; channel<numOutputChannels; channel++){
//			sampleVector[channel] = outputBuffer->sampleVectors[channel];
//			*output++ = sampleVector[channel][i];
			*output++ = outputBuffer->sampleVectors[channel][i];
		}
    }
    return 0;
}


#if 0
#pragma mark -
#endif

static TTAudioEnginePtr sAudioEngine = NULL;


TTErr TTAudioEngineCreate()
{
	TTErr	err = kTTErrNone;
	PaError	paErr;
	
	if(!sAudioEngine){
		paErr = Pa_Initialize();
		if(paErr == paNoError)
			sAudioEngine = new TTAudioEngine;
		else
			TTLogError("PortAudio error: %s", Pa_GetErrorText(paErr));
			err = kTTErrGeneric;
	}
	return err;
}


TTErr TTAudioEngineFree()
{
	PaError err = Pa_Terminate();
	if(err != paNoError)
		TTLogError("PortAudio error: %s\n", Pa_GetErrorText( err ) );
	else{
		delete sAudioEngine;
		sAudioEngine = NULL;
	}
	return (TTErr)err;
}


TTObjectPtr TTAudioEngineReference()
{
	return TTObjectReference(sAudioEngine);
}

TTAudioSignalPtr TTAudioEngineGetInputSignalReference()
{
	return (TTAudioSignalPtr)TTObjectReference(sAudioEngine->inputBuffer);
}

TTAudioSignalPtr TTAudioEngineGetOutputSignalReference()
{
	return (TTAudioSignalPtr)TTObjectReference(sAudioEngine->outputBuffer);
}


TTErr TTAudioEngineStart()
{
	if(sAudioEngine)
		return sAudioEngine->start();
	else
		return kTTErrGeneric;
}


TTErr TTAudioEngineStop()
{
	if(sAudioEngine)
		return sAudioEngine->stop();
	else
		return kTTErrGeneric;
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



