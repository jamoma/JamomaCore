#ifndef __bluesaturation__
#define __bluesaturation__

#include "public.sdk/source/vst2.x/audioeffectx.h"
#include "TTDSP.h"


enum {
	kParameterDrive = 0,
	kParameterPreamp,
	kParameterMode,
	kParameterBlockDC,
	kNumParameters
};

typedef struct {
	char		name[256];
	TTFloat32	scaling;
	TTFloat32	offset;
} BlueParameter;

#define kNumPresets 1


//-------------------------------------------------------------------------------------------------------
class BlueSaturation : public AudioEffectX
{
public:
	BlueSaturation(audioMasterCallback audioMaster);
	~BlueSaturation();

	// Processing
	virtual void processReplacing(float** inputs, float** outputs, VstInt32 sampleFrames);
	virtual void processDoubleReplacing(double** inputs, double** outputs, VstInt32 sampleFrames);

	// Program
	virtual void setProgramName(char* name);
	virtual void getProgramName(char* name);

	// Parameters
	virtual void setParameter(VstInt32 index, float value);
	virtual float getParameter(VstInt32 index);
	virtual void getParameterLabel(VstInt32 index, char* label);
	virtual void getParameterDisplay(VstInt32 index, char* text);
	virtual void getParameterName(VstInt32 index, char* text);

	virtual bool getEffectName(char* name);
	virtual bool getVendorString(char* text);
	virtual bool getProductString(char* text);
	virtual VstInt32 getVendorVersion();

protected:
	TTUInt16			mNumChannels;
	TTAudioObject*		mOverdrive;
	TTAudioSignal*		mInput;
	TTAudioSignal*		mOutput;
	BlueParameter*		mParameterList;
	char				programName[kVstMaxProgNameLen+1];
};

#endif // __bluesaturation__
