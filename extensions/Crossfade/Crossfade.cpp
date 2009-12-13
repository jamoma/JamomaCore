/* 
 * TTBlue Signal Crossfader Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"

#define thisTTClass			TTCrossfade
#define thisTTClassName		"crossfade"
#define thisTTClassTags		"audio, processor, mixing"


static bool zeroed = false;
static TTSampleValue zeroVector1[2048]; //TODO: make this dynamically sized
static TTSampleValue zeroVector2[2048]; //TODO: make this dynamically sized
static TTSampleValue zeroVector3[2048]; //TODO: make this dynamically sized


/**	TTCrossfade in an audio processor that crossfades between two input signals.	
 
 In fact, this processor can work on a number of channels, provided that the number of input
 channels is twice the number of output channels.  In this case the first N/2 input channels are
 considered as the A source and the last N/2 input channels are considered the B source.
 */
class TTCrossfade : TTAudioObject {
	TTCLASS_SETUP(TTCrossfade)
	
	TTFloat64		position;	///< Use a range of 0.0 to 1.0 to specify a ratio of the B source to the A source.
	TTSymbol*		shape;		///< The shape attribute is set with a TTSymbol that is either "equalPower" (the default) or "linear"
	TTSymbol*		mode;		///< The mode attribute is set with a TTSymbol that is either "lookup" (the default) or "calculate"
	
	/** Utility used by the setters for setting up the process routine. */
	TTErr setProcessPointers();
	
	/**	The process method used when the shape attribute is set to "linear"	
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processLinear(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/** The process method used when the shape attribute is set to "equalPower" and the mode is set to "lookup"
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processEqualPowerLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processEqualPowerCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs); // calculate
	
	/** The process method used when the shape attribute is set to "squareRoot""
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processSquareRootCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processSquareRootLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Setter for the shape attribute. */
	TTErr setshape(const TTValue& value);
	
	/**	Setter for the mode attribute. */
	TTErr setmode(const TTValue& value);
};


TT_AUDIO_CONSTRUCTOR_EXPORT
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
{;}


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
		err = setProcess((TTProcessMethod)&TTCrossfade::processEqualPowerLookup);
	}
	else if(shape == TT("equalPower") && mode == TT("calculate")){
		err = setProcess((TTProcessMethod)&TTCrossfade::processEqualPowerCalc);
	}
	else if(shape == TT("squareRoot") && mode == TT("calculate")){
		err = setProcess((TTProcessMethod)&TTCrossfade::processSquareRootCalc);
	}
	else if(shape == TT("squareRoot") && mode == TT("lookup")){
		err = setProcess((TTProcessMethod)&TTCrossfade::processSquareRootLookup);
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


TTErr TTCrossfade::processEqualPowerLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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

TTErr TTCrossfade::processSquareRootLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
				*outSample++ = (*inSampleB++ * kTTLookupSquareRoot[511 - index]) + (*inSampleA++ * kTTLookupSquareRoot[index]);
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
				*outSample++ = (*inSampleB++ * kTTLookupSquareRoot[511 - index]) + (*inSampleA++ * kTTLookupSquareRoot[index]);
			}
		}
	}
	return kTTErrNone;
}

// TODO: Nils says that we should experiment here with (sin*sin) here so that we can sum to 1.0 in the center???
// It's worth experimenting with it....

TTErr TTCrossfade::processEqualPowerCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
				*outSample++ = (*inSampleB++ * (sin(position * kTTPi_2))) + (*inSampleA++ * (cos(position * kTTPi_2)));
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
				*outSample++ = (*inSampleB++ * (sin(position * kTTPi_2))) + (*inSampleA++ * (cos(position * kTTPi_2)));
		}
	}
	return kTTErrNone;
}

TTErr TTCrossfade::processSquareRootCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
				*outSample++ = (*inSampleB++ * (sqrt(position))) + (*inSampleA++ * (sqrt(1 - position)));
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
				*outSample++ = (*inSampleB++ * (sqrt(position))) + (*inSampleA++ * (sqrt(1 - position)));
		}
	}
	return kTTErrNone;
}

