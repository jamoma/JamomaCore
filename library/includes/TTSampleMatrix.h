/* 
 * Jamoma DSP Audio Buffer Object 
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SAMPLEMATRIX_H__
#define __TT_SAMPLEMATRIX_H__

#include "TTDSP.h"


/**	TTSampleMatrix is a container object that holds some audio in a chunk of memory.
	Other objects can then access this buffer to record into it, play back from it,
	or perform other operations on it.
	
	This object does not process audio by itself, but inherits from TTAudioObject for sample-rate support.
	Perhaps we could add a simple process method that takes a sample index as input and provides the value as output?
	
	@see TTAudioSignal
*/
class TTDSP_EXPORT TTSampleMatrix : public TTMatrix {
	TTCLASS_SETUP(TTSampleMatrix)

	TTFloat64			mSampleRate;
	
public:
	/**	Attribute accessor: set the number of channels for this buffer.
		@return Returns a TTErr error code.	*/
	TTErr setNumChannels(const TTValue& newNumChannels);
	TTErr getNumChannels(TTValue& returnedNumChannels);

	/**	Attribute accessor: set the buffer length specified in milliseconds.
		@return Returns a TTErr error code.	*/
	TTErr setLength(const TTValue& newLength);
 	TTErr getLength(TTValue& returnedLength);
         
	/**	Attribute accessor: set the buffer length specified as a number of samples.
		@return Returns a TTErr error code.	*/
	TTErr setLengthInSamples(const TTValue& newLengthInSamples);
 	TTErr getLengthInSamples(TTValue& returnedLengthInSamples);	
  	TTErr lengthInSamples(TTUInt32& returnedLengthInSamples)
	{
		returnedLengthInSamples = mDimensions[1];
		return kTTErrNone;
	}

	// METHOD: SET_BUFFER
	//	void set_buffer(tt_buffer *newbuffer);
	TTErr getContents(TTSampleValuePtr& beggining)
	{
		beggining = (TTSampleValuePtr)mData;
		return kTTErrNone;
	}

	TTErr	getValueAtIndex(const TTValue& index, TTValue &output);
	TTErr	peek(const TTUInt64 index, const TTUInt16 channel, TTSampleValue& value);
	
	/**	Set the sample value for a given index.
		The first number passed in the index parameter will be interpreted as the sample index.
		If there are three numbers passed, then the second number, if passed, will designate the channel index (defaults to zero).
		The final value will be used as the sample value that will be copied to the designated index.
	*/
	TTErr	setValueAtIndex(const TTValue& index, TTValue& unusedOutput);
	TTErr	poke(const TTUInt64 index, const TTUInt16 channel, const TTSampleValue value);
	
	/** Set the contents of the buffer using a specified algorithm and, if appropriate, coefficients for that algorithm. */
	TTErr	fill(const TTValue& value, TTValue& unusedOutput);

	/**	Normalize the contents of a buffer.
		If no arg is passed, then the buffer is normalized to 1.0.
		Otherwise it is normalized to the passed value.
	  */
	TTErr normalize(const TTValue& aValue);

	
	/**	Unit testing */
	virtual TTErr test(TTValue& returnedTestInfo);	

};

typedef TTSampleMatrix* TTSampleMatrixPtr;


#endif // __TT_SAMPLEMATRIX_H__
