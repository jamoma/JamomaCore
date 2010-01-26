/* 
 * Audio Delay Buffer Object for Jamoma DSP
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_DELAYBUFFER_H__
#define __TT_DELAYBUFFER_H__

#include "TTDSP.h"


/**	TTDelayBuffer is a container object that holds some audio in a chunk of memory,
	with accessors for using it as a circular delay line.	
*/
class TTDSP_EXPORT TTDelayBuffer {

public:
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
		mBuffer.resize(newSize);
		mReadPointer = mWritePointer = &mBuffer[0];
		mEndPointer = (&mBuffer[0]) + size();
	}
	
	void clear()
	{
		mBuffer.assign(size(), 0.0);
	}
	
	void setDelay(TTUInt32 delayInSamples)
	{
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
	
	TTSampleValuePtr wrapPointer(TTSampleValuePtr ptr)
	{
		if (ptr > tail())
			ptr = head() + (ptr - tail());
		else if (ptr < head())
			ptr = tail() + (ptr - head()) + 1;
		return ptr;
	}
};
typedef TTDelayBuffer*					TTDelayBufferPtr;
typedef vector<TTDelayBuffer>			TTDelayBufferVector;
typedef TTDelayBufferVector::iterator	TTDelayBufferIter;


#endif // __TT_DELAYBUFFER_H__
