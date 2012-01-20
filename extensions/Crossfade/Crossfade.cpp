/* 
 * TTBlue Signal Crossfader Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"

#define thisTTClass				TTCrossfade
#define thisTTClassName			"crossfade"
#define thisTTClassDescription	"Multichannel crossfader"
#define thisTTClassTags			"audio, processor, mixing"


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
	
	TTFloat64		mPosition;	///< Use a range of 0.0 to 1.0 to specify a ratio of the B source to the A source.
	TTSymbol*		mShape;		///< The shape attribute is set with a TTSymbol that is either "equalPower" (the default) or "linear"
	TTSymbol*		mMode;		///< The mode attribute is set with a TTSymbol that is either "lookup" (the default) or "calculate"
	
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
	TTErr setShape(const TTValue& value);
	
	/**	Setter for the mode attribute. */
	TTErr setMode(const TTValue& value);
};


TT_AUDIO_CONSTRUCTOR_EXPORT(Crossfade)
{
	addAttribute(			Position,	kTypeFloat64);
	addAttributeProperty(	Position,	range,			TTValue(0.0, 1.0));
	addAttributeProperty(	Position,	rangeChecking,	TT("clip"));
	addMessageProperty(		Position,	description,	TT("Sets the crossfader position."));

	
	addAttributeWithSetter(	Shape,	kTypeSymbol);
	addMessageProperty(		Shape,	description,	TT("Sets the crossfade function."));
	addAttributeWithSetter(	Mode,	kTypeSymbol);
	addMessageProperty(		Mode,	description,	TT("Wether the crossfader is based on a 512-point lookup table or on a real-time weight computation."));
	
	if (!zeroed) {
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


TTErr TTCrossfade::setShape(const TTValue& newValue)
{
	mShape = newValue;
	return setProcessPointers();
}


TTErr TTCrossfade::setMode(const TTValue& newValue)
{
	mMode = newValue;
	return setProcessPointers();
}


TTErr TTCrossfade::setProcessPointers()
{
	TTErr	err = kTTErrNone;
	
	if (mShape == TT("equalPower") && mMode == TT("lookup")) {
		err = setProcess((TTProcessMethod)&TTCrossfade::processEqualPowerLookup);
	}
	else if (mShape == TT("equalPower") && mMode == TT("calculate")) {
		err = setProcess((TTProcessMethod)&TTCrossfade::processEqualPowerCalc);
	}
	else if (mShape == TT("squareRoot") && mMode == TT("calculate")) {
		err = setProcess((TTProcessMethod)&TTCrossfade::processSquareRootCalc);
	}
	else if (mShape == TT("squareRoot") && mMode == TT("lookup")) {
		err = setProcess((TTProcessMethod)&TTCrossfade::processSquareRootLookup);
	}
	else {
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
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	
	if (inputs->numAudioSignals > 1) {
		TTAudioSignal&	in2 = inputs->getSignal(1);
		
		numchannels = TTAudioSignal::getMaxChannelCount(in, in2, out);;
		for (channel=0; channel<numchannels; channel++) {
			//		inSampleA = in1.mSampleVectors[channel];
			//		inSampleB = in2.mSampleVectors[channel];
			//		outSample = out.mSampleVectors[channel];
			if (channel < in.getNumChannelsAsInt())
				inSampleA = in.mSampleVectors[channel];
			else
				inSampleA = zeroVector1;
			
			if (channel < in2.getNumChannelsAsInt())
				inSampleB = in2.mSampleVectors[channel];
			else
				inSampleB = zeroVector2;
			
			if (channel < out.getNumChannelsAsInt())
				outSample = out.mSampleVectors[channel];
			else
				outSample = zeroVector3;		
			
			vs = in.getVectorSizeAsInt();
			
			while (vs--)
				*outSample++ = (*inSampleB++ * mPosition) + (*inSampleA++ * (1.0 - mPosition));
		}
		
	}
	else {		
		if (in.getNumChannelsAsInt() != out.getNumChannelsAsInt()*2)
			return kTTErrBadChannelConfig;
		
		for (channel=0; channel<numchannels; channel++) {
			inSampleA = in.mSampleVectors[channel];
			inSampleB = in.mSampleVectors[numchannels+channel];
			outSample = out.mSampleVectors[channel];
			vs = in.getVectorSizeAsInt();
			
			while (vs--)
				*outSample++ = (*inSampleB++ * mPosition) + (*inSampleA++ * (1.0 - mPosition));
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
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	int				index;
	
	if (inputs->numAudioSignals > 1) {
		TTAudioSignal&	in2 = inputs->getSignal(1);
		
		numchannels = TTAudioSignal::getMaxChannelCount(in, in2, out);;
		for (channel=0; channel<numchannels; channel++) {
			if (channel < in.getNumChannelsAsInt())
				inSampleA = in.mSampleVectors[channel];
			else
				inSampleA = zeroVector1;
			
			if (channel < in2.getNumChannelsAsInt())
				inSampleB = in2.mSampleVectors[channel];
			else
				inSampleB = zeroVector2;
			
			if (channel < out.getNumChannelsAsInt())
				outSample = out.mSampleVectors[channel];
			else
				outSample = zeroVector3;
			
			vs = in.getVectorSizeAsInt();
			
			while (vs--) {
				index = (int)(mPosition * 511.0);
				*outSample++ = (*inSampleB++ * kTTLookupEqualPower[511 - index]) + (*inSampleA++ * kTTLookupEqualPower[index]);
			}
		}
		return kTTErrNone;
	}
	else {
		if (in.getNumChannelsAsInt() != out.getNumChannelsAsInt()*2)
			return kTTErrBadChannelConfig;
		
		for (channel=0; channel<numchannels; channel++) {
			inSampleA = in.mSampleVectors[channel];
			inSampleB = in.mSampleVectors[numchannels+channel];
			outSample = out.mSampleVectors[channel];
			vs = in.getVectorSizeAsInt();
			
			while (vs--) {
				index = (int)(mPosition * 511.0);
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
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	int				index;
	
	if (inputs->numAudioSignals > 1) {
		TTAudioSignal&	in2 = inputs->getSignal(1);
		
		numchannels = TTAudioSignal::getMaxChannelCount(in, in2, out);;
		for (channel=0; channel<numchannels; channel++) {
			if (channel < in.getNumChannelsAsInt())
				inSampleA = in.mSampleVectors[channel];
			else
				inSampleA = zeroVector1;
			
			if (channel < in2.getNumChannelsAsInt())
				inSampleB = in2.mSampleVectors[channel];
			else
				inSampleB = zeroVector2;
			
			if (channel < out.getNumChannelsAsInt())
				outSample = out.mSampleVectors[channel];
			else
				outSample = zeroVector3;
			
			vs = in.getVectorSizeAsInt();
			
			while (vs--) {
				index = (int)(mPosition * 511.0);
				*outSample++ = (*inSampleB++ * kTTLookupSquareRoot[511 - index]) + (*inSampleA++ * kTTLookupSquareRoot[index]);
			}
		}
		return kTTErrNone;
	}
	else {
		if (in.getNumChannelsAsInt() != out.getNumChannelsAsInt()*2)
			return kTTErrBadChannelConfig;
		
		for (channel=0; channel<numchannels; channel++) {
			inSampleA = in.mSampleVectors[channel];
			inSampleB = in.mSampleVectors[numchannels+channel];
			outSample = out.mSampleVectors[channel];
			vs = in.getVectorSizeAsInt();
			
			while (vs--) {
				index = (int)(mPosition * 511.0);
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
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTFloat64		radPosition;
	
	if (inputs->numAudioSignals > 1) {
		TTAudioSignal&	in2 = inputs->getSignal(1);
		
		numchannels = TTAudioSignal::getMinChannelCount(in, in2, out);
		for (channel=0; channel<numchannels; channel++) {
			inSampleA = in.mSampleVectors[channel];
			inSampleB = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in.getVectorSizeAsInt();
			
			while (vs--)
			{
				radPosition = mPosition * kTTHalfPi;
				*outSample++ = (*inSampleB++ * (sin(radPosition))) + (*inSampleA++ * (cos(radPosition)));
			}
		}
		
	}
	else {	
		if (in.getNumChannelsAsInt() != out.getNumChannelsAsInt()*2)
			return kTTErrBadChannelConfig;
		
		for (channel=0; channel<numchannels; channel++) {
			inSampleA = in.mSampleVectors[channel];
			inSampleB = in.mSampleVectors[numchannels+channel];
			outSample = out.mSampleVectors[channel];
			vs = in.getVectorSizeAsInt();
			
			while (vs--)
			{
				radPosition = mPosition * kTTHalfPi;
				*outSample++ = (*inSampleB++ * (sin(radPosition))) + (*inSampleA++ * (cos(radPosition)));
			}
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
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	
	if (inputs->numAudioSignals > 1) {
		TTAudioSignal&	in2 = inputs->getSignal(1);
		
		numchannels = TTAudioSignal::getMinChannelCount(in, in2, out);
		for (channel=0; channel<numchannels; channel++) {
			inSampleA = in.mSampleVectors[channel];
			inSampleB = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in.getVectorSizeAsInt();
			
			while (vs--)
				*outSample++ = (*inSampleB++ * (sqrt(mPosition))) + (*inSampleA++ * (sqrt(1 - mPosition)));
		}
		
	}
	else {	
		if (in.getNumChannelsAsInt() != out.getNumChannelsAsInt()*2)
			return kTTErrBadChannelConfig;
		
		for (channel=0; channel<numchannels; channel++) {
			inSampleA = in.mSampleVectors[channel];
			inSampleB = in.mSampleVectors[numchannels+channel];
			outSample = out.mSampleVectors[channel];
			vs = in.getVectorSizeAsInt();
			
			while (vs--)
				*outSample++ = (*inSampleB++ * (sqrt(mPosition))) + (*inSampleA++ * (sqrt(1 - mPosition)));
		}
	}
	return kTTErrNone;
}

