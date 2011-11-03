/* 
 * TTAudioUnit -- AudioUnit plug-in host
 * Extension Class for Jamoma DSP
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include <CoreServices/CoreServices.h>
#include <AudioToolbox/AudioToolBox.h>
#include <AudioUnit/AudioUnit.h>


#define thisTTClass TTAudioUnit


/**	An AudioUnit render callback.  
 The AudioUnit will get its audio input by calling this function.  */
OSStatus TTAudioUnitGetInputSamples(void*						inRefCon,
									AudioUnitRenderActionFlags*	ioActionFlags,
									const AudioTimeStamp*		inTimeStamp,
									UInt32						inBusNumber,
									UInt32						inNumberFrames,
									AudioBufferList*			ioData);


/**	Host AudioUnit plug-ins. */
class TTAudioUnit : public TTAudioObject {
public:
	TTSymbolPtr			mPlugin;			///< Attribute: the name of the current plugin
	AudioUnit			mAudioUnit;			///< the actual plugin
	AudioBufferList*	mInputBufferList;
	AudioBufferList*	mOutputBufferList;
	AudioTimeStamp		mTimeStamp;
	TTHashPtr			mParameterNames;	///< parameter names -> parameter ids
	
	/**	Constructor. */
	TTAudioUnit(TTValue& arguments)
		: TTAudioObject(arguments),
		  mInputBufferList(NULL), 
		  mOutputBufferList(NULL)
	{
		addAttributeWithSetter(Plugin,	kTypeSymbol);
		
		addMessageWithArguments(getPluginNames);
		addMessageWithArguments(getParameterNames);
		addMessageWithArguments(getPresetNames);
		
		addMessageWithArguments(setParameter);
		addMessageWithArguments(getParameter);
		addMessageWithArguments(recallPreset);

		addUpdates(MaxNumChannels);

		mParameterNames = new TTHash;
		mTimeStamp.mSampleTime = 0;
		mTimeStamp.mFlags = kAudioTimeStampSampleTimeValid;
		
		setAttributeValue(TT("plugin"), TT("AULowpass"));
		setProcessMethod(processAudio);
	}
	

	/**	Destructor. */
	~TTAudioUnit()
	{
		if (mAudioUnit) {
			AudioUnitUninitialize(mAudioUnit);
			CloseComponent(mAudioUnit);
			mAudioUnit = NULL;
		}		
		free(mInputBufferList);
		free(mOutputBufferList);
		delete mParameterNames;
	}
	
	
	TTErr updateMaxNumChannels(TTValueConstRef oldMaxNumChannels, TTValueRef)
	{
		if (mInputBufferList)
			free(mInputBufferList);
		if (mOutputBufferList)
			free(mOutputBufferList);
		
		// inputBufferList = (AudioBufferList*)malloc(offsetof(AudioBufferList, mBuffers[maxNumChannels]));
		// outputBufferList = (AudioBufferList*)malloc(offsetof(AudioBufferList, mBuffers[maxNumChannels]));
		mInputBufferList = (AudioBufferList*)malloc(offsetof(AudioBufferList, mBuffers) + (maxNumChannels * sizeof(AudioBuffer)));
		mOutputBufferList = (AudioBufferList*)malloc(offsetof(AudioBufferList, mBuffers) + (maxNumChannels * sizeof(AudioBuffer)));

		for (TTUInt16 channel=0; channel<maxNumChannels; channel++) {
			mInputBufferList->mBuffers[channel].mNumberChannels = 1; 
			mInputBufferList->mBuffers[channel].mData = NULL;			// We will set this pointer in the process method
			mOutputBufferList->mBuffers[channel].mNumberChannels = 1; 
			mOutputBufferList->mBuffers[channel].mData = NULL;			// Tell the AU to deal with the memory
		} 
		return kTTErrNone;
	}
	
	
	TTErr getPluginNames(TTValueConstRef, TTValueRef pluginNames)
	{
		ComponentDescription	searchDesc;
		Component				comp = NULL;
		ComponentDescription	compDesc;
		Handle					compName;
		char*					compNameStr;
		int						compNameLen;
		
		pluginNames.clear();
		
		searchDesc.componentType = kAudioUnitType_Effect;	// TODO: support other types
		searchDesc.componentSubType = 0;					// kAudioUnitSubType_DefaultOutput;
		searchDesc.componentManufacturer = 0;				//kAudioUnitManufacturer_Apple;
		searchDesc.componentFlags = 0;
		searchDesc.componentFlagsMask = 0;
		
		while (comp = FindNextComponent(comp, &searchDesc)) {
			compName = NewHandle(0);
			GetComponentInfo(comp, &compDesc, compName, NULL, NULL);
			HLock(compName);
			compNameStr = *compName;
			compNameLen = *compNameStr++;
			compNameStr[compNameLen] = 0;
			compNameStr = strchr(compNameStr, ':');
			compNameStr++;
			compNameStr++;
			
			pluginNames.append(TT(compNameStr));
			
			HUnlock(compName);
			DisposeHandle(compName);
		}
		return kTTErrNone;
	}
	
	
	TTErr setPlugin(TTValue& newPluginName)
	{
		ComponentDescription	searchDesc;
		Component				comp = NULL;
		ComponentDescription	compDesc;
		Handle					compName;
		char*					compNameStr;
		int						compNameLen;
		TTSymbolPtr				pluginName = newPluginName;
		
		if (mAudioUnit) {
			AudioUnitUninitialize(mAudioUnit);
			CloseComponent(mAudioUnit);
			mAudioUnit = NULL;
		}
		
		searchDesc.componentType = kAudioUnitType_Effect;	// TODO: support other types
		searchDesc.componentSubType = 0;					// kAudioUnitSubType_DefaultOutput;
		searchDesc.componentManufacturer = 0;				//kAudioUnitManufacturer_Apple;
		searchDesc.componentFlags = 0;
		searchDesc.componentFlagsMask = 0;
		
		while (comp = FindNextComponent(comp, &searchDesc)) {
			compName = NewHandle(0);
			GetComponentInfo(comp, &compDesc, compName, NULL, NULL);
			HLock(compName);
			compNameStr = *compName;
			compNameLen = *compNameStr++;
			compNameStr[compNameLen] = 0;
			compNameStr = strchr(compNameStr, ':');
			compNameStr++;
			compNameStr++;
			
			if (!strcmp(compNameStr, pluginName->getCString())) {	
				AURenderCallbackStruct callbackStruct;

				mAudioUnit = OpenComponent(comp);
				mPlugin = pluginName;
				
				stuffParameterNamesIntoHash();
				
				HUnlock(compName);
				DisposeHandle(compName);
				
				// plugin is loaded, now activate it
				callbackStruct.inputProc = &TTAudioUnitGetInputSamples;
				callbackStruct.inputProcRefCon = this;
				AudioUnitSetProperty(mAudioUnit, kAudioUnitProperty_SetRenderCallback, kAudioUnitScope_Input, 0, &callbackStruct, sizeof(AURenderCallbackStruct));
				AudioUnitSetProperty(mAudioUnit, kAudioUnitProperty_SampleRate, kAudioUnitScope_Global, 0, &sr, sizeof(sr));
				AudioUnitInitialize(mAudioUnit);
				
				return kTTErrNone;
			}
			
			HUnlock(compName);
			DisposeHandle(compName);
		}
		return kTTErrGeneric;
	}
	
	
	void stuffParameterNamesIntoHash()
	{
		UInt32					size = 0;
		Boolean					writable = false;
		OSStatus				err = noErr;
		AudioUnitParameterID*	parameterArray = NULL;
		
		mParameterNames->clear();
				
		err = AudioUnitGetPropertyInfo(mAudioUnit, kAudioUnitProperty_ParameterList, kAudioUnitScope_Global, 0, &size, &writable);
		if (err || size == 0)
			return;
		
		parameterArray = (AudioUnitParameterID*)malloc(size);
		err = AudioUnitGetProperty(mAudioUnit, kAudioUnitProperty_ParameterList, kAudioUnitScope_Global, 0, parameterArray, &size);
		if (err)
			goto out;
		
		for (UInt32 paramNumber = 0; paramNumber < size/sizeof(AudioUnitParameterID); paramNumber++) {
			AudioUnitParameterInfo		info;
			UInt32						infoSize = sizeof(AudioUnitParameterInfo);
			char						parameterName[256];
			
			err = AudioUnitGetProperty(mAudioUnit, kAudioUnitProperty_ParameterInfo, kAudioUnitScope_Global, parameterArray[paramNumber], &info, &infoSize);
			if (!err) {
				CFStringGetCString(info.cfNameString, parameterName, 256, kCFStringEncodingUTF8);
				mParameterNames->append(TT(parameterName), paramNumber);
			}
		}
		
	out:
		free(parameterArray);
	}
	
	
	TTErr getParameterNames(TTValueConstRef, TTValueRef returnedParameterNames)
	{
		return mParameterNames->getKeys(returnedParameterNames);
	}

	
	TTErr setParameter(TTValueConstRef nameAndValue, TTValueRef)
	{
		TTSymbolPtr	parameterName;
		TTFloat32	parameterValue;
		TTValue		v;
		TTErr		err;

		if (nameAndValue.getSize() != 2) {
			logError("Bad arguments for setParameter()");
			return kTTErrGeneric;
		}
		
		nameAndValue.get(0, &parameterName);
		nameAndValue.get(1, parameterValue);
		err = mParameterNames->lookup(parameterName, v);
		if (!err)
			AudioUnitSetParameter(mAudioUnit, v, kAudioUnitScope_Global, 0, parameterValue, 0);
		return err;
	}
	
	
	TTErr getParameter(TTValueConstRef nameIn, TTValueRef valueOut)
	{
		TTSymbolPtr	parameterName = nameIn;
		TTValue		v;
		TTErr		err;
		long		parameterID = -1;
		Float32		parameterValue = 0.0;
		
		err = mParameterNames->lookup(parameterName, v);
		if (!err) {
			parameterID = v;
			AudioUnitGetParameter(mAudioUnit, parameterID, kAudioUnitScope_Global, 0, &parameterValue);
			valueOut = parameterValue;
		}
		return err;
	}
	

	TTErr getPresetNames(TTValueConstRef, TTValueRef returnedPresetNames)
	{
		CFArrayRef	factoryPresets = NULL;
		UInt32		size = sizeof(CFArrayRef);
		OSStatus	err = noErr;
		CFIndex		count;
		
		returnedPresetNames.clear();
		
		err = AudioUnitGetProperty(mAudioUnit, kAudioUnitProperty_FactoryPresets, kAudioUnitScope_Global, 0, &factoryPresets, &size);
		if (err)
			return kTTErrGeneric;
		
		count = CFArrayGetCount(factoryPresets);
		for (int i=0; i<count; i++) {
			const AUPreset* preset = (const AUPreset*)CFArrayGetValueAtIndex(factoryPresets, i);
			char			presetName[256];
			
			CFStringGetCString(preset->presetName, presetName, 256, kCFStringEncodingUTF8);
			returnedPresetNames.append(TT(presetName));
		}
		CFRelease(factoryPresets);
		return kTTErrNone;
	}
	
	
	// We could also keep a hash of factory presets and allow a symbol to set the preset by name at some point...
	TTErr recallPreset(TTValueConstRef presetNumber, TTValueRef)
	{
		AUPreset	presetInfo;
		OSStatus	err = noErr;
		
		presetInfo.presetNumber = presetNumber;
		err = AudioUnitSetProperty(mAudioUnit, kAudioUnitProperty_CurrentPreset, kAudioUnitScope_Global, 0, &presetInfo, sizeof(AUPreset));
		return TTErr(err);
	}
	
	
	
	/** Audio Processing Method */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TTAudioSignal&				in = inputs->getSignal(0);
		TTAudioSignal&				out = outputs->getSignal(0);
		TTUInt16					vs = in.getVectorSizeAsInt();
		TTUInt16					numInputChannels = in.getNumChannelsAsInt();
		TTUInt16					numOutputChannels = out.getNumChannelsAsInt();		
		TTFloat32*					auInput[numInputChannels];
		TTFloat32*					auOutput[numOutputChannels];
		AudioUnitRenderActionFlags	ioActionFlags = 0;
		
		// prepare the input
		for (TTUInt16 channel=0; channel<numInputChannels; channel++) {
			
// FIXME: we can't do this! auInput is never alloc'd any memory but then we try writing to it in the following getVector call!
			
			in.getVector(channel, vs, auInput[channel]);
			mInputBufferList->mBuffers[channel].mData = auInput[channel];
			mInputBufferList->mBuffers[channel].mDataByteSize = sizeof(TTFloat32) * vs;
			mOutputBufferList->mBuffers[channel].mDataByteSize = sizeof(TTFloat32) * vs;
		}
		mInputBufferList->mNumberBuffers = numInputChannels;
		mOutputBufferList->mNumberBuffers = numOutputChannels;
		
		// render the output using the plugin
		AudioUnitRender(mAudioUnit, &ioActionFlags, &mTimeStamp, 0, vs, mOutputBufferList);

		// handle the output
		numOutputChannels = mOutputBufferList->mNumberBuffers;
		for (TTUInt16 channel=0; channel<numOutputChannels; channel++) {
			auOutput[channel] = (TTFloat32*)mOutputBufferList->mBuffers[channel].mData;
			out.setVector(channel, vs, auOutput[channel]);
		}
		
		mTimeStamp.mSampleTime += vs;
		return kTTErrNone;
	}

};



// Implemention of the AU render callback.
OSStatus TTAudioUnitGetInputSamples(void*						inRefCon,
									AudioUnitRenderActionFlags*	ioActionFlags,
									const AudioTimeStamp*		inTimeStamp,
									UInt32						inBusNumber,
									UInt32						inNumberFrames,
									AudioBufferList*			ioData)
{
	TTAudioUnit* ttAudioUnit = (TTAudioUnit*)inRefCon;
	
	for (TTUInt16 channel=0; channel < ioData->mNumberBuffers; channel++)
		memcpy(ioData->mBuffers[channel].mData, ttAudioUnit->mInputBufferList->mBuffers[channel].mData, sizeof(TTFloat32) * inNumberFrames);
	return noErr;
}



TT_AUDIO_CLASS_SETUP("audiounit", "audio, processor", TTAudioUnit);

