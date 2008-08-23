/* 
 * TTAudioUnit -- AudioUnit plug-in host
 * Extension Class for TTBlue
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 

 
 
 EXTREMELY IMPORTANT
 
 In order to comile this source, you must modify the CoreAudio SDK.
 The reason is that the CoreAudio SDK uses anonymous enums.
 Anonymous enums, beside being considered bad practice in the C++ community,
 cause problems for the GCC 4 compiler when compiling C++ templates 
 in other parts of the code.
 
 So you will need to find CoreAudioTypes.h and give all of the enums a name.
 
 
 */

#include "TTBlueAPI.h"
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
	TTSymbolPtr			plugin;				///< Attribute: the name of the current plugin
	AudioUnit			audioUnit;			///< the actual plugin
	AudioBufferList*	inputBufferList;
	AudioBufferList*	outputBufferList;
	AudioTimeStamp		timeStamp;
	TTHashPtr			parameterNames;		///< parameter names -> parameter ids
	
	/**	Constructor. */
	TTAudioUnit(TTUInt16 newMaxNumChannels)
		: TTAudioObject("audiounit", newMaxNumChannels),
		  inputBufferList(NULL), 
		  outputBufferList(NULL)
	{
		registerAttributeWithSetter(plugin,	kTypeSymbol);
		
		registerMessageWithArgument(getPluginNames);
		registerMessageWithArgument(getParameterNames);
		registerMessageWithArgument(getPresetNames);
		
		registerMessageWithArgument(setParameter);
		registerMessageWithArgument(getParameter);
		registerMessageWithArgument(recallPreset);

		registerMessageWithArgument(updateMaxNumChannels);

		parameterNames = new TTHash;
		timeStamp.mSampleTime = 0;
		timeStamp.mFlags = kAudioTimeStampSampleTimeValid;
		
		setAttributeValue(TT("plugin"), TT("AULowpass"));
		setProcessMethod(processAudio);
	}
	

	/**	Destructor. */
	~TTAudioUnit()
	{
		if(audioUnit){
			AudioUnitUninitialize(audioUnit);
			CloseComponent(audioUnit);
			audioUnit = NULL;
		}		
		free(inputBufferList);
		free(outputBufferList);
		delete parameterNames;
	}
	
	
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels)
	{
		if(inputBufferList)
			free(inputBufferList);
		if(outputBufferList)
			free(outputBufferList);
		
		// inputBufferList = (AudioBufferList*)malloc(offsetof(AudioBufferList, mBuffers[maxNumChannels]));
		// outputBufferList = (AudioBufferList*)malloc(offsetof(AudioBufferList, mBuffers[maxNumChannels]));
		inputBufferList = (AudioBufferList*)malloc(offsetof(AudioBufferList, mBuffers) + (maxNumChannels * sizeof(AudioBuffer)));
		outputBufferList = (AudioBufferList*)malloc(offsetof(AudioBufferList, mBuffers) + (maxNumChannels * sizeof(AudioBuffer)));

		for(TTUInt16 channel=0; channel<maxNumChannels; channel++){
			inputBufferList->mBuffers[channel].mNumberChannels = 1; 
			inputBufferList->mBuffers[channel].mData = NULL;			// We will set this pointer in the process method
			outputBufferList->mBuffers[channel].mNumberChannels = 1; 
			outputBufferList->mBuffers[channel].mData = NULL;			// Tell the AU to deal with the memory
		} 
		return kTTErrNone;
	}
	
	
	TTErr getPluginNames(TTValue& pluginNames)
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
		
		while(comp = FindNextComponent(comp, &searchDesc)){
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
	
	
	TTErr setplugin(TTValue& newPluginName)
	{
		ComponentDescription	searchDesc;
		Component				comp = NULL;
		ComponentDescription	compDesc;
		Handle					compName;
		char*					compNameStr;
		int						compNameLen;
		TTSymbolPtr				pluginName = newPluginName;
		
		if(audioUnit){
			AudioUnitUninitialize(audioUnit);
			CloseComponent(audioUnit);
			audioUnit = NULL;
		}
		
		searchDesc.componentType = kAudioUnitType_Effect;	// TODO: support other types
		searchDesc.componentSubType = 0;					// kAudioUnitSubType_DefaultOutput;
		searchDesc.componentManufacturer = 0;				//kAudioUnitManufacturer_Apple;
		searchDesc.componentFlags = 0;
		searchDesc.componentFlagsMask = 0;
		
		while(comp = FindNextComponent(comp, &searchDesc)){
			compName = NewHandle(0);
			GetComponentInfo(comp, &compDesc, compName, NULL, NULL);
			HLock(compName);
			compNameStr = *compName;
			compNameLen = *compNameStr++;
			compNameStr[compNameLen] = 0;
			compNameStr = strchr(compNameStr, ':');
			compNameStr++;
			compNameStr++;
			
			if(!strcmp(compNameStr, pluginName->getCString())){	
				AURenderCallbackStruct callbackStruct;

				audioUnit = OpenComponent(comp);
				plugin = pluginName;
				
				stuffParameterNamesIntoHash();
				
				HUnlock(compName);
				DisposeHandle(compName);
				
				// plugin is loaded, now activate it
				callbackStruct.inputProc = &TTAudioUnitGetInputSamples;
				callbackStruct.inputProcRefCon = this;
				AudioUnitSetProperty(audioUnit, kAudioUnitProperty_SetRenderCallback, kAudioUnitScope_Input, 0, &callbackStruct, sizeof(AURenderCallbackStruct));
				AudioUnitSetProperty(audioUnit, kAudioUnitProperty_SampleRate, kAudioUnitScope_Global, 0, &sr, sizeof(sr));
				AudioUnitInitialize(audioUnit);
				
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
		
		parameterNames->clear();
				
		err = AudioUnitGetPropertyInfo(audioUnit, kAudioUnitProperty_ParameterList, kAudioUnitScope_Global, 0, &size, &writable);
		if(err || size == 0)
			return;
		
		parameterArray = (AudioUnitParameterID*)malloc(size);
		err = AudioUnitGetProperty(audioUnit, kAudioUnitProperty_ParameterList, kAudioUnitScope_Global, 0, parameterArray, &size);
		if(err)
			goto out;
		
		for(UInt32 paramNumber = 0; paramNumber < size/sizeof(AudioUnitParameterID); paramNumber++){
			AudioUnitParameterInfo		info;
			UInt32						infoSize = sizeof(AudioUnitParameterInfo);
			char						parameterName[256];
			
			err = AudioUnitGetProperty(audioUnit, kAudioUnitProperty_ParameterInfo, kAudioUnitScope_Global, parameterArray[paramNumber], &info, &infoSize);
			if(!err){
				CFStringGetCString(info.cfNameString, parameterName, 256, kCFStringEncodingUTF8);
				parameterNames->append(TT(parameterName), paramNumber);
			}
		}
		
	out:
		free(parameterArray);
	}
	
	
	TTErr getParameterNames(TTValue& returnedParameterNames)
	{
		return parameterNames->getKeys(returnedParameterNames);
	}

	
	TTErr setParameter(const TTValue& nameAndValue)
	{
		TTSymbolPtr	parameterName;
		TTFloat32	parameterValue;
		TTValue		v;
		TTErr		err;

		if(nameAndValue.getSize() != 2){
			logError("Bad arguments for setParameter()");
			return kTTErrGeneric;
		}
		
		nameAndValue.get(0, &parameterName);
		nameAndValue.get(1, parameterValue);
		err = parameterNames->lookup(parameterName, v);
		if(!err)
			AudioUnitSetParameter(audioUnit, v, kAudioUnitScope_Global, 0, parameterValue, 0);
		return err;
	}
	
	
	TTErr getParameter(TTValue& nameInAndValueOut)
	{
		TTSymbolPtr	parameterName = nameInAndValueOut;
		TTValue		v;
		TTErr		err;
		long		parameterID = -1;
		Float32		parameterValue = 0.0;
		
		err = parameterNames->lookup(parameterName, v);
		if(!err){
			parameterID = v;
			AudioUnitGetParameter(audioUnit, parameterID, kAudioUnitScope_Global, 0, &parameterValue);
			nameInAndValueOut = parameterValue;
		}
		return err;
	}
	

	TTErr getPresetNames(TTValue& returnedPresetNames)
	{
		CFArrayRef	factoryPresets = NULL;
		UInt32		size = sizeof(CFArrayRef);
		OSStatus	err = noErr;
		CFIndex		count;
		
		returnedPresetNames.clear();
		
		err = AudioUnitGetProperty(audioUnit, kAudioUnitProperty_FactoryPresets, kAudioUnitScope_Global, 0, &factoryPresets, &size);
		if(err)
			return kTTErrGeneric;
		
		count = CFArrayGetCount(factoryPresets);
		for(int i=0; i<count; i++){
			const AUPreset* preset = (const AUPreset*)CFArrayGetValueAtIndex(factoryPresets, i);
			char			presetName[256];
			
			CFStringGetCString(preset->presetName, presetName, 256, kCFStringEncodingUTF8);
			returnedPresetNames.append(TT(presetName));
		}
		CFRelease(factoryPresets);
		return kTTErrNone;
	}
	
	
	// We could also keep a hash of factory presets and allow a symbol to set the preset by name at some point...
	TTErr recallPreset(const TTValue& presetNumber)
	{
		AUPreset	presetInfo;
		OSStatus	err = noErr;
		
		presetInfo.presetNumber = presetNumber;
		err = AudioUnitSetProperty(audioUnit, kAudioUnitProperty_CurrentPreset, kAudioUnitScope_Global, 0, &presetInfo, sizeof(AUPreset));
		return err;
	}
	
	
	
	/** Audio Processing Method */
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out)
	{
		TTUInt16					vs = in.getVectorSize();
		TTUInt16					numInputChannels = in.getNumChannels();
		TTUInt16					numOutputChannels = out.getNumChannels();		
		TTFloat32*					auInput[numInputChannels];
		TTFloat32*					auOutput[numOutputChannels];
		AudioUnitRenderActionFlags	ioActionFlags = 0;
		
		// prepare the input
		for(TTUInt16 channel=0; channel<numInputChannels; channel++){
			in.getVector(channel, vs, auInput[channel]);
			inputBufferList->mBuffers[channel].mData = auInput[channel];
			inputBufferList->mBuffers[channel].mDataByteSize = sizeof(TTFloat32) * vs;
			outputBufferList->mBuffers[channel].mDataByteSize = sizeof(TTFloat32) * vs;
		}
		inputBufferList->mNumberBuffers = numInputChannels;
		outputBufferList->mNumberBuffers = numOutputChannels;
		
		// render the output using the plugin
		AudioUnitRender(audioUnit, &ioActionFlags, &timeStamp, 0, vs, outputBufferList);

		// handle the output
		numOutputChannels = outputBufferList->mNumberBuffers;
		for(TTUInt16 channel=0; channel<numOutputChannels; channel++){
			auOutput[channel] = (TTFloat32*)outputBufferList->mBuffers[channel].mData;
			out.setVector(channel, vs, auOutput[channel]);
		}
		
		timeStamp.mSampleTime += vs;
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
	
	for(TTUInt16 channel=0; channel < ioData->mNumberBuffers; channel++)
		memcpy(ioData->mBuffers[channel].mData, ttAudioUnit->inputBufferList->mBuffers[channel].mData, sizeof(TTFloat32) * inNumberFrames);
	return noErr;
}



TT_CLASS_SETUP("audiounit", "audio, processor", TTAudioUnit);

