#include "BlueFilter.h"

COMPONENT_ENTRY(BlueFilter)


BlueFilter::BlueFilter(AudioUnit component)
	: AUEffectBase(component)
{	
	TTDSPInit();
	
	CreateElements();
	Globals()->UseIndexedParameters(kNumberOfParameters);

	SetParameter(kParam_One, kDefaultValue_ParamOne);
	SetAFactoryPresetAsCurrent(kPresets[kPreset_Default]);	// TODO: for some reason, this doesn't seem to be applied...
	
	#if AU_DEBUG_DISPATCHER
	mDebugDispatcher = new AUDebugDispatcher(this);
	#endif
}


OSStatus BlueFilter::GetParameterValueStrings(AudioUnitScope inScope, AudioUnitParameterID inParameterID, CFArrayRef* outStrings)
{
    return kAudioUnitErr_InvalidProperty;
}


OSStatus BlueFilter::GetParameterInfo(AudioUnitScope inScope, AudioUnitParameterID inParameterID, AudioUnitParameterInfo &outParameterInfo)
{
	OSStatus result = noErr;

	outParameterInfo.flags = kAudioUnitParameterFlag_IsWritable
						|	 kAudioUnitParameterFlag_IsReadable;
    
    if(inScope == kAudioUnitScope_Global){
        switch(inParameterID){
            case kParam_One:
                AUBase::FillInParameterName(outParameterInfo, kParameterOneName, false);
                outParameterInfo.unit = kAudioUnitParameterUnit_Hertz;
                outParameterInfo.minValue = 10.0;
                outParameterInfo.maxValue = 20000.0;
				outParameterInfo.flags += kAudioUnitParameterFlag_IsHighResolution;
				outParameterInfo.flags += kAudioUnitParameterFlag_DisplayLogarithmic;
                outParameterInfo.defaultValue = kDefaultValue_ParamOne;
                break;
            default:
                result = kAudioUnitErr_InvalidParameter;
                break;
		}
	} 
	else
        result = kAudioUnitErr_InvalidParameter;

	return result;
}


OSStatus BlueFilter::GetPropertyInfo(	AudioUnitPropertyID	inID,
										AudioUnitScope		inScope,
										AudioUnitElement	inElement,
										UInt32&				outDataSize,
										Boolean&			outWritable)
{
	return AUEffectBase::GetPropertyInfo (inID, inScope, inElement, outDataSize, outWritable);
}


OSStatus BlueFilter::GetProperty(	AudioUnitPropertyID inID,
									AudioUnitScope 		inScope,
									AudioUnitElement 	inElement,
									void*				outData )
{
	return AUEffectBase::GetProperty (inID, inScope, inElement, outData);
}


ComponentResult BlueFilter::GetPresets(CFArrayRef* outData) const
{
    if(outData == NULL) 
		return noErr;
	
    CFMutableArrayRef presetsArray = CFArrayCreateMutable(NULL, kNumberPresets, NULL);
	
    for(int i=0; i<kNumberPresets; ++i)
        CFArrayAppendValue(presetsArray, &kPresets [i]);
	
    *outData = (CFArrayRef)presetsArray;
    return noErr;
}


OSStatus BlueFilter::NewFactoryPresetSet(const AUPreset &inNewFactoryPreset)
{
    SInt32 chosenPreset = inNewFactoryPreset.presetNumber;
	
    if(chosenPreset == kPreset_Low || chosenPreset == kPreset_High){
        for(int i = 0; i < kNumberPresets; ++i){
            if(chosenPreset == kPresets[i].presetNumber){
                switch(chosenPreset){
                    case kPreset_Low:
                        SetParameter(kParam_One, kParameter_Preset_Low);
                        break;
                    case kPreset_High:
						SetParameter(kParam_One, kParameter_Preset_High);
                        break;
                }
                SetAFactoryPresetAsCurrent(kPresets[i]);
                return noErr;             
            }
        }
    }
    return kAudioUnitErr_InvalidProperty;
}


#pragma mark -
#pragma mark BlueFilter Effect Kernel

void BlueFilter::BlueFilterKernel::Reset()
{
	;// do whatever work is necessary to return the audio unit to its pristine, initialized state.
}


// Process 1 channel of audio, the AU will manage the number of parallel channels by creating multiple kernel instances
void BlueFilter::BlueFilterKernel::Process(	const	Float32*	inSourceP,
													Float32*	inDestP,
                                                    UInt32 		inFramesToProcess,
                                                    UInt32		inNumChannels, // for version 2 AudioUnits inNumChannels is always 1
                                                    bool		&ioSilence )
{
	mInput->setVector(0, inFramesToProcess, (TTFloat32*)inSourceP);
	mOutput->setVectorSizeWithInt(inFramesToProcess);
	mOutput->alloc();

	mButter->setAttributeValue(TT("frequency"),  GetParameter(kParam_One));
	mButter->process(mInput, mOutput);
	
	mOutput->getVector(0, inFramesToProcess, (TTFloat32*)inDestP);
}

