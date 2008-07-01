/* 
 * TTBlue Audio Buffer Object 
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBuffer.h"


TTBuffer::TTBuffer()
	: TTDataObject("buffer"),
	contents(NULL),
	attrNumChannels(0),
	attrLength(0),
	attrLengthInSamples(0)
{
	registerAttribute(TT("numChannels"),		kTypeUInt16,	&attrNumChannels,	 	(TTSetterMethod)&TTBuffer::setNumChannels);
	registerAttribute(TT("length"),				kTypeFloat64,	&attrLength,		 	(TTSetterMethod)&TTBuffer::setLength);
	registerAttribute(TT("lengthInSamples"),	kTypeUInt64,	&attrLengthInSamples, 	(TTSetterMethod)&TTBuffer::setLengthInSamples);

	registerMessage(TT("clear"),		(TTMethod)&TTBuffer::clear, kTTMessagePassNone);
	registerMessage(TT("fill"),				(TTMethod)&TTBuffer::fill);
	registerMessage(TT("getValueAtIndex"),	(TTMethod)&TTBuffer::getValueAtIndex);
	registerMessage(TT("peek"),				(TTMethod)&TTBuffer::getValueAtIndex);
	registerMessage(TT("setValueAtIndex"),	(TTMethod)&TTBuffer::setValueAtIndex);
	registerMessage(TT("poke"),				(TTMethod)&TTBuffer::setValueAtIndex);

	registerMessage(TT("updateSr"),			(TTMethod)&TTBuffer::updateSr, kTTMessagePassNone);	// notification

	// TODO: more messages to implement
	//	"readFile"
	//	"writeFile"
	//	a way to query attributes: for example what is the sr and bpm of an AIFF file?
}


TTBuffer::~TTBuffer()
{
	chuck();
}


TTErr TTBuffer::init()
{
	if(attrNumChannels && attrLengthInSamples){
		contents = new TTSampleVector[attrNumChannels];
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++)
			contents[channel] = new TTSampleValue[attrLengthInSamples];
		clear();
	}
	return kTTErrNone;
}


TTErr TTBuffer::chuck()
{
	if(contents){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++)
			delete [] contents[channel];
		delete [] contents;
	}
	return kTTErrNone;
}


TTErr TTBuffer::setNumChannels(const TTValue& newNumChannels)
{
	TTUInt16 numChannels = newNumChannels;
	
	if(attrNumChannels != numChannels){
		chuck();
		attrNumChannels = numChannels;
		return init();
	}
	return kTTErrNone;
}


TTErr TTBuffer::setLength(const TTValue& newLength)
{
	TTFloat64 length = newLength;

	if(attrLength != length){
		chuck();
		attrLength = length;
		attrLengthInSamples = length * srMill;
		return init();
	}
	return kTTErrNone;
}


TTErr TTBuffer::setLengthInSamples(const TTValue& newLengthInSamples)
{
	TTUInt64 length = newLengthInSamples;

	if(attrLengthInSamples != length){
		chuck();
		attrLengthInSamples = length;
		attrLength = length * srInv * 1000.0;
		return init();
	}
	return kTTErrNone;
}


TTSampleVector TTBuffer::getContentsForChannel(TTUInt16 channel)
{
	return contents[channel];
}


TTErr TTBuffer::updateSr()
{
	// TODO: When this changes do we need to re-init the buffer?  Or resize it keeping the data?
	return kTTErrNone;
}


TTErr TTBuffer::clear()
{
	for(TTUInt16 channel=0; channel<attrNumChannels; channel++)
		memset(contents[channel], 0, sizeof(TTSampleValue) * attrLengthInSamples);
	return kTTErrNone;
}



TTErr TTBuffer::getValueAtIndex(TTValue& index)
{
	TTUInt32		sampleIndex;
	TTUInt16		sampleChannel = 0;
	TTSampleValue	sampleValue;
	TTUInt8			i = 0;
	TTErr			err;

	index.get(i++, sampleIndex);
	if(index.getNumValues() > 2)		// TODO: sure would be nice to change the name of this method to "size" or something...
		index.get(i++, sampleChannel);
	
	err = peek(sampleIndex, sampleChannel, sampleValue);
	if(!err)
		index.set(i++, sampleValue);
	return err;
}

TTErr TTBuffer::peek(const TTUInt64 index, const TTUInt16 channel, TTSampleValue& value)
{
	if(contents){
		// TODO: perhaps we should range check the input here first...
		value = contents[channel][index];
		return kTTErrNone;
	}
	return kTTErrGeneric;
}


/**	Set the sample value for a given index.
	The first number passed in the index parameter will be interpreted as the sample index.
	If there are three numbers passed, then the second number, if passed, will designate the channel index (defaults to zero).
	The final value will be used as the sample value that will be copied to the designated index.
*/
TTErr TTBuffer::setValueAtIndex(const TTValue& index)
{
	TTUInt32		sampleIndex;
	TTUInt16		sampleChannel = 0;
	TTSampleValue	sampleValue;
	TTUInt8			i = 0;

	index.get(i++, sampleIndex);
	if(index.getNumValues() > 2)
		index.get(i++, sampleChannel);
	index.get(i++, sampleValue);	
	
	return poke(sampleIndex, sampleChannel, sampleValue);
}

TTErr TTBuffer::poke(const TTUInt64 index, const TTUInt16 channel, const TTSampleValue value)
{
	if(contents){
		// TODO: perhaps we should range check the input here first...
		contents[channel][index] = value;
		return kTTErrNone;
	}
	return kTTErrGeneric;
}


// TODO: At some point it would be nice to add band-limited waveforms here...
TTErr TTBuffer::fill(const TTValue& value)
{
//	TTSymbol*	fillAlgorithm = value[0];
// FIXME: implement this once we get [] operators for TTValue;
	TTSymbol*	fillAlgorithm = value;
	
	if(fillAlgorithm == kTTSym_sine){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			for(TTUInt64 i=0; i<attrLengthInSamples; i++)
				contents[channel][i] = sin(kTTTwoPi * (i / (TTFloat64(attrLengthInSamples) - 1.0)));
		}
	}
	else if(fillAlgorithm == kTTSym_sineMod){							// (modulator version: ranges from 0.0 to 1.0, rather than -1.0 to 1.0)
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			for(TTUInt64 i=0; i<attrLengthInSamples; i++)
				contents[channel][i] = 0.5 + (0.5 * sin(kTTTwoPi * (i / (TTFloat64(attrLengthInSamples) - 1.0))));
		}
	}
	else if(fillAlgorithm == kTTSym_cosine){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			for(TTUInt64 i=0; i<attrLengthInSamples; i++)
				contents[channel][i] = cos(kTTTwoPi * (i / (TTFloat64(attrLengthInSamples) - 1.0)));
		}
	}
	else if(fillAlgorithm == kTTSym_cosineMod){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			for(TTUInt64 i=0; i<attrLengthInSamples; i++)
				contents[channel][i] = 0.5 + (0.5 * cos(kTTTwoPi * (i / (TTFloat64(attrLengthInSamples) - 1.0))));
		}
	}
	else if(fillAlgorithm == kTTSym_square){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			TTUInt64 i;
			for(i=0; i < (attrLengthInSamples/2); i++)
				contents[channel][i] = 1.0;
			for(i=i; i < attrLengthInSamples; i++)
				contents[channel][i] = -1.0;
		}
	}
	else if(fillAlgorithm == kTTSym_squareMod){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			TTUInt64 i;
			for(i=0; i < (attrLengthInSamples/2); i++)
				contents[channel][i] = 1.0;
			for(i=i; i < attrLengthInSamples; i++)
				contents[channel][i] = 0.0;
		}
	}
	else if(fillAlgorithm == kTTSym_triangle){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			TTUInt64 i, j;
			for(i=0; i < (attrLengthInSamples / 4); i++) 
				contents[channel][i] = TTFloat64(i) / (attrLengthInSamples / 4);
			for(j=i-1; i < (attrLengthInSamples / 2); i++, j--) 
				contents[channel][i] = contents[channel][j];
			for(j=0; i < attrLengthInSamples; i++, j++)	
				contents[channel][i] = 0.0 - contents[channel][j];
		}
	}
	else if(fillAlgorithm == kTTSym_triangleMod){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			TTUInt64 i, j;
			for(i=0; i < (attrLengthInSamples / 4); i++) 
				contents[channel][i] = 0.5 + TTFloat64(i) / (attrLengthInSamples / 4);
			for(j=i-1; i < (attrLengthInSamples / 2); i++, j--) 
				contents[channel][i] = contents[channel][j];
			for(j=0; i < attrLengthInSamples; i++, j++)	
				contents[channel][i] = 1.0 - contents[channel][j];
		}
	}
	else if(fillAlgorithm == kTTSym_ramp){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			for(TTUInt64 i=0; i<attrLengthInSamples; i++)
				contents[channel][i] = -1.0 + (2.0 * (float(i) / attrLengthInSamples));
		}
	}
	else if(fillAlgorithm == kTTSym_rampMod){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			for(TTUInt64 i=0; i<attrLengthInSamples; i++)
				contents[channel][i] = float(i) / attrLengthInSamples;
		}
	}
	else if(fillAlgorithm == kTTSym_sawtooth){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			TTUInt64 i, j;
			for(i=0, j=attrLengthInSamples-1; i<attrLengthInSamples; i++)
				contents[channel][j--] = -1.0 + (2.0 * (float(i) / attrLengthInSamples));
		}
	}
	else if(fillAlgorithm == kTTSym_sawtoothMod){
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			TTUInt64 i, j;
			for(i=0, j=attrLengthInSamples-1; i<attrLengthInSamples; i++)
				contents[channel][j--] = float(i) / attrLengthInSamples;
		}
	}
	
	/*	TODO: This was in the old TTBlue -- is it legit?
		 case k_padded_welch_512:				// FIXED 512 POINT WINDOW OF THE PADDED WELCH TYPE
		 for(i=0; i < 256; i++)
			contents[i] = tt_audio_base::lookup_half_paddedwelch[i];
		 for(j=i-1; i < 512;i++, j--){
			contents[i] = tt_audio_base::lookup_half_paddedwelch[j];
	*/
	
	// These algorithms also have parameters to set coefficients
	else if(fillAlgorithm == TT("gaussian")){
		TTFloat64	param1 = 1.0;	// TODO: find good defaults for this
		TTFloat64	param2 = 1.0;	// TODO: find good defaults for this
/*	FIXME: do this once Dave checks in the [] operator code for TTValue	
		if(value.getSize() > 1)
			param1 = value[1];
		if(TTValue.getSize() > 2)
			param2 = value[2];
*/
		for(TTUInt16 channel=0; channel<attrNumChannels; channel++){
			for(TTUInt64 i=0; i<attrLengthInSamples; i++){
// TODO: implement (and make sure this algorithm is legit):
//				temp = double(i) / (double(length_samples) - 1);
//				contents[i] = ((-1.0 * (temp - param2) * (temp - param2)) / (2 * param1 * param1)) / (param1 * sqrt(twopi));
//				contents[i] = contents[i] * 0.3133;	// scale it				
			}
		}
	}
	
	
	
	return kTTErrNone;
}

