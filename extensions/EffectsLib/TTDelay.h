/*
 * TTBlue Delay Unit
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_DELAY_H__
#define __TT_DELAY_H__

#include "TTDSP.h"


class TTDelayBuffer {
	friend class TTDelay;
	
	TTSampleVector		mBuffer;
	TTSampleValuePtr	mWritePointer;		///< "record" pointer for buffer
	TTSampleValuePtr	mReadPointer;		///< "playback" pointer
	TTSampleValuePtr	mEndPointer;		///< points to last sample in buffer (for speed)	
	
	public:
	
	TTDelayBuffer() : 
		mWritePointer(NULL),
		mReadPointer(NULL),
		mEndPointer(NULL)
	{
		;
	}
	
	TTUInt32 size()
	{
		return mBuffer.size();
	}
	
	void resize(TTUInt32 newSize)
	{
		TTUInt32 oldSize = mBuffer.size();
		
		mBuffer.resize(newSize);
		if (oldSize > newSize || mWritePointer == NULL || mReadPointer == NULL)
			mReadPointer = mWritePointer = &mBuffer[0];
	}
	
	void clear()
	{
		mBuffer.assign(size(), 0.0);
	}
	
	void setDelay(TTUInt32 delayInSamples)
	{
		mEndPointer = (&mBuffer[0]) + delayInSamples;
		mReadPointer = mWritePointer - delayInSamples;
		if (mReadPointer < (&mBuffer[0]))
			mReadPointer = mEndPointer + (mReadPointer - (&mBuffer[0])) + 1;
		else if (mReadPointer > mEndPointer)
			mReadPointer = (&mBuffer[0]) + (mReadPointer - mEndPointer);
	}
	
	TTSampleValuePtr head()
	{
		return &mBuffer[0];
	}
	
	TTSampleValuePtr tail()
	{
		return mEndPointer;
	}
};
typedef TTDelayBuffer*					TTDelayBufferPtr;
typedef vector<TTDelayBuffer>			TTDelayBufferVector;
typedef TTDelayBufferVector::iterator	TTDelayBufferIter;


/**	Delay a signal. */
class TTDelay : public TTAudioObject {
	TTCLASS_SETUP(TTDelay)

	TTFloat64			mDelay;
	TTUInt64			mDelayInSamples;
	TTFloat64			mDelayMax;
	TTUInt64			mDelayMaxInSamples;
	TTSymbolPtr			mInterpolation;
	
//	TTSampleValue*		mFractionalDelay;			///< used in interpolated dsp loops, if zero then the delay increment is precisely on a sample boundary
//	TTSampleValue* 		mFractionalDelaySamples;	///< fractionalDelay expressed in samples rather than ms
	TTSampleVector		mFractionalDelays;			///< one for each channel: used in interpolated dsp loops, if zero then the delay increment is precisely on a sample boundary
	TTSampleVector		mFractionalDelaySamples;	///< one for each channel: fractionalDelay expressed in samples rather than ms

	TTDelayBufferVector	mBuffers;

	
	/**	This method gets called when the inherited maxNumChannels attribute is changed. */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	/** Receives notifications when there are changes to the inherited sr attribute. */
	TTErr updateSr();
	
	// internal - set up the buffer memory
	TTErr init(TTUInt64 newDelayMaxInSamples);

	// internal - position the buffer pointers
	void reset();

	// Process with a constant delay time
	TTErr calculateNoInterpolation(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr data);
	TTErr processAudioNoInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioLinearInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioCubicInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	// Process with a delay time set by a signal
//	TTErr processAudioNoInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&);
//	TTErr processAudioLinearInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&);
//	TTErr processAudioCubicInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&);
	
	/** Zero out the delay's buffer. */
//	void clearOne(TTSampleVectorPtr vec);
	TTErr clear();
	
	/** Attribute Accessor */
	TTErr setDelay(const TTValue& newValue);
	
	/** Attribute Accessor */
	TTErr setDelayInSamples(const TTValue& newValue);
	
	/** Attribute Accessor */
	TTErr setDelayMax(const TTValue& newValue);
	
	/** Attribute Accessor */
	TTErr setDelayMaxInSamples(const TTValue& newValue);
	
	/** Attribute Accessor */
	TTErr setInterpolation(const TTValue& newValue);

};


#endif // __TT_DELAY_H__
