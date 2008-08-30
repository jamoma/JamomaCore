/* 
 * TTBlue Wavetable Oscillator
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTWavetable.h"
#define thisTTClass TTWavetable


TTWavetable::TTWavetable(TTUInt16 newMaxNumChannels)
	: TTAudioObject("audio.wavetable", newMaxNumChannels),
	  index(0.0),
	  indexDelta(0.0)
{
	registerAttribute(TT("frequency"),		kTypeFloat64,	&attrFrequency,		(TTSetterMethod)&TTWavetable::setFrequency);
	registerAttribute(TT("mode"),			kTypeSymbol,	&attrMode,			(TTSetterMethod)&TTWavetable::setMode);
	registerAttribute(TT("gain"),			kTypeFloat64,	&attrGain,			(TTSetterMethod)&TTWavetable::setGain);
	registerAttribute(TT("interpolation"),	kTypeSymbol,	&attrInterpolation,	(TTSetterMethod)&TTWavetable::setInterpolation);
	registerAttribute(TT("size"),			kTypeInt64,		&attrSize,			(TTSetterMethod)&TTWavetable::setSize);
	
	registerMessageSimple(updateSr);

	wavetable = new TTBuffer;
	if(!wavetable)
		throw TTException("Could not create internal buffer object");
	wavetable->setnumChannels(1);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setAttributeValue(TT("size"), 4096);
	setAttributeValue(TT("mode"), kTTSym_sine);
	setAttributeValue(TT("frequency"), 440.0);
	setAttributeValue(TT("gain"), 0.0);			// 0 dB
	setAttributeValue(TT("interpolation"), TT("linear"));
}


TTWavetable::~TTWavetable()
{
	delete wavetable;
}


TTErr TTWavetable::updateSr()
{	
	setAttributeValue(TT("frequency"), attrFrequency);
	return kTTErrNone;
}


TTErr TTWavetable::setFrequency(const TTValue& newValue)
{
	TTValue	v;
	
	attrFrequency = TTClip<TTFloat64>(newValue, 0.0, sr/2.0);
	wavetable->getAttributeValue(TT("lengthInSamples"), v);
	indexDelta = attrFrequency * TTFloat64(v) / sr;
	return kTTErrNone;
}


TTErr TTWavetable::setMode(const TTValue& newValue)
{
	attrMode = newValue;	// TODO: should be newValue[0]
	
	if(attrMode != TT("externalBuffer"))
		return wavetable->fill(newValue);
	else{
		// TODO: implement the ability to use an externally defined buffer
		return kTTErrInvalidValue;
	}
}


TTErr TTWavetable::setInterpolation(const TTValue& newValue)
{
	attrMode = newValue;
	if(attrMode == TT("linear"))
		setProcessMethod(processWithLinearInterpolation);
	else
		setProcessMethod(processWithNoInterpolation);
	return kTTErrNone;
}


TTErr TTWavetable::setGain(const TTValue& newValue)
{
	attrGain = newValue;
	linearGain = dbToLinear(attrGain);
	return kTTErrNone;
}


TTErr TTWavetable::setSize(const TTValue& newSize)
{
	attrSize = newSize;
	return wavetable->setlengthInSamples(attrSize);
}


TTErr TTWavetable::processWithNoInterpolation(TTAudioSignal& in, TTAudioSignal& out)
{
	TTSampleValue	*inSample;
	TTSampleValue	tempSample;
	TTUInt16		vs = in.getVectorSize();
	TTUInt16		i=0;
	TTUInt16		numChannels = out.getNumChannels();
	TTUInt16		channel;
	TTBoolean		hasModulation = true;
	TTUInt32		p1 = (TTUInt32)index;						// playback index
	TTSampleVector	contents = wavetable->getContentsForChannel(0);
	
	// If the input and output signals are the same, then there really isn't an input signal
	// In that case we don't modulate the oscillator with it
	if(&in == &out)
		hasModulation = false;
	else
		inSample = in.sampleVectors[0];
	
	while(vs--){
		// Move the play head
		index += indexDelta;
		
		// Apply modulation to the play head
		if(hasModulation)
			index += *inSample++ * attrSize / sr;
		
		// Wrap the play head
		if(index >= attrSize)	    		
			index -= attrSize;
		else if(index < 0)	    		
			index += attrSize;
		
		// table lookup (no interpolation)	
		tempSample = contents[p1] * linearGain;
		for(channel=0; channel<numChannels; channel++)
			out.sampleVectors[channel][i] = tempSample;
		i++;
	}
	return kTTErrNone;
}


TTErr TTWavetable::processWithLinearInterpolation(TTAudioSignal& in, TTAudioSignal& out)
{
	TTSampleValue	*inSample;
	TTSampleValue	tempSample;
	TTUInt16		vs = in.getVectorSize();
	TTUInt16		i=0;
	TTUInt16		numChannels = out.getNumChannels();
	TTUInt16		channel;
	TTBoolean		hasModulation = true;
	TTUInt32		p1, p2;									// two playback indices
	TTFloat64		diff;
	TTSampleVector	contents = wavetable->getContentsForChannel(0);
	
	// If the input and output signals are the same, then there really isn't an input signal
	// In that case we don't modulate the oscillator with it
	if(&in == &out)
		hasModulation = false;
	else
		inSample = in.sampleVectors[0];

	while(vs--){
		// Move the play head
		index += indexDelta;
		
		// Apply modulation to the play head
		if(hasModulation)
			index += *inSample++ * attrSize / sr;
		
		// Wrap the play head
		if(index >= attrSize)	    		
			index -= attrSize;
		else if(index < 0)	    		
			index += attrSize;
		
		// table lookup (linear interpolation)	
		p1 = (TTUInt32)index;
		p2 = p1 + 1;
		diff = index - p1;	
		p2 &= (attrSize - 1);	// fast modulo
		
		tempSample = ((contents[p2] * diff) + (contents[p1] * (1.0 - diff))) * linearGain;
		for(channel=0; channel<numChannels; channel++)
			out.sampleVectors[channel][i] = tempSample;
		i++;
	}
	return kTTErrNone;
}
