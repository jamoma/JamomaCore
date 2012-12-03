/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Container object that holds some audio in a chunk of memory.
 * 
 * @details SampleMatrix extends the Matrix class found in Foundation to provide support for loading audio into a chunk of memory. Each sample value is stored as a one-element component with a datatype of 64-bit Float. Locations for individual components in the matrix can be identified by (sample, channel) pairs where samples correspond to rows in the matrix and channels translate to columns. 
 * Because the Matrix class uses <a href="http://en.wikipedia.org/wiki/Row-major_order#Column-major_order">column-major order</a>, it results in channels being <a href="http://en.wikipedia.org/wiki/Interleave">interleaved</a> and provides more efficient memory access for multi-channel sound.  However, this interleaving must be accounted for when developing other objects to process or playback the audio.@n@n
 * Both sample and channel indices begin counting at zero. This means that index values greater than or equal to the respective mLengthInSamples or mNumChannels will be out of bounds. @n@n
 * 
 * @see TTMatrix, TTAudioSignal
 *  
 * @authors Timothy Place & Nathan Wolek
 *
 * @copyright Copyright © 2003-2012, Timothy Place & Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SAMPLEMATRIX_H__
#define __TT_SAMPLEMATRIX_H__

#include "TTDSP.h"

#define mLengthInSamples mRowCount
#define mNumChannels mColumnCount

/**	Container object that holds some audio in a chunk of memory.

SampleMatrix extends the Matrix class found in Foundation to provide support for loading audio into a chunk of memory. Each sample value is stored as a one-element component with a datatype of 64-bit Float. Locations for individual components in the matrix can be identified by (sample, channel) pairs where samples correspond to rows in the matrix and channels translate to columns. 

	@see TTAudioSignal, TTMatrix
*/
class TTDSP_EXPORT TTSampleMatrix : public TTMatrix {
	TTCLASS_SETUP(TTSampleMatrix)

protected:

	TTFloat64			mSampleRate;
	//TTUInt16			userCount;
	//TTUInt8			lifeCycleStage;
	// NOTE: This object does not process audio by itself, but inherits from TTAudioObject for sample-rate support.
	// TODO: Perhaps we could add a simple process method that takes a sample index as input and provides the value as output?
	
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
		returnedLengthInSamples = mLengthInSamples;
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
	TTErr	peeki(const TTFloat64 index, const TTUInt16 channel, TTSampleValue& value);
	
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
