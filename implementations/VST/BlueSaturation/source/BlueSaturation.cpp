#include "BlueSaturation.h"


AudioEffect* createEffectInstance(audioMasterCallback audioMaster)
{
	return new BlueSaturation(audioMaster);
}


/***************************************************************************/

BlueSaturation::BlueSaturation(audioMasterCallback audioMaster) :
	AudioEffectX(audioMaster, kNumPresets, kNumParameters), 
	mNumChannels(2),
	mOverdrive(NULL),
	mInput(NULL),
	mOutput(NULL)
{
	TTDSPInit();
	
	setNumInputs(2);		// stereo in
	setNumOutputs(2);		// stereo out
	setUniqueID('TTOv');	// identify
	canProcessReplacing();	// supports replacing output
	canDoubleReplacing();	// supports double precision processing

	TTObjectInstantiate(TT("overdrive"), &mOverdrive, mNumChannels);
	TTObjectInstantiate(kTTSym_audiosignal, &mInput, mNumChannels);
	TTObjectInstantiate(kTTSym_audiosignal, &mOutput, mNumChannels);
	
	mParameterList = new BlueParameter[kNumParameters];

	strncpy(mParameterList[kParameterDrive].name, "drive", 256);
	mParameterList[kParameterDrive].scaling = 9.0;
	mParameterList[kParameterDrive].offset = 1.0;

	strncpy(mParameterList[kParameterPreamp].name, "preamp", 256);
	mParameterList[kParameterPreamp].scaling = 96.0;
	mParameterList[kParameterPreamp].offset = -78.0;

	strncpy(mParameterList[kParameterMode].name, "mode", 256);
	mParameterList[kParameterMode].scaling = 2.0;		// just round this one
	mParameterList[kParameterMode].offset = 0.5;

	strncpy(mParameterList[kParameterBlockDC].name, "dcblocker", 256);
	mParameterList[kParameterBlockDC].scaling = 1.0;	// just round this one
	mParameterList[kParameterBlockDC].offset = 0.5;
	
	vst_strncpy(programName, "Default", kVstMaxProgNameLen);	// default program name
}

BlueSaturation::~BlueSaturation()
{
	TTObjectRelease(&mOverdrive);
	TTObjectRelease(&mInput);
	TTObjectRelease(&mOutput);
}



void BlueSaturation::setProgramName(char* name)
{
	vst_strncpy(programName, name, kVstMaxProgNameLen);
}


void BlueSaturation::getProgramName(char* name)
{
	vst_strncpy(name, programName, kVstMaxProgNameLen);
}


void BlueSaturation::setParameter(VstInt32 index, float value)
{
	int			i;
	TTFloat32	temp;
	
	switch (index) {
		case kParameterDrive:
			temp = value * mParameterList[index].scaling;
			temp += mParameterList[index].offset;
			mOverdrive->setAttributeValue(TT("drive"), temp);
			break;
		case kParameterPreamp:
			temp = value * mParameterList[index].scaling;
			temp += mParameterList[index].offset;
			mOverdrive->setAttributeValue(TT("preamp"), temp);
			break;
		case kParameterMode:
			temp = value * mParameterList[index].scaling;
			temp += mParameterList[index].offset;
			i = temp;
			mOverdrive->setAttributeValue(TT("mode"), i);
			break;
		case kParameterBlockDC:
			temp = value * mParameterList[index].scaling;
			temp += mParameterList[index].offset;
			i = temp;
			mOverdrive->setAttributeValue(TT("dcBlocker"), i);
			break;
		default:
			break;
	}
}


float BlueSaturation::getParameter(VstInt32 index)
{
	float	value = 0;

	switch (index) {
		case kParameterDrive:
			mOverdrive->getAttributeValue(TT("drive"), value);
			value -= mParameterList[index].offset;
			value /= mParameterList[index].scaling;
			break;
		case kParameterPreamp:
			mOverdrive->getAttributeValue(TT("preamp"), value);
			value -= mParameterList[index].offset;
			value /= mParameterList[index].scaling;
			break;
		case kParameterMode:
			mOverdrive->getAttributeValue(TT("mode"), value);
			break;
		case kParameterBlockDC:
			mOverdrive->getAttributeValue(TT("dcBlocker"), value);
			break;
		default:
			break;
	}
	return value;
}


void BlueSaturation::getParameterName(VstInt32 index, char* label)
{
	strncpy(label, mParameterList[index].name, kVstMaxParamStrLen);
}


void BlueSaturation::getParameterDisplay(VstInt32 index, char* text)
{
	//dB2string (fGain, text, kVstMaxParamStrLen);
}


void BlueSaturation::getParameterLabel(VstInt32 index, char* label)
{
	if(index == kParameterPreamp)
		vst_strncpy(label, "dB", kVstMaxParamStrLen);
}


bool BlueSaturation::getEffectName(char* name)
{
	vst_strncpy(name, "BlueSaturation", kVstMaxEffectNameLen);
	return true;
}


bool BlueSaturation::getProductString(char* text)
{
	vst_strncpy(text, "BlueSaturation", kVstMaxProductStrLen);
	return true;
}


bool BlueSaturation::getVendorString(char* text)
{
	vst_strncpy(text, "TTBlue (ttblue.org)", kVstMaxVendorStrLen);
	return true;
}


VstInt32 BlueSaturation::getVendorVersion()
{ 
	return 1000; 
}



void BlueSaturation::processReplacing(float** inputs, float** outputs, VstInt32 sampleFrames)
{
	mInput->setVector(0, sampleFrames, (TTFloat32*)inputs[0]);
	mInput->setVector(1, sampleFrames, (TTFloat32*)inputs[1]);
	mOutput->setVectorSizeWithInt(sampleFrames);
	mOutput->alloc();
	
	mOverdrive->process(mInput, mOutput);
	
	mOutput->getVector(0, sampleFrames, (TTFloat32*)outputs[0]);
	mOutput->getVector(1, sampleFrames, (TTFloat32*)outputs[1]);
}


void BlueSaturation::processDoubleReplacing(double** inputs, double** outputs, VstInt32 sampleFrames)
{
	mInput->setVector(0, sampleFrames, (TTFloat64*)inputs[0]);
	mInput->setVector(1, sampleFrames, (TTFloat64*)inputs[1]);
	mOutput->setVectorSizeWithInt(sampleFrames);
	mOutput->alloc();
	
	mOverdrive->process(mInput, mOutput);
	
	mOutput->getVector(0, sampleFrames, (TTFloat64*)outputs[0]);
	mOutput->getVector(1, sampleFrames, (TTFloat64*)outputs[1]);
}

