/* 
 * TTBlue Signal Crossfader Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTCrossfade.h"
#define thisTTClass TTCrossfade

static bool zeroed = false;
static TTSampleValue zeroVector1[2048]; //TODO: make this dynamically sized
static TTSampleValue zeroVector2[2048]; //TODO: make this dynamically sized
static TTSampleValue zeroVector3[2048]; //TODO: make this dynamically sized


TTCrossfade::TTCrossfade(TTUInt16 newMaxNumChannels)
	: TTAudioObject("audio.crossfade", newMaxNumChannels)
{
	registerAttributeSimple(position,	kTypeFloat64);
	addAttributeProperty(position,		range,			TTValue(0.0, 1.0));
	addAttributeProperty(position,		rangeChecking,	TT("clip"));

	registerAttributeWithSetter(shape,	kTypeSymbol);
	registerAttributeWithSetter(mode,	kTypeSymbol);

	if(!zeroed){
		memset(zeroVector1, 0, sizeof(TTSampleValue) * 2048);
		memset(zeroVector2, 0, sizeof(TTSampleValue) * 2048);
		memset(zeroVector3, 0, sizeof(TTSampleValue) * 2048);
	}
	
	// Set Defaults (the attribute setters will set the process method for us)...
	setAttributeValue(TT("position"),	0.5);
	setAttributeValue(TT("shape"),		TT("equalPower"));
	setAttributeValue(TT("mode"),		TT("lookup"));
}


TTCrossfade::~TTCrossfade()
{
	;
}


TTErr TTCrossfade::setshape(const TTValue& newValue)
{
	shape = newValue;
	return setProcessPointers();
}


TTErr TTCrossfade::setmode(const TTValue& newValue)
{
	mode = newValue;
	return setProcessPointers();
}


TTErr TTCrossfade::setProcessPointers()
{
	TTErr	err = kTTErrNone;
	
	if(shape == TT("equalPower") && mode == TT("lookup")){
		err = setProcess((TTProcessMethod)&TTCrossfade::processLookup);
	}
	else if(shape == TT("equalPower") && mode == TT("calculate")){
		err = setProcess((TTProcessMethod)&TTCrossfade::processCalc);
	}
	else{
		err = setProcess((TTProcessMethod)&TTCrossfade::processLinear);
	}
	return err;
}


#if 0
#pragma mark -
#pragma mark Interleaved Process Methods
#endif

TTErr TTCrossfade::processLinear(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSampleA,
					*inSampleB,
					*outSample;
	TTUInt16		numchannels = out.getNumChannels();
	TTUInt16		channel;
	
	if(inputs->numAudioSignals > 1){
		TTAudioSignal&	in2 = inputs->getSignal(1);
		
		numchannels = TTAudioSignal::getMaxChannelCount(in, in2, out);;
		for(channel=0; channel<numchannels; channel++){
			//		inSampleA = in1.sampleVectors[channel];
			//		inSampleB = in2.sampleVectors[channel];
			//		outSample = out.sampleVectors[channel];
			if(channel < in.getNumChannels())
				inSampleA = in.sampleVectors[channel];
			else
				inSampleA = zeroVector1;
			
			if(channel < in2.getNumChannels())
				inSampleB = in2.sampleVectors[channel];
			else
				inSampleB = zeroVector2;
			
			if(channel < out.getNumChannels())
				outSample = out.sampleVectors[channel];
			else
				outSample = zeroVector3;		
			
			vs = in.getVectorSize();
			
			while(vs--)
				*outSample++ = (*inSampleB++ * position) + (*inSampleA++ * (1.0 - position));
		}
		
	}
	else{		
		if(in.getNumChannels() != out.getNumChannels()*2)
			return kTTErrBadChannelConfig;

		for(channel=0; channel<numchannels; channel++){
			inSampleA = in.sampleVectors[channel];
			inSampleB = in.sampleVectors[numchannels+channel];
			outSample = out.sampleVectors[channel];
			vs = in.getVectorSize();
			
			while(vs--)
				*outSample++ = (*inSampleB++ * position) + (*inSampleA++ * (1.0 - position));
		}
	}
	return kTTErrNone;
}


TTErr TTCrossfade::processLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSampleA,
					*inSampleB,
					*outSample;
	TTUInt16		numchannels = out.getNumChannels();
	TTUInt16		channel;
	int				index;
	
	if(inputs->numAudioSignals > 1){
		TTAudioSignal&	in2 = inputs->getSignal(1);

		numchannels = TTAudioSignal::getMaxChannelCount(in, in2, out);;
		for(channel=0; channel<numchannels; channel++){
			if(channel < in.getNumChannels())
				inSampleA = in.sampleVectors[channel];
			else
				inSampleA = zeroVector1;
			
			if(channel < in2.getNumChannels())
				inSampleB = in2.sampleVectors[channel];
			else
				inSampleB = zeroVector2;
			
			if(channel < out.getNumChannels())
				outSample = out.sampleVectors[channel];
			else
				outSample = zeroVector3;
			
			vs = in.getVectorSize();
			
			while(vs--){
				index = (int)(position * 511.0);
				*outSample++ = (*inSampleB++ * kTTLookupEqualPower[511 - index]) + (*inSampleA++ * kTTLookupEqualPower[index]);
			}
		}
		return kTTErrNone;
	}
	else{
		if(in.getNumChannels() != out.getNumChannels()*2)
			return kTTErrBadChannelConfig;

		for(channel=0; channel<numchannels; channel++){
			inSampleA = in.sampleVectors[channel];
			inSampleB = in.sampleVectors[numchannels+channel];
			outSample = out.sampleVectors[channel];
			vs = in.getVectorSize();
			
			while(vs--){
				index = (int)(position * 511.0);
				*outSample++ = (*inSampleB++ * kTTLookupEqualPower[511 - index]) + (*inSampleA++ * kTTLookupEqualPower[index]);
			}
		}
	}
	return kTTErrNone;
}


// TODO: Nils says that we should experiment here with (sin*sin) here so that we can sum to 1.0 in the center???
// It's worth experimenting with it....

TTErr TTCrossfade::processCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSampleA,
					*inSampleB,
					*outSample;
	TTUInt16		numchannels = out.getNumChannels();
	TTUInt16		channel;
	
	if(inputs->numAudioSignals > 1){
		TTAudioSignal&	in2 = inputs->getSignal(1);

		numchannels = TTAudioSignal::getMinChannelCount(in, in2, out);
		for(channel=0; channel<numchannels; channel++){
			inSampleA = in.sampleVectors[channel];
			inSampleB = in2.sampleVectors[channel];
			outSample = out.sampleVectors[channel];
			vs = in.getVectorSize();
			
			while(vs--)
				*outSample++ = (*inSampleB++ * (sin(position * 1.5707963))) + (*inSampleA++ * (sin((1 - position) * 1.5707963)));
		}
		
	}
	else{	
		if(in.getNumChannels() != out.getNumChannels()*2)
			return kTTErrBadChannelConfig;

		for(channel=0; channel<numchannels; channel++){
			inSampleA = in.sampleVectors[channel];
			inSampleB = in.sampleVectors[numchannels+channel];
			outSample = out.sampleVectors[channel];
			vs = in.getVectorSize();
			
			while(vs--)
				*outSample++ = (*inSampleB++ * (sin(position * 1.5707963))) + (*inSampleA++ * (sin((1 - position) * 1.5707963)));
		}
	}
	return kTTErrNone;
}

