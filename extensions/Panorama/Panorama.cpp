/* 
 * Panorama Object
 * Copyright © 2008-11, Timothy Place, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"

#define thisTTClass			TTPanorama
#define thisTTClassName		"panorama"
#define thisTTClassTags		"audio, processor, mixing"


/*static bool zeroed = false;
static TTSampleValue zeroVector1[2048]; //TODO: make this dynamically sized
static TTSampleValue zeroVector2[2048]; //TODO: make this dynamically sized
static TTSampleValue zeroVector3[2048]; //TODO: make this dynamically sized*/


//	TTPanorama in PANNER (1 INPUT / 2 OUTPUTS)	
 
class TTPanorama : TTAudioObject {
	TTCLASS_SETUP(TTPanorama)
	
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


TT_AUDIO_CONSTRUCTOR_EXPORT(Panorama)
{
	addAttribute(			Position,	kTypeFloat64);
	addAttributeProperty(	Position,	range,			TTValue(0.0, 1.0));
	addAttributeProperty(	Position,	rangeChecking,	TT("clip"));
	
	addAttributeWithSetter(	Shape,	kTypeSymbol);
	addAttributeWithSetter(	Mode,	kTypeSymbol);
	
	/*if (!zeroed) {
		memset(zeroVector1, 0, sizeof(TTSampleValue) * 2048);
		memset(zeroVector2, 0, sizeof(TTSampleValue) * 2048);
		memset(zeroVector3, 0, sizeof(TTSampleValue) * 2048);
	}*/
	
	// Set Defaults (the attribute setters will set the process method for us)...
	setAttributeValue(TT("position"),	0.5);
	setAttributeValue(TT("shape"),		TT("equalPower"));
	setAttributeValue(TT("mode"),		TT("lookup"));
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
			*outSampleA++ = (*inSampleA++ * (1.0 - mPosition));
			*outSampleB++ = (*inSampleB++ * mPosition);
		}
	}
	else{ // single channel input
		while (vs--){
			*outSampleA++ = (*inSampleA * (1.0 - mPosition));
			*outSampleB++ = (*inSampleA++ * mPosition);
		}
	}		
	return kTTErrNone;
}


TTErr TTPanorama::processEqualPowerLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();
	int				index= (int)(mPosition * 511.0);
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
			*outSampleA++ = (*inSampleA++ * kTTLookupEqualPower[index]);
			*outSampleB++ = (*inSampleB++ * kTTLookupEqualPower[511 - index]);
		}
	}
	else{ // single channel input
		while (vs--){
			*outSampleA++ = (*inSampleA * kTTLookupEqualPower[index]);
			*outSampleB++ = (*inSampleA++ * kTTLookupEqualPower[511 - index]);
		}
	}	
	return kTTErrNone;
}


TTErr TTPanorama::processSquareRootLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();
	int				index= (int)(mPosition * 511.0);
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
			*outSampleA++ = (*inSampleA++ * kTTLookupSquareRoot[index]);
			*outSampleB++ = (*inSampleB++ * kTTLookupSquareRoot[511 - index]);
		}
	}
	else{ // single channel input
		while (vs--){
			*outSampleA++ = (*inSampleA * kTTLookupSquareRoot[index]);
			*outSampleB++ = (*inSampleA++ * kTTLookupSquareRoot[511 - index]);
		}
	}	
	
	return kTTErrNone;
}


TTErr TTPanorama::processEqualPowerCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();	
	TTFloat64		radPosition = mPosition * kTTHalfPi;	
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
			*outSampleA++ = (*inSampleA++ * sqrt(1 - mPosition));
			*outSampleB++ = (*inSampleB++ * sqrt(mPosition));
		}
	}
	else{ // single channel input
		while (vs--){
			*outSampleA++ = (*inSampleA * sqrt(1 - mPosition));
			*outSampleB++ = (*inSampleA++ * sqrt(mPosition));
		}
	}		
	return kTTErrNone;
}