/* 
 * TTBlue Audio Buffer Object 
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_BUFFER_H__
#define __TT_BUFFER_H__


#include "TTDataObject.h"

/**	TTBuffer is a container object that holds some audio in a chunk of memory.
	Other objects can then access this buffer to record into it, play back from it,
	or perform other operations on it.
	
	Because this object does not actually process any audio or numerical data by itself,
	it inherits from TTObject rather than TTAudioObject.
	
	@see TTAudioSignal
*/
 
class TTEXPORT TTBuffer : public TTDataObject {
private:
	TTSampleVector*		contents;			///< An array of vectors (one vector per channel) to hold the samples.
	TTUInt16			numChannels;		///< The number of channels in the buffer
	TTFloat64			length;				///< The size of the buffer in milliseconds
	TTUInt64			lengthInSamples;	///< The size of the buffer in samples

	/** Internally used method for allocating the contents of the buffer. */
	TTErr init();

	/**	Internally used method for freeing the contents of the buffer. */
	TTErr chuck();

	/** Notification from the parent class of a sample-rate change. */
	TTErr updateSr();

public:
	/**	Constructor. */
	TTBuffer();

	/**	Destructor. */
	~TTBuffer();
	
	/**	Attribute accessor: set the number of channels for this buffer.
		@return Returns a TTErr error code.	*/
	TTErr setnumChannels(const TTValue& newNumChannels);

	/**	Attribute accessor: set the buffer length specified in milliseconds.
		@return Returns a TTErr error code.	*/
	TTErr setlength(const TTValue& newLength);
          
	/**	Attribute accessor: set the buffer length specified as a number of samples.
		@return Returns a TTErr error code.	*/
	TTErr setlengthInSamples(const TTValue& newLengthInSamples);
          
	/**	Set all values to zero.
	 	@return Returns a TTErr error code.	*/
	TTErr clear();

	// METHOD: SET_BUFFER
	//	void set_buffer(tt_buffer *newbuffer);

	TTErr	getValueAtIndex(TTValue& index);
	TTErr	peek(const TTUInt64 index, const TTUInt16 channel, TTSampleValue& value);
	
	/**	Set the sample value for a given index.
		The first number passed in the index parameter will be interpreted as the sample index.
		If there are three numbers passed, then the second number, if passed, will designate the channel index (defaults to zero).
		The final value will be used as the sample value that will be copied to the designated index.
	*/
	TTErr	setValueAtIndex(const TTValue& index);
	TTErr	poke(const TTUInt64 index, const TTUInt16 channel, const TTSampleValue value);
	
	/** Set the contents of the buffer using a specified algorithm and, if appropriate, coefficients for that algorithm. */
	TTErr	fill(const TTValue& value);

	/** Get a pointer to the buffer's memory.
		WARNING: You need to be very careful about accessing the memory in case it goes away or is freed, etc. 
		TODO: investigate some proper locks or notification systems for how we work with this...  */
	TTSampleVector getContentsForChannel(TTUInt16 channel);
};


#endif // __TT_BUFFER_H__
