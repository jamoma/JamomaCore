/** @file
 *
 * @ingroup dspGeneratorLib
 *
 * @brief GeneratorLib: Generate a basic, cycling waveform using a wavetable.
 *
 * @details Wavetable is currently limited to using an internal buffer for managing its waveshape.  Shape options include sine, triangle and sawtooth.
 *
 * @see TTBuffer, TTSampleMatrix, TTMatrix, TTAudioSignal
 *
 * @authors Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2003-2013 by Timothy Place & Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTWavetable.h"

#define thisTTClass			TTWavetable
#define thisTTClassName		"wavetable"
#define thisTTClassTags		"dspGeneratorLib, audio, generator, oscillator, buffer"


TT_AUDIO_CONSTRUCTOR,
	mIndex(0.0),
	mIndexDelta(0.0),
	mBuffer(NULL),
	mWavetable(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;

	addAttributeWithSetter(Frequency,		kTypeFloat64);
	addAttributeWithSetter(Mode,			kTypeSymbol);
	addAttributeWithSetter(Gain,			kTypeFloat64);
	addAttributeWithSetter(Interpolation,	kTypeSymbol);
	addAttributeWithSetter(Size,			kTypeUInt32);

	addUpdates(SampleRate);

	TTObjectBaseInstantiate("buffer", (TTObjectBasePtr*)&mBuffer, kTTValNONE);
	if (!mBuffer)
		throw TTException("Could not create internal buffer object");
	mBuffer->setNumChannels(TTUInt32(1));
	mBuffer->checkOutMatrix(mWavetable);

	// Set Defaults...
	setAttributeValue("maxNumChannels",	initialMaxNumChannels);
	setAttributeValue("size", 8192);
	setAttributeValue("mode", kTTSym_sine);
	setAttributeValue("frequency", 440.0);
	setAttributeValue("gain", 0.0);			// 0 dB
	setAttributeValue("interpolation", "linear");
}


TTWavetable::~TTWavetable()
{
	TTObjectBaseRelease((TTObjectBase**)&mBuffer);
}


TTErr TTWavetable::updateSampleRate(const TTValue&, TTValue&)
{
	setAttributeValue("frequency", mFrequency);
	return kTTErrNone;
}


TTErr TTWavetable::setFrequency(const TTValue& newValue)
{
	mFrequency = TTClip<TTFloat64>(newValue, 0.0, sr/2.0);
	mIndexDelta = mFrequency * mSize * srInv;	
	return kTTErrNone;
}


TTErr TTWavetable::setMode(const TTValue& newValue)
{
	mMode = newValue;	// TODO: should be newValue[0]
    TTValue aReturnWeDontCareAbout;

	if (mMode != "externalBuffer")
		return mBuffer->fill(newValue, aReturnWeDontCareAbout);
	else {
		// TODO: implement the ability to use an externally defined buffer
		return kTTErrInvalidValue;
	}
}


TTErr TTWavetable::setInterpolation(const TTValue& newValue)
{
	mMode = newValue;
	if (mMode == "linear")
		setProcessMethod(processWithLinearInterpolation);
	else if (mMode == "lfo")
		setProcessMethod(processAsLFO);
	else
		setProcessMethod(processWithNoInterpolation);
	return kTTErrNone;
}


TTErr TTWavetable::setGain(const TTValue& newValue)
{
	mGain = newValue;
	mLinearGain = TTDecibelsToLinearGain(mGain);
	return kTTErrNone;
}


TTErr TTWavetable::setSize(const TTValue& newSize)
{
	mSize = newSize;
	mBuffer->setLengthInSamples(mSize);
	return setFrequency(mFrequency); // touch the frequency so that the step size is updated
}


// LFO mode only updates values once per vector in order to be as fast as possible
// LFO mode cannot be modulated
TTErr TTWavetable::processAsLFO(TTAudioSignalArrayPtr, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		out = outputs->getSignal(0);
	TTSampleValue		tempSample;
	TTUInt16			vs = out.getVectorSizeAsInt();
	TTUInt16			i=0;
	TTUInt16			numChannels = out.getNumChannelsAsInt();
	TTUInt16			channel;
	TTUInt64			p1 = (TTUInt64)mIndex;						// playback index
	
	// Move the play head
	mIndex += (mIndexDelta * vs);
	
	// Wrap the play head
	if (mIndex >= mSize)
	{
		mIndex -= mSize;
		mBuffer->checkInMatrix(mWavetable);
		mBuffer->checkOutMatrix(mWavetable);
	} else if (mIndex < 0) {
		mIndex += mSize;
		mBuffer->checkInMatrix(mWavetable);
		mBuffer->checkOutMatrix(mWavetable);
	}
	
	// table lookup (no interpolation)
	// CURRENTLY: this is hard coded to look only at the first channel, and all other channels in the buffer are ignored
	mWavetable->peek(p1,0,tempSample);
	tempSample *= mLinearGain;
	
	// TODO: in TTBlue 0.2.x this code only assigned the first sample value to save cpu -- should we bring this back as an option?
	while (vs--) {
		for (channel=0; channel<numChannels; channel++)
			out.mSampleVectors[channel][i] = tempSample;
		i++;
	}
	
	return kTTErrNone;
}


TTErr TTWavetable::processWithNoInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignalPtr	in; // can't call getSignal if there is no signal! = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTSampleValue		*inSample = NULL;
	TTSampleValue		tempSample;
	TTUInt16			vs = out.getVectorSizeAsInt();
	TTUInt16			i=0;
	TTUInt16			numChannels = out.getNumChannelsAsInt();
	TTUInt16			channel;
	TTBoolean			hasModulation = true;
	
	// If the input and output signals are the same, then there really isn't an input signal
	// In that case we don't modulate the oscillator with it
	if (inputs->numAudioSignals == 0)
		hasModulation = false;
	else {
		in = &inputs->getSignal(0);
		inSample = in->mSampleVectors[0];
	}
	while (vs--) {
		TTUInt64	p1 = (TTUInt64)mIndex;	// playback index

		// TODO: all of this access of mIndex and mIndexDelta etc is really going to be dereference pointers in our struct/class
		//		 This likely means that the values are not cached (or at least not cached together) in the processors registers
		//		 We should copy these to local variables at the vector start and then copy them back at the vector's end
		
		// Move the play head
		mIndex += mIndexDelta;

		// Apply modulation to the play head
		if (hasModulation)
			mIndex += *inSample++ * mSize / sr;

		// Wrap the play head
		if (mIndex >= mSize)
		{
			mIndex -= mSize;
			mBuffer->checkInMatrix(mWavetable);
			mBuffer->checkOutMatrix(mWavetable);
		} else if (mIndex < 0) {
			mIndex += mSize;
			mBuffer->checkInMatrix(mWavetable);
			mBuffer->checkOutMatrix(mWavetable);
		}

		// table lookup (no interpolation)
		// CURRENTLY: this is hard coded to look only at the first channel, and all other channels in the buffer are ignored
		mWavetable->peek(p1,0,tempSample);
		tempSample *= mLinearGain;
		for (channel=0; channel<numChannels; channel++)
			out.mSampleVectors[channel][i] = tempSample;
		i++;
	}
	
	return kTTErrNone;
}


TTErr TTWavetable::processWithLinearInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignalPtr	in; // can't call getSignal if there is no signal! = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTSampleValue		*inSample = NULL;
	TTSampleValue		tempSample;
	TTUInt16			vs = out.getVectorSizeAsInt();
	TTUInt16			i=0;
	TTUInt16			numChannels = out.getNumChannelsAsInt();
	TTUInt16			channel;
	TTBoolean			hasModulation = true;

	// If the input and output signals are the same, then there really isn't an input signal
	// In that case we don't modulate the oscillator with it
	if (inputs->numAudioSignals == 0)
		hasModulation = false;
	else {
		in = &inputs->getSignal(0);
		inSample = in->mSampleVectors[0];
	}
	while (vs--) {
		// Move the play head
		mIndex += mIndexDelta;

		// Apply modulation to the play head
		if (hasModulation)
			mIndex += *inSample++ * mSize / sr;

		// Wrap the play head
		if (mIndex >= mSize)
		{
			mIndex -= mSize;
			mBuffer->checkInMatrix(mWavetable);
			mBuffer->checkOutMatrix(mWavetable);
		} else if (mIndex < 0) {
			mIndex += mSize;
			mBuffer->checkInMatrix(mWavetable);
			mBuffer->checkOutMatrix(mWavetable);
		}

		// table lookup (linear interpolation)
		// CURRENTLY: this is hard coded to look only at the first channel, and all other channels in the buffer are ignored
		mWavetable->peeki(mIndex,0,tempSample);
		tempSample *= mLinearGain;
		for (channel=0; channel<numChannels; channel++)
			out.mSampleVectors[channel][i] = tempSample;
		i++;
	}
	
	//mWavetable = contents; // update the class variable
	return kTTErrNone;
}
