#include "AUEffectBase.h"
#include "BlueFilterVersion.h"
#include "TTBlue/TTBlueAPI.h"

#if AU_DEBUG_DISPATCHER
	#include "AUDebugDispatcher.h"
#endif


#ifndef __BlueFilter_h__
#define __BlueFilter_h__


// Parameters
static CFStringRef kParameterOneName		= CFSTR("Frequency");
static const float kDefaultValue_ParamOne	= 1000.0;

enum {
	kParam_One = 0,
	kNumberOfParameters = 1
};


// Presets
static const float kParameter_Preset_Low = 200.0;
static const float kParameter_Preset_High = 2000.0;

enum {
    kPreset_Low = 0,
    kPreset_High = 1,
    kNumberPresets = 2
};

static AUPreset kPresets [kNumberPresets] = {
	{kPreset_Low, CFSTR ("Low")},
	{kPreset_High, CFSTR ("High")}
};

static const int kPreset_Default = kPreset_Low;


// AU Class
class BlueFilter : public AUEffectBase
{
public:

	// Life Cycle
	
	BlueFilter(AudioUnit component);

	#if AU_DEBUG_DISPATCHER
	virtual ~BlueFilter () 
	{ 
		delete mDebugDispatcher; 
	}
	#endif
	
	
	virtual AUKernelBase* NewKernel() 
	{ 
		return new BlueFilterKernel(this); 
	}
	
	
	// Parameters
	
	virtual	OSStatus GetParameterValueStrings(AudioUnitScope inScope, AudioUnitParameterID inParameterID, CFArrayRef* outStrings);
    
	
	virtual	OSStatus GetParameterInfo(AudioUnitScope			inScope,
										 AudioUnitParameterID	inParameterID,
										 AudioUnitParameterInfo	&outParameterInfo);
    
	
	// Properties
	
	virtual OSStatus GetPropertyInfo(AudioUnitPropertyID		inID,
										AudioUnitScope			inScope,
										AudioUnitElement		inElement,
										UInt32&			outDataSize,
										Boolean&			outWritable );
	
	
	virtual OSStatus GetProperty(AudioUnitPropertyID inID,
											AudioUnitScope 		inScope,
											AudioUnitElement 		inElement,
											void*			outData);

	
	// Presets
	virtual ComponentResult GetPresets(CFArrayRef* outData) const;
    virtual OSStatus NewFactoryPresetSet(const AUPreset& inNewFactoryPreset);
	
	
 	virtual	bool SupportsTail() 
	{ 
		return false; 
	}
	
	
	virtual OSStatus Version() 
	{
		return kBlueFilterVersion; 
	}
	
	
protected:
	// Processor Class
	class BlueFilterKernel : public AUKernelBase		// most of the real work happens here
	{
	public:
		BlueFilterKernel(AUEffectBase *inAudioUnit )
		: AUKernelBase(inAudioUnit)
		{
			mButter = new TTLowpassButterworth4(1);
			mButter->setAttributeValue(TT("sr"), GetSampleRate());
			
			mInput = new TTAudioSignal(1);
			mInput->setNumChannels(1);
			
			mOutput = new TTAudioSignal(1);
			mOutput->setNumChannels(1);
		}
		
		
		virtual ~BlueFilterKernel()
		{
			delete mButter;
			delete mInput;
			delete mOutput;
		}
		
		
		// *Required* overides for the process method for this effect
		// processes one channel of interleaved samples
        virtual void Process(	const Float32 	*inSourceP,
										Float32		 	*inDestP,
										UInt32 			inFramesToProcess,
										UInt32			inNumChannels,
										bool			&ioSilence);
		
		
        virtual void Reset();
		
	private:
		TTLowpassButterworth4*	mButter;
		TTAudioSignal*			mInput;
		TTAudioSignal*			mOutput;
	};
};


#endif
