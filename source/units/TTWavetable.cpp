/* 
 * TTBlue Wavetable Oscillator
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTWavetable.h"


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
	
	registerMessage(TT("updateSr"),				(TTMethod)&TTWavetable::updateSr, kTTMessagePassNone);

	wavetable = new TTBuffer;
	wavetable->setNumChannels(1);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setAttributeValue(TT("size"), 4096);
	setAttributeValue(TT("mode"), kTTSym_sine);
	setAttributeValue(TT("frequency"), 440.0);
	setAttributeValue(TT("gain"), 0.0);			// 0 dB
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
		return kTTErrGeneric;
	}
}


TTErr TTWavetable::setInterpolation(const TTValue& newValue)
{
	attrMode = newValue;
	if(attrMode == TT("linear"))
		setProcess((TTProcessMethod)&TTWavetable::processWithLinearInterpolation);
	else
		setProcess((TTProcessMethod)&TTWavetable::processWithNoInterpolation);
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
	return wavetable->setLengthInSamples(attrSize);
}


TTErr TTWavetable::processWithNoInterpolation(TTAudioSignal& in, TTAudioSignal& out)
{
	// TODO: implement
	return kTTErrGeneric;
}


TTErr TTWavetable::processWithLinearInterpolation(TTAudioSignal& in, TTAudioSignal& out)
{
	TTSampleValue	*inSample;
	TTSampleValue	*outSample;
	TTUInt16		vs;
	TTUInt16		numChannels = out.getNumChannels();
	TTUInt16		channel;
	TTBoolean		hasModulation = true;
	TTInt32			p1, p2;									// two playback indices
	TTFloat64		diff;
	TTSampleVector	contents = wavetable->getContentsForChannel(0);
	
	// If the input and output signals are the same, then there really isn't an input signal
	// In that case we don't modulate the oscillator with it
	if(&in == &out)
		hasModulation = false;
	
	for(channel=0; channel<numChannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--){
			// Move the play head
			index += indexDelta;
			
			if(hasModulation)	// Apply modulation to the play head
				index += *inSample++ * attrSize / sr;
			
			// Wrap the play head
			if(index >= attrSize)	    		
				index -= attrSize;
			else if(index < 0)	    		
				index += attrSize;
			
			// table lookup (linear interpolation)	
			p1 = (unsigned long)index;
			p2 = p1 + 1;
			diff = index - p1;	
			p2 &= (attrSize - 1);	// fast modulo
			
			*outSample++ = ((contents[p2] * diff) + (contents[p1] * (1.0 - diff))) * linearGain;
		}
	}
	return kTTErrNone;
	
}
