/* 
 * Panorama Object
 * Copyright © 2008-11, Timothy Place, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPanorama.h"

#define thisTTClass			TTPanorama
#define thisTTClassName		"panorama"
#define thisTTClassTags		"dspEffectsLib, audio, processor, mixing, panning"


TT_AUDIO_CONSTRUCTOR,
mPosition(0.0),
mScaledPosition(0.5),
mShape(TT("equalPower")),
mMode(TT("lookup"))
{
	addAttributeWithSetter(			Position,	kTypeFloat64);
	addAttributeProperty(	Position,	range,			TTValue(-1.0, 1.0));
	addAttributeProperty(	Position,	rangeChecking,	TT("clip"));
	
	addAttributeWithSetter(	Shape,	kTypeSymbol);
	addAttributeWithSetter(	Mode,	kTypeSymbol);
	
	/*if (!zeroed) {
		memset(zeroVector1, 0, sizeof(TTSampleValue) * 2048);
		memset(zeroVector2, 0, sizeof(TTSampleValue) * 2048);
		memset(zeroVector3, 0, sizeof(TTSampleValue) * 2048);
	}*/
	
	// Set Defaults (the attribute setters will set the process method for us)...
	setAttributeValue(TT("position"),	0.0);
	setProcessMethod(processEqualPowerLookup);
	setAttributeValue(TT("mode"),		TT("lookup"));
	setAttributeValue(TT("shape"),		TT("equalPower"));
}


TTPanorama::~TTPanorama()
{;}


TTErr TTPanorama::setShape(const TTValue& newValue)
{
	mShape = newValue;
	return setProcessPointers();
}


TTErr TTPanorama::setMode(const TTValue& newValue)
{
	mMode = newValue;
	return setProcessPointers();
}

TTErr TTPanorama::setPosition(const TTValue& newValue)
{
	mPosition = newValue;
	mScaledPosition = 0.5*(mPosition+1);
	return kTTErrNone;
}


TTErr TTPanorama::setProcessPointers()
{
	TTErr	err = kTTErrNone;
	
	if (mShape == TT("equalPower") && mMode == TT("lookup")) {
		err = setProcessMethod(processEqualPowerLookup);
	}
	else if (mShape == TT("equalPower") && mMode == TT("calculate")) {
		err = setProcessMethod(processEqualPowerCalc);
	}
	else if (mShape == TT("squareRoot") && mMode == TT("calculate")) {
		err = setProcessMethod(processSquareRootCalc);
	}
	else if (mShape == TT("squareRoot") && mMode == TT("lookup")) {
		err = setProcessMethod(processSquareRootLookup);
	}
	else {
		err = setProcessMethod(processLinear);
	}
	return err;
}


#if 0
#pragma mark -
#pragma mark Interleaved Process Methods
#endif

TTErr TTPanorama::processLinear(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in				= inputs->getSignal(0);
	TTAudioSignal&	out				= outputs->getSignal(0);
	TTUInt16		vs				= in.getVectorSizeAsInt();
	TTUInt16		numOutChannels	= out.getNumChannelsAsInt();
	TTUInt16		numInChannels	= in.getNumChannelsAsInt();
	
	if (numOutChannels < 2)
		out.setMaxNumChannels(2);
	
	TTSampleValuePtr     inSampleA			=  in.mSampleVectors[0];
	TTSampleValuePtr	outSampleA    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleB			= out.mSampleVectors[1];
	
	
	if (numInChannels > 1) { //panning a stereo source
		TTSampleValuePtr	inSampleB		= in.mSampleVectors[1];
		while (vs--){
			*outSampleA++ = (*inSampleA++ * (1.0 - mScaledPosition));
			*outSampleB++ = (*inSampleB++ * mScaledPosition);
		}
	}
	else{ // single channel input
		while (vs--){
			*outSampleA++ = (*inSampleA * (1.0 - mScaledPosition));
			*outSampleB++ = (*inSampleA++ * mScaledPosition);
		}
	}		
	return kTTErrNone;
}


TTErr TTPanorama::processEqualPowerLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();
	int				index= (int)(mScaledPosition * 510.0);
	TTUInt16		numOutChannels	= out.getNumChannelsAsInt();
	TTUInt16		numInChannels	= in.getNumChannelsAsInt();
	
	if (numOutChannels < 2)
		out.setMaxNumChannels(2);	
	
	TTSampleValuePtr	inSampleA			=  in.mSampleVectors[0];
	TTSampleValuePtr	outSampleA    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleB			= out.mSampleVectors[1];
	
	
	if (numInChannels > 1) { //panning a stereo source
		TTSampleValuePtr	inSampleB		= in.mSampleVectors[1];
		while (vs--){
			*outSampleA++ = (*inSampleA++ * kTTLookupEqualPowerSymetric[index]);
			*outSampleB++ = (*inSampleB++ * kTTLookupEqualPowerSymetric[510 - index]);
		}
	}
	else{ // single channel input
		while (vs--){
			*outSampleA++ = (*inSampleA * kTTLookupEqualPowerSymetric[index]);
			*outSampleB++ = (*inSampleA++ * kTTLookupEqualPowerSymetric[510 - index]);
		}
	}	
	return kTTErrNone;
}


TTErr TTPanorama::processSquareRootLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();
	int				index= (int)(mScaledPosition * 510.0);
	TTUInt16		numOutChannels	= out.getNumChannelsAsInt();
	TTUInt16		numInChannels	= in.getNumChannelsAsInt();
	
	if (numOutChannels < 2)
		out.setMaxNumChannels(2);	
	
	TTSampleValuePtr	inSampleA			=  in.mSampleVectors[0];
	TTSampleValuePtr	outSampleA    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleB			= out.mSampleVectors[1];
	
	
	if (numInChannels > 1) { //panning a stereo source
		TTSampleValuePtr	inSampleB		= in.mSampleVectors[1];
		while (vs--){
			*outSampleA++ = (*inSampleA++ * kTTLookupSquareRootSymetric[index]);
			*outSampleB++ = (*inSampleB++ * kTTLookupSquareRootSymetric[510 - index]);
		}
	}
	else{ // single channel input
		while (vs--){
			*outSampleA++ = (*inSampleA * kTTLookupSquareRootSymetric[index]);
			*outSampleB++ = (*inSampleA++ * kTTLookupSquareRootSymetric[510 - index]);
		}
	}	
	
	return kTTErrNone;
}


TTErr TTPanorama::processEqualPowerCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();	
	TTFloat64		radPosition = mScaledPosition * kTTHalfPi;	
	TTUInt16		numOutChannels	= out.getNumChannelsAsInt();
	TTUInt16		numInChannels	= in.getNumChannelsAsInt();
	
	if (numOutChannels < 2)
		out.setMaxNumChannels(2);	
	
	TTSampleValuePtr	inSampleA			=  in.mSampleVectors[0];
	TTSampleValuePtr	outSampleA    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleB			= out.mSampleVectors[1];
	
	
	if (numInChannels > 1) { //panning a stereo source
		TTSampleValuePtr	inSampleB		= in.mSampleVectors[1];
		while (vs--){
			*outSampleA++ = (*inSampleA++ * cos(radPosition));
			*outSampleB++ = (*inSampleB++ * sin(radPosition));
		}
	}
	else{ // single channel input
		while (vs--){
			*outSampleA++ = (*inSampleA * cos(radPosition));
			*outSampleB++ = (*inSampleA++ * sin(radPosition));
		}
	}		
	return kTTErrNone;
}

TTErr TTPanorama::processSquareRootCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();
	TTUInt16		numOutChannels	= out.getNumChannelsAsInt();
	TTUInt16		numInChannels	= in.getNumChannelsAsInt();
	
	if (numOutChannels < 2)
		out.setMaxNumChannels(2);	
	
	TTSampleValuePtr	inSampleA			=  in.mSampleVectors[0];
	TTSampleValuePtr	outSampleA    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleB			= out.mSampleVectors[1];
	
	
	if (numInChannels > 1) { //panning a stereo source
		TTSampleValuePtr	inSampleB		= in.mSampleVectors[1];
		while (vs--){
			*outSampleA++ = (*inSampleA++ * sqrt(1 - mScaledPosition));
			*outSampleB++ = (*inSampleB++ * sqrt(mScaledPosition));
		}
	}
	else{ // single channel input
		while (vs--){
			*outSampleA++ = (*inSampleA * sqrt(1 - mScaledPosition));
			*outSampleB++ = (*inSampleA++ * sqrt(mScaledPosition));
		}
	}		
	return kTTErrNone;
}