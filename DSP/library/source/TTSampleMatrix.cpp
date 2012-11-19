/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Container object that holds some audio in a chunk of memory.
 * 
 * @see TTMatrix, TTAudioSignal
 *  
 * @authors Timothy Place & Nathan Wolek
 *
 * @copyright Copyright © 2003-2012, Timothy Place & Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSampleMatrix.h"

#define thisTTClass			TTSampleMatrix
#define thisTTClassName		"samplematrix"
#define thisTTClassTags		"audio, buffer"

TTObjectPtr TTSampleMatrix::instantiate(TTSymbol& name, TTValue& arguments)
{
	return new TTSampleMatrix(arguments);
}


extern "C" void TTSampleMatrix::registerClass() 
{
	TTClassRegister(thisTTClassName, thisTTClassTags, TTSampleMatrix::instantiate);
}


TTSampleMatrix::TTSampleMatrix(TTValue& arguments) : 
	TTMatrix(arguments),
	mSampleRate(44100.0)
{
	this->setTypeWithoutResize(kTypeFloat64);
	this->setElementCountWithoutResize(1);
	this->resize();

	addAttributeWithGetterAndSetter(NumChannels,		kTypeInt32);
	addAttributeWithGetterAndSetter(Length,				kTypeFloat64);
	addAttributeWithGetterAndSetter(LengthInSamples,	kTypeInt32);
	addAttribute(SampleRate,							kTypeFloat64);
	
	addMessage(normalize);
	addMessageWithArguments(fill);

	addMessageWithArguments(getValueAtIndex);
	registerMessage("peek", (TTMethod)&TTSampleMatrix::getValueAtIndex);
	registerMessage("peeki", (TTMethod)&TTSampleMatrix::getValueAtIndex);

	addMessageWithArguments(setValueAtIndex);
	registerMessage("poke", (TTMethod)&TTSampleMatrix::setValueAtIndex);

	// TODO: more messages to implement
	//	"readFile"   (requires libsndfile straightening-out)
	//	"writeFile"  (requires libsndfile straightening-out)
	//	a way to query attributes: for example what is the sr and bpm of an AIFF file?
}


TTSampleMatrix::~TTSampleMatrix()
{
	;
}


TTErr TTSampleMatrix::setNumChannels(const TTValue& newNumChannels)
{
	return setColumnCount(newNumChannels);
}


TTErr TTSampleMatrix::getNumChannels(TTValue& returnedChannelCount)
{
	returnedChannelCount = mNumChannels;
	return kTTErrNone;
}


TTErr TTSampleMatrix::setLength(const TTValue& newLength)
{
	TTValue newLengthInSamples = TTFloat64(newLength) * mSampleRate * 0.001;
	return setRowCount(newLengthInSamples);
}


TTErr TTSampleMatrix::getLength(TTValue& returnedLength)
{
	returnedLength = (mLengthInSamples / mSampleRate) * 1000.0;
	return kTTErrNone;
}


TTErr TTSampleMatrix::setLengthInSamples(const TTValue& newLengthInSamples)
{
	return setRowCount(newLengthInSamples);
}


TTErr TTSampleMatrix::getLengthInSamples(TTValue& returnedLengthInSamples)
{
	returnedLengthInSamples = mLengthInSamples;
	return kTTErrNone;
}


TTErr TTSampleMatrix::getValueAtIndex(const TTValue& index, TTValue &output)
{
	TTUInt32		sampleIndex;
	TTUInt16		sampleChannel = 0;
	TTSampleValue	sampleValue;
	TTUInt8			i = 0;
	TTErr			err;

	index.get(i++, sampleIndex);
	if (index.getSize() > 2)		// TODO: sure would be nice to change the name of this method to "size" or something...
		index.get(i++, sampleChannel);

	err = peek(sampleIndex, sampleChannel, sampleValue);
	if (!err)
		output.set(i++, sampleValue);
	return err;
}

TTErr TTSampleMatrix::peek(const TTUInt64 index, const TTUInt16 channel, TTSampleValue& value)
{
	TTRowID p_index = index;
	TTColumnID p_channel = channel;
	
	//makeInBounds(p_index, p_channel);
	get2d(p_index, p_channel, value);
	return kTTErrNone;
}

// a first attempt at interpolation for the SampleMatrix. should be viewed as temporary.
// needs to be fleshed out with different options...
TTErr TTSampleMatrix::peeki(const TTFloat64 index, const TTUInt16 channel, TTSampleValue& value)
{
	
	// variables needed
	TTUInt64 indexThisInteger = TTUInt64(index);
	TTUInt64 indexNextInteger = indexThisInteger + 1;
	TTFloat64 indexFractionalPart = index - indexThisInteger;
	
	TTSampleValue valueThisInteger, valueNextInteger;
	
	// TODO: perhaps we should range check the input here first...
	get2d(indexThisInteger, channel, valueThisInteger);
	get2d(indexNextInteger, channel, valueNextInteger);
	
	// simple linear interpolation adapted from TTDelay
	value = (valueNextInteger * (1.0 - indexFractionalPart)) + (valueThisInteger * indexFractionalPart);
	
	return kTTErrNone;
	
}

/**	Set the sample value for a given index.
	The first number passed in the index parameter will be interpreted as the sample index.
	If there are three numbers passed, then the second number, if passed, will designate the channel index (defaults to zero).
	The final value will be used as the sample value that will be copied to the designated index.
*/
TTErr TTSampleMatrix::setValueAtIndex(const TTValue& index, TTValue& unusedOutput)
{
	TTUInt32		sampleIndex;
	TTUInt16		sampleChannel = 0;
	TTSampleValue	sampleValue;
	TTUInt8			i = 0;

	index.get(i++, sampleIndex);
	if (index.getSize() > 2)
		index.get(i++, sampleChannel);
	index.get(i++, sampleValue);

	return poke(sampleIndex, sampleChannel, sampleValue);
}

TTErr TTSampleMatrix::poke(const TTUInt64 index, const TTUInt16 channel, const TTSampleValue value)
{
	// TODO: perhaps we should range check the input here first...
	set2d(index, channel, value);
	return kTTErrNone;
}


TTErr TTSampleMatrix::fill(const TTValue& value, TTValue& unusedOutput)
{
	TTSymbol	fillAlgorithm = value;

	if (fillAlgorithm == kTTSym_sine) {
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (TTUInt64 i=0; i<mLengthInSamples; i++)
				set2d(i+1, channel+1, sin(kTTTwoPi * (i / (TTFloat64(mLengthInSamples) - 1.0))));
		}
	}
	else if (fillAlgorithm == kTTSym_sineMod) {							// (modulator version: ranges from 0.0 to 1.0, rather than -1.0 to 1.0)
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (TTUInt64 i=0; i<mLengthInSamples; i++)
				set2d(i+1, channel+1, 0.5 + (0.5 * sin(kTTTwoPi * (i / (TTFloat64(mLengthInSamples) - 1.0)))));
		}
	}
	else if (fillAlgorithm == kTTSym_cosine) {
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (TTUInt64 i=0; i<mLengthInSamples; i++)
				set2d(i+1, channel+1, cos(kTTTwoPi * (i / (TTFloat64(mLengthInSamples) - 1.0))));
		}
	}
	else if (fillAlgorithm == kTTSym_cosineMod) {
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (TTUInt64 i=0; i<mLengthInSamples; i++)
				set2d(i+1, channel+1, 0.5 + (0.5 * cos(kTTTwoPi * (i / (TTFloat64(mLengthInSamples) - 1.0)))));
		}
	}
	else if (fillAlgorithm == kTTSym_ramp) {
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (TTUInt64 i=0; i<mLengthInSamples; i++)
				set2d(i+1, channel+1, -1.0 + (2.0 * (float(i) / mLengthInSamples)));
		}
	}
	else if (fillAlgorithm == kTTSym_rampMod) {
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (TTUInt64 i=0; i<mLengthInSamples; i++)
				set2d(i+1, channel+1, float(i) / mLengthInSamples);
		}
	}
	else if (fillAlgorithm == kTTSym_sawtooth) {
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (TTUInt64 i=0; i<mLengthInSamples; i++)
				set2d(mLengthInSamples-i, channel+1, -1.0 + (2.0 * (float(i) / mLengthInSamples)));
		}
	}
	else if (fillAlgorithm == kTTSym_sawtoothMod) {
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (TTUInt64 i=0; i<mLengthInSamples; i++)
				set2d(mLengthInSamples-i, channel+1, float(i) / mLengthInSamples);
		}
	}
	else if (fillAlgorithm == kTTSym_triangle) {
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (TTUInt32 i=0; i < mLengthInSamples/2; i++) {
				set2d(i+1, channel+1, -1.0 + (4.0 * (float(i) / mLengthInSamples)));
				set2d(mLengthInSamples-i, channel+1, -1.0 + (4.0 * (float(i) / mLengthInSamples)));
			}
		}
	}
	else if (fillAlgorithm == kTTSym_triangleMod) {
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (TTUInt32 i=0; i < mLengthInSamples/2; i++) {
				set2d(i+1, channel+1, -1.0 + (4.0 * (float(i) / mLengthInSamples)));
				set2d(mLengthInSamples-i, channel+1, -1.0 + (4.0 * (float(i) / mLengthInSamples)));
			}
		}
	}

	return kTTErrNone;
}


TTErr TTSampleMatrix::normalize(const TTValue& aValue)
{
	TTFloat64			normalizeTo = 1.0;
	TTRowID				m = mLengthInSamples; // mFrameLength
	TTColumnID			n = mNumChannels; // mNumChannels
	TTSampleValuePtr	samples = (TTSampleValuePtr)getLockedPointer();
	TTFloat64			peakValue = 0.0;
	TTFloat64			scalar;
	
	if (aValue.getSize() && TTFloat64(aValue) > 0.0)
		normalizeTo = aValue;
	
	for (int k=0; k<m*n; k++) {
		TTFloat64 magnitude = abs(samples[k]);
		
		if (magnitude > peakValue)
			peakValue = magnitude;
	}
	
	scalar = normalizeTo / peakValue;
	
	for (int k=0; k<m*n; k++)
		samples[k] *= scalar;
		
	releaseLockedPointer();
	return kTTErrNone;
}
