/* 
 * TTAudioMatrix Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioMatrix.h"
#ifdef TT_PLATFORM_WIN
#include <algorithm>
#endif

#define thisTTClass			TTAudioMatrix
#define thisTTClassName		"audiomatrix"
#define thisTTClassTags		"audio, matrix"


TT_AUDIO_CONSTRUCTOR,
	mNumInputs(0),
	mNumOutputs(0),
	mGainMatrix(NULL),
	mInterpolated(0),
	mOldGainMatrix(NULL)
{
	TTObjectInstantiate(kTTSym_matrix, (TTObjectPtr*)&mGainMatrix, NULL);
	TTObjectInstantiate(kTTSym_matrix, (TTObjectPtr*)&mOldGainMatrix, NULL);
	
	addAttributeWithSetter(NumInputs,	kTypeUInt16);
	addAttributeWithSetter(NumOutputs,	kTypeUInt16);
   	addAttributeWithSetter(Interpolated,		kTypeBoolean);	
	
	addMessageWithArgument(setGain);
	addMessageWithArgument(setLinearGain);
	addMessageWithArgument(setMidiGain);

	//registerMessageWithArgument(updateMaxNumChannels);
	addMessage(clear);	

	setProcessMethod(processAudio);
	mGainMatrix->setAttributeValue(TT("type"), TT("float64"));
	mOldGainMatrix->setAttributeValue(TT("type"), TT("float64"));
}


TTAudioMatrix::~TTAudioMatrix()
{
	TTObjectRelease((TTObjectPtr*)&mGainMatrix);
	TTObjectRelease((TTObjectPtr*)&mOldGainMatrix);
}


// conceptually:
//	columns == inputs
//	rows == outputs

TTErr TTAudioMatrix::setInterpolated(const TTValue& newValue)
{
	mInterpolated = newValue;
	if (mInterpolated)
		setProcessMethod(processAudioInterpolated);
	else 
		setProcessMethod(processAudio);	
	return kTTErrNone;
}



TTErr TTAudioMatrix::setNumInputs(const TTValue& newValue)
{
	TTUInt16	numInputs = newValue;
	TTValue		v(numInputs, mNumOutputs);
	
	if (numInputs != mNumInputs) {
		mNumInputs = numInputs;
		mGainMatrix->setAttributeValue(TT("dimensions"), v);
		mOldGainMatrix->setAttributeValue(TT("dimensions"), v);
	}
	return kTTErrNone;
}


TTErr TTAudioMatrix::setNumOutputs(const TTValue& newValue)
{
	TTUInt16	numOutputs = newValue;
	TTValue		v(mNumInputs, numOutputs);
	
	if (numOutputs != mNumOutputs) {
		mNumOutputs = numOutputs;
		mGainMatrix->setAttributeValue(TT("dimensions"), v);
		mOldGainMatrix->setAttributeValue(TT("dimensions"), v);
	}
	return kTTErrNone;
}


TTErr TTAudioMatrix::clear()
{
	mGainMatrix->clear();
	mOldGainMatrix->clear();
	return kTTErrNone;
}

TTErr TTAudioMatrix::checkMatrixSize(TTUInt16 x, TTUInt16 y)
//this function will resize mGainMatrix if necessary
{	
	if (x > (mNumInputs-1)){
		if (y > (mNumOutputs-1)) mNumOutputs = y+1;
		setNumInputs(x+1); 
	}
	else if (y > (mNumOutputs-1)) setNumOutputs(y+1);
	
	return kTTErrNone;
}


TTErr TTAudioMatrix::setGain(TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	temp, gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);
	newValue.clear();
	checkMatrixSize(x,y);
    
	//if ((x < mNumInputs) && (y < mNumOutputs)) {  
		mGainMatrix->get2dZeroIndex(x, y, temp);
		mGainMatrix->set2dZeroIndex(x, y, dbToLinear(gainValue)); //the Matrix starts similar to Matlab with 1-index 
		mOldGainMatrix->set2dZeroIndex(x, y, temp); 
		return kTTErrNone;//}
	//else 
	//	return kTTErrInvalidValue;
}


TTErr TTAudioMatrix::setLinearGain(TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	temp, gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);	
	newValue.clear();
	checkMatrixSize(x,y);
	
	//if ((x < mNumInputs) && (y < mNumOutputs)) { 
		mGainMatrix->get2dZeroIndex(x, y, temp);
		mGainMatrix->set2dZeroIndex(x, y, gainValue); 
		mOldGainMatrix->set2dZeroIndex(x, y, temp); 
		return kTTErrNone;
	//}
	//else 
	//	return kTTErrInvalidValue;
}


TTErr TTAudioMatrix::setMidiGain(TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	temp, gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);
	newValue.clear();
	checkMatrixSize(x,y);

	//if ((x < mNumInputs) && (y < mNumOutputs)) {
		//mGainMatrix->get2dZeroIndex(x, y, temp);
		mGainMatrix->set2dZeroIndex(x, y, midiToLinearGain(gainValue)); //the Matrix starts similar to Matlab with 1-index 
		//mOldGainMatrix->set2dZeroIndex(x, y, temp); 
		return kTTErrNone;
	//}
	//else 
	//	return kTTErrInvalidValue;

}


// Here we are mixing channels within a signal rather than between multiple signals
TTErr TTAudioMatrix::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTSampleValuePtr	inSample;
	TTSampleValuePtr	outSample;
	TTUInt16			numInputChannels = in.getNumChannelsAsInt();
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	TTUInt16			outChannel;
	TTUInt16			inChannel;
    TTFloat64           gainValue;
	if (numInputChannels > mNumInputs) {
		setNumInputs(numInputChannels);
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
			for (inChannel=0; inChannel<numInputChannels; inChannel++) {
				mGainMatrix->get2dZeroIndex(inChannel, outChannel, gainValue);
				if (gainValue != 0.0){
					inSample = in.mSampleVectors[inChannel];
					outSample = out.mSampleVectors[outChannel];
					for (int i=0; i<vs; i++) {				
						outSample[i] += inSample[i] * gainValue;
				}
			}
		}
	}		
	return kTTErrNone;
}


TTErr TTAudioMatrix::processAudioInterpolated(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTSampleValuePtr	inSample;
	TTSampleValuePtr	outSample;
	TTUInt16			numInputChannels = in.getNumChannelsAsInt();
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	TTUInt16			outChannel;
	TTUInt16			inChannel;
    TTFloat64           gainValue, increment;
	if (numInputChannels != mNumInputs) {
		setNumInputs(numInputChannels);
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
		for (inChannel=0; inChannel<numInputChannels; inChannel++) {		
			mGainMatrix->get2dZeroIndex(inChannel, outChannel, value);
			if (value != 0.0){
				mOldGainMatrix->get2dZeroIndex(inChannel, outChannel, oldValue);
				increment = (value-oldValue)/vs;
				TTAntiDenormal(increment);
				gainValue = oldValue;
				inSample = in.mSampleVectors[inChannel];
				outSample = out.mSampleVectors[outChannel];
				for (int i=0; i<vs; i++) {
					gainValue += increment;
					outSample[i] += inSample[i] * gainValue;
				}				
			}
			mOldGainMatrix->set2dZeroIndex(inChannel, outChannel, value);
		}
	}		
	return kTTErrNone;
}

