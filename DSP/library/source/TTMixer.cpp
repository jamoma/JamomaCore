/** @file
 *
 * @ingroup dspMathLib
 *
 * @brief #TTMixer is a Jamoma DSP Audio Mixer Object
 *
 * @details
 *
 * @authors Tim Place, Nathan Wolek, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTMixer.h"
#ifdef TT_PLATFORM_WIN
#include <algorithm>
#endif

#define thisTTClass			TTMixer
#define thisTTClassName		"mixer"
#define thisTTClassTags		"audio, mixer"


TT_AUDIO_CONSTRUCTOR,
	mInterpolated(0),
	mNumInputs(1),
	mNumOutputs(1)
{
	
	addAttributeWithSetter(NumInputs,	kTypeUInt16);
	addAttributeWithSetter(NumOutputs,	kTypeUInt16);
   	addAttribute(Interpolated,		kTypeBoolean);	
	
	addMessageWithArguments(setGain);
	addMessageWithArguments(setLinearGain);
	addMessageWithArguments(setMidiGain);

	//registerMessageWithArgument(updateMaxNumChannels);
	addMessage(clear);	
	mGainMatrix.set("type", "float64");
	oldGainMatrix.set("type", "float64");
	tempGainMatrix.set("type","float64");
	TTValue		v(1, 1);
	mGainMatrix.set("dimensions", v);
	oldGainMatrix.set("dimensions", v);
	tempGainMatrix.set("dimensions", v);
	clear();
	setProcessMethod(processAudio);
}


TTMixer::~TTMixer()
{
}


// conceptually:
//	columns == inputs
//	rows == outputs


TTErr TTMixer::setNumInputs(const TTValue& newValue)
{
	TTChannelCount	numInputs = newValue;
	TTValue		v(numInputs, mNumOutputs);
	
	if (numInputs != mNumInputs) {
		mNumInputs = numInputs;
		TTMatrixBase::copy(*mGainMatrix.instance(), *tempGainMatrix.instance()); //1. copy mGainMtrix to tempGainMatrix;
		mGainMatrix.set("dimensions", v); //2. resize
		oldGainMatrix.set("dimensions", v);
		clear();						//3. clear mGainMatrix
		restoreMatrix(); //4. element-wise copy tempGainMatrix content over to mGainMatrix
	}
	return kTTErrNone;
}


TTErr TTMixer::setNumOutputs(const TTValue& newValue)
{
	TTChannelCount	numOutputs = newValue;
	TTValue		v(mNumInputs, numOutputs);
	
	if (numOutputs != mNumOutputs) {
		mNumOutputs = numOutputs;
		TTMatrixBase::copy(*mGainMatrix.instance(), *tempGainMatrix.instance()); //1. copy mGainMtrix to tempGainMatrix;
		mGainMatrix.set("dimensions", v);
		oldGainMatrix.set("dimensions", v);
		clear();						//3. clear mGainMatrix
		restoreMatrix(); //4. element-wise copy tempGainMatrix content over to mGainMatrix
	}
	return kTTErrNone;
}
	
TTErr TTMixer::restoreMatrix()
{
	TTValue dim;
	TTFloat64 tempValue; 	
	TTChannelCount xx, yy;
	tempGainMatrix.get("dimensions", dim);
	xx = dim[0];
	yy = dim[1];
	TTLimit(xx,(TTChannelCount) 1, mNumInputs); // in case xx or yy is greater than the current mGainMatrix ...
	TTLimit(yy,(TTChannelCount) 1, mNumOutputs);
	for (TTUInt16 y=0; y < yy; y++) {
		for (TTChannelCount x=0; x < xx; x++) {
			tempGainMatrix.get2d(x, y, tempValue);
			mGainMatrix.set2d(   x, y, tempValue);
			oldGainMatrix.set2d( x, y, tempValue);
		}
	}
	return kTTErrNone;
}	


TTErr TTMixer::clear()
{
	mGainMatrix.clear();
	oldGainMatrix.clear();
	return kTTErrNone;
}

TTErr TTMixer::checkMatrixSize(TTChannelCount x, TTChannelCount y)
//this function will resize mGainMatrix if necessary while preserving its content 
{	
	if (x > (mNumInputs-1)){
		if (y > (mNumOutputs-1)) 
			mNumOutputs = y+1;
		setNumInputs(x+1); 
	}
	else{ 
		if (y > (mNumOutputs-1)) 			
			setNumOutputs(y+1);		
	}	
	return kTTErrNone;
}




TTErr TTMixer::setGain(const TTValue& newValue, TTValue&)
{
	TTChannelCount	x;
	TTChannelCount	y;
	TTFloat64	gainValue;
	
	if (newValue.size() != 3)
		return kTTErrWrongNumValues;
	
	x = newValue[0];
	y = newValue[1];
	gainValue = newValue[2];

	checkMatrixSize(x,y);
    
	mGainMatrix.set2d(x, y, TTDecibelsToLinearGain(gainValue));

	if (mInterpolated) 
		setProcessMethod(processAudioInterpolated);
 	return kTTErrNone;
}


TTErr TTMixer::setLinearGain(const TTValue& newValue, TTValue&)
{
	TTChannelCount	x;
	TTChannelCount	y;
	TTFloat64	gainValue;
	
	if (newValue.size() != 3)
		return kTTErrWrongNumValues;
	
	x = newValue[0];
	y = newValue[1];
	gainValue = newValue[2];

	checkMatrixSize(x,y);
	
	mGainMatrix.set2d(x, y, gainValue);
	if (mInterpolated) 		
		setProcessMethod(processAudioInterpolated);
	return kTTErrNone;	
}


TTErr TTMixer::setMidiGain(const TTValue& newValue, TTValue&)
{
	TTChannelCount	x;
	TTChannelCount	y;
	TTFloat64	gainValue;
	
	if (newValue.size() != 3)
		return kTTErrWrongNumValues;
	
	x = newValue[0];
	y = newValue[1];
	gainValue = newValue[2];

	checkMatrixSize(x,y);
	mGainMatrix.set2d(x, y, TTMidiToLinearGain(gainValue));

	if (mInterpolated) 
		setProcessMethod(processAudioInterpolated);
	return kTTErrNone;
}


// Here we are mixing channels within a signal rather than between multiple signals
TTErr TTMixer::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTSampleValuePtr	inSample;
	TTSampleValuePtr	outSample;
	TTChannelCount		numInputChannels = in.getNumChannelsAsInt();
	TTChannelCount		numOutputChannels = out.getNumChannelsAsInt();
	TTChannelCount		outChannel;
	TTChannelCount		inChannel;
    TTSampleValue       gainValue;

	if (numInputChannels > mNumInputs) {
		numInputChannels = mNumInputs;
		//setNumInputs(numInputChannels);
	}
	if (numOutputChannels != mNumOutputs) {
		TTValue v = mNumOutputs;
		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);
		numOutputChannels = mNumOutputs;
	}
	out.clear();
	
	// TODO: this multiply-nested for-loop has got to be horrendously slow, there should be a much faster way to do this?
	
		for (outChannel=0; outChannel<numOutputChannels; outChannel++) {
			outSample = out.mSampleVectors[outChannel];
			for (inChannel=0; inChannel<numInputChannels; inChannel++) {
				mGainMatrix.get2d(inChannel, outChannel, gainValue);
				if (gainValue != 0.0){
					inSample = in.mSampleVectors[inChannel];					
					for (int i=0; i<vs; i++) {				
						outSample[i] += inSample[i] * gainValue;
				}
			}
		}
	}		
	return kTTErrNone;
}


TTErr TTMixer::processAudioInterpolated(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTSampleValuePtr	inSample;
	TTSampleValuePtr	outSample;
	TTChannelCount		numInputChannels = in.getNumChannelsAsInt();
	TTChannelCount		numOutputChannels = out.getNumChannelsAsInt();
	TTChannelCount		outChannel;
	TTChannelCount		inChannel;
    TTSampleValue       gainValue, increment;

	if (numInputChannels > mNumInputs) {
		numInputChannels = mNumInputs;
	}
	
	if (numOutputChannels != mNumOutputs) {
		TTValue v = mNumOutputs;
		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);
		numOutputChannels = mNumOutputs;
	}
	
	out.clear();
	TTSampleValue value, oldValue; 
	// TODO: this multiply-nested for-loop has got to be horrendously slow, there should be a much faster way to do this?
	
	for (outChannel=0; outChannel<numOutputChannels; outChannel++) {
		outSample = out.mSampleVectors[outChannel];
		for (inChannel=0; inChannel<numInputChannels; inChannel++) {		
			mGainMatrix.get2d(inChannel, outChannel, value);
			//if (value != 0.0){  // this condition caused a click when the destination value is 0
				oldGainMatrix.get2d(inChannel, outChannel, oldValue);
				increment = (value-oldValue)/vs;
			TTAntiDenormal(increment); // TODO: necessary if we use flush-to-zero compiling flag?
				gainValue = oldValue;
				inSample = in.mSampleVectors[inChannel];				
				for (int i=0; i<vs; i++) {
					gainValue += increment;
					outSample[i] += inSample[i] * gainValue;
				}				
			//}
			oldGainMatrix.set2d(inChannel, outChannel, value);
		}
	}	
	setProcessMethod(processAudio);
	return kTTErrNone;
}

