/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Represents M channels containing N vectors of audio samples.
 *
 * @details TODO: put more info here
 *
 * @authors Tim Place
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_AUDIO_SIGNAL_H__
#define __TT_AUDIO_SIGNAL_H__

#include "TTFoundation.h"
#include "TTObjectBase.h"
#include "TTSymbol.h"
#include "TTValue.h"


/****************************************************************************************************/
// Class Specification

/** The TTAudioSignal class represents N vectors of audio samples for M channels. 
 
 	All of the members are made public so that direct access to members can be used for
 	speed in cases where efficiency is of the utmost importance.
 
	Where speed is less critical, the preferred method of work with audio signals is the same as for other objects:
	use the dynamic message passing interface.
*/
class TTDSP_EXPORT TTAudioSignal : public TTDataObjectBase {
	TTCLASS_SETUP(TTAudioSignal)

private:
	enum{
		kExternallyOwned = 0,
		kLocallyOwned = 1
	};

	TTBoolean		mIsLocallyOwned;
	TTUInt16		mMaxNumChannels;	///< The number of audio channels for which memory has been allocated.
	TTUInt16		mVectorSize;		///< Vector Size for this signal.  Every channel in a signal must have the same vector-size.
	TTUInt16		mNumChannels;		///< The number of audio channels that have valid sample values stored in them.
	TTUInt8			mBitdepth;			///< Currently supported bitdepths are 32 and 64. This is set by the setVector() method.
	TTUInt32		mSampleRate;		///< Audio signal metadata, defined in Hertz or set to 0 if not available.

public:
	TTSampleValue**	mSampleVectors;		///< An array of pointers to the first sample in each vector. Declared Public for fast access.

private:
	/**	Internal method for freeing the vectors. */
	void chuck();
	
public:
	/**	Attribute accessor. */
	TTErr setMaxNumChannels(const TTValue& newMaxNumChannels);
	
	
	void setSampleRate(const TTUInt32& newSampleRate)
	{
		mSampleRate = newSampleRate;
	}
	
	TTUInt32 getSampleRate()
	{
		return mSampleRate;
	}
	
	
	/** Assigns a vector of sample values to a channel in this signal.
	 *	The vector member of this class simply holds a pointer, not a copy of the data.  This makes the 
	 *	operation of this method (and others) fast, but also means that care should be taken to ensure
	 *	that the data being pointed to by this signal is valid, and does not become invalid during the
	 *	lifetime of the signal.
	 *
	 *	It is the responsibility of the user of this method to ensure that the sample-rate and vector-size
	 *	are also set correctly.
	 *	@param		channel			The channel number (zero-based) to assign the vector to.
	 *	@param		vectorSize		The number of samples in the vector.
	 *	@param		newVector		A pointer to the first sample in a vector of samples.
	 *	@result		An error code.																 */
	TTErr setVector(const TTUInt16 channel, const TTUInt16 vectorSize, const TTSampleValuePtr newVector);
//	TTErr setVector64(const TTValue& v, TTValue&);	// A version of the above used by the message passing interface.
	TTErr setVector64Copy(const TTUInt16 channel, const TTUInt16 vectorSize, const TTSampleValuePtr newVector);
	/**	This version handles vector assignments from 32-bit vectors.
	*/
	TTErr setVector(const TTUInt16 channel, const TTUInt16 vectorSize, const TTFloat32* newVector);
//	TTErr setVector32(const TTValue& v, TTValue&);	// A version of the above used by the message passing interface.

	TTFloat64 getSample64(const TTUInt16 channel, const TTUInt16 sampleNumber)
	{
		return mSampleVectors[channel][sampleNumber];
	}
	
	TTFloat32 getSample(const TTUInt16 channel, const TTUInt16 sampleNumber)
	{
		return ((TTFloat32)mSampleVectors[channel][sampleNumber]);
	}

	
	TTErr getVector(const TTUInt16 channel, const TTUInt16 vectorSize, TTSampleValue* returnedVector);
//	TTErr getVector64(TTValue&, TTValue& v);	// A version of the above used by the message passing interface.
	TTErr getVectorCopy(const TTUInt16 channel, const TTUInt16 theVectorSize, TTSampleValue* returnedVector); // version of getVector that copies
	
	TTErr getVector(const TTUInt16 channel, const TTUInt16 vectorSize, TTFloat32* returnedVector);
//	TTErr getVector32(TTValue&, TTValue& v);	// A version of the above used by the message passing interface.

protected:	
	TTErr setVectorSize(const TTValue& newVectorSize)
	{
		mVectorSize = newVectorSize;
		return kTTErrNone;
	}

public:
	TTErr setVectorSizeWithInt(const TTUInt16 newVectorSize)
	{
		mVectorSize = newVectorSize;
		return kTTErrNone;
	}
	
	TTUInt16 getVectorSizeAsInt() const
	{
		return mVectorSize;
	}
	
	TTErr changeVectorSize(const TTUInt16 newVectorSize)
	{
		if (mIsLocallyOwned)
			allocWithVectorSize(newVectorSize);
		else
			mVectorSize = newVectorSize;
		return kTTErrNone;
	}
	

	TTErr setNumChannels(const TTValue& newNumChannels)
	{
		mNumChannels = TTClip<TTUInt16>(newNumChannels, 0, mMaxNumChannels);
		return kTTErrNone;
	}
	
	TTErr setNumChannelsWithInt(const TTUInt16 newNumChannels)
	{
		mNumChannels = TTClip<TTUInt16>(newNumChannels, 0, mMaxNumChannels);
		return kTTErrNone;
	}
	
	
	TTUInt16 getNumChannelsAsInt() const
	{
		return mNumChannels;
	}
	
	TTUInt16 getMaxNumChannelsAsInt();

	
	TTBoolean getIsLocallyOwned()
	{
		return mIsLocallyOwned;
	}
	
	/**	Allocate memory for all channels at the current vectorsize.
	*/
	TTErr alloc();
	
	
	/**	Allocate memory for all channels at the specified vectorsize, 
		if the vectorsize is different from the current state.
	*/
	TTErr allocWithVectorSize(const TTUInt16 newVectorSize);	
	TTErr allocWithNewVectorSize(const TTValue& newVectorSize, TTValue&);
	
	
	/**	Zero out all of the sample values in the audio signal.
		@return An error code.	*/
	TTErr clear()
	{
		if (!mSampleVectors)
			return kTTErrGeneric;
		
		//	Ideally, we could do this:
		//		memset(mSampleVectors, 0, sizeof(TTSampleValue) * mVectorSize * mNumChannels);
		//	But, at the moment, we implement a vector of vectors rather than a block of memory that we index as a single chunk.
		//	So we have to iterate like this:
		
		for (TTUInt32 channel=0; channel<mNumChannels; channel++)
			memset(mSampleVectors[channel], 0, sizeof(TTSampleValue) * mVectorSize);
		
		return kTTErrNone;
	}
	
	
	TTErr fill(TTFloat64 aFillValue)
	{
		if (!mSampleVectors)
			return kTTErrGeneric;
		
		//	Ideally, we could do this:
		//		memset(mSampleVectors, 0, sizeof(TTSampleValue) * mVectorSize * mNumChannels);
		//	But, at the moment, we implement a vector of vectors rather than a block of memory that we index as a single chunk.
		//	So we have to iterate like this:
		
		for (TTUInt16 channel=0; channel<mNumChannels; channel++) {
			for (int n=0; n<mVectorSize; n++)
				mSampleVectors[channel][n] = aFillValue;
		}
		
		return kTTErrNone;
	}
	
	
	/**	Reference the audio from one signal in another.	*/
	static TTErr reference(const TTAudioSignal& source, TTAudioSignal& dest);
	
	/**	Copy the audio from one signal into another.	*/
	static TTErr copy(const TTAudioSignal& source, TTAudioSignal& dest, TTUInt16 channelOffset=0);
	
	/**	Copy the audio from one signal into another, but not taking care to zero channels that aren't used.	*/
	static TTErr copyDirty(const TTAudioSignal& source, TTAudioSignal& dest, TTUInt16 channelOffset=0);

	/**	Copy the audio from one signal into another.	*/
	static TTErr copySubset(const TTAudioSignal& source, TTAudioSignal& dest, TTUInt16 startingChannel=0, TTUInt16 endingChannel=0);
	
	
	
	
	/** Use this class method to determine the least number of channels the two signals have in common.
	 *	In cases where a processAudio method expects to have a matching number of audio inputs and outputs,
	 *	this method can be used to compare the two signals and return the number of channels for which
	 *	it is safe to assume that the number of inputs and outputs are the same.
	 *	@param		signal1			The first of the two signals to be compared.
	 *	@param		signal2			The second of the two signals to be compared.
	 *	@return		The number of channels that are valid for both signal1 and signal2.		*/
	//static TTUInt16 getMinChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2);

	static TTUInt16 getMinChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2)
	{
		if (signal1.mNumChannels > signal2.mNumChannels)
			return signal2.mNumChannels;
		else
			return signal1.mNumChannels;
	}
	
	/** Use this class method to determine the least number of channels the specified signals have in common.
	 	In cases where a processAudio method expects to have a matching number of audio inputs and outputs,
	 	this method can be used to compare the two signals and return the number of channels for which
	 	it is safe to assume that the number of inputs and outputs are the same.
	 	@param		signal1			The first of three signals to be compared.
	 	@param		signal2			The second of three signals to be compared.
		@param		signal3			The third of three signals to be compared.
	 	@return		The number of channels that are valid for all signals.		*/
	//static TTUInt16 getMinChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2, const TTAudioSignal& signal3);

	static TTUInt16 getMinChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2, const TTAudioSignal& signal3)
	{
		TTUInt16	numChannels = signal1.mNumChannels;
		
		if (signal2.mNumChannels < numChannels)
			numChannels = signal2.mNumChannels;
		if (signal3.mNumChannels < numChannels)
			numChannels = signal3.mNumChannels;
		
		return numChannels;
	}
	
	static TTUInt16 getMaxChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2);
	static TTUInt16 getMaxChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2, const TTAudioSignal& signal3);
	
	/** Use this class method to determine the number of channels of an input or output signal.
	 *	This can be useful in circumstances where input and output signals are not necsessarily expected
	 *  or required to have the same number of channels.
	 *	@param		signal			The signal that we want to investigate.
	 *	@return		The number of channels of the signal.		*/
	static TTUInt16 getNumChannels(const TTAudioSignal& signal);
	
	
	/**	Sum another audio signal's samples with this audio signal's samples.
	 */
	TTAudioSignal& operator += (const TTAudioSignal& rightHandValue)
	{
		short			vs;
		TTSampleValue*	inSample;
		TTSampleValue*	outSample;
		short			channelCount = getMaxChannelCount(*this, rightHandValue);
		short			channel;
		
		if (channelCount > mMaxNumChannels)
			channelCount = mMaxNumChannels;
		if (channelCount > rightHandValue.mMaxNumChannels)
			channelCount = rightHandValue.mMaxNumChannels;
		
		for (channel=0; channel<channelCount; channel++) {
			inSample = rightHandValue.mSampleVectors[channel];
			outSample = mSampleVectors[channel];
			
			if (mVectorSize > rightHandValue.mVectorSize)
				vs = rightHandValue.mVectorSize;
			else
				vs = mVectorSize;
			
			while (vs--) {
				(*outSample) = (*outSample) + (*inSample);
				outSample++;
				inSample++;
			}
		}
		return *this;
	}
	
	
	/**	Assign another audio signal's samples and channel/vector configuration with this audio signal's samples. */
	TTAudioSignal& operator = (const TTAudioSignal& rightHandValue)
	{	
		if (rightHandValue.mMaxNumChannels > mMaxNumChannels)
			setMaxNumChannels(rightHandValue.mMaxNumChannels);
		mNumChannels = rightHandValue.mNumChannels;
		mSampleRate = rightHandValue.mSampleRate;
		
		setVectorSizeWithInt(rightHandValue.mVectorSize);
		if (mIsLocallyOwned)
			alloc();

		TTAudioSignal::copy(rightHandValue, *this);
		return *this;
	}

};


typedef TTAudioSignal* TTAudioSignalPtr;


#endif // __TT_AUDIO_SIGNAL_H__

