/* 
 * TTBlue Audio Signal Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_AUDIO_SIGNAL_H__
#define __TT_AUDIO_SIGNAL_H__

#include "TTObject.h"
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
class TTEXPORT TTAudioSignal : public TTObject {
private:
	enum{
		kExternallyOwned = 0,
		kLocallyOwned = 1
	};

	TTBoolean		isLocallyOwned;
	TTUInt16		maxNumChannels;		///< The number of audio channels for which memory has been allocated.
	TTUInt16		vectorSize;			///< Vector Size for this signal.  Every channel in a signal must have the same vector-size.
	TTUInt16		numChannels;		///< The number of audio channels that have valid sample values stored in them.
	TTUInt8			bitdepth;			///< Currently supported bitdepths are 32 and 64. This is set by the setVector() method.

public:
	TTSampleVector	*sampleVectors;		///< An array of pointers to the first sample in each vector. Declared Public for fast access.

	/** Constructor.  Defines a maximum number of audio channels that can be used. */
	TTAudioSignal(const TTUInt16 initialMaxNumChannels);
	
	/** Destructor */
	virtual ~TTAudioSignal();

private:
	/**	Internal method for freeing the vectors. */
	void chuck();
	
public:
	/**	Attribute accessor. */
	TTErr setmaxNumChannels(const TTValue& newMaxNumChannels);
	
	
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
	TTErr setVector(const TTUInt16 channel, const TTUInt16 vectorSize, const TTSampleVector newVector);
	TTErr setVector64(const TTValue& v);	// A version of the above used by the message passing interface.

	
	/**	This version handles vector assignments from 32-bit vectors.
	*/
	TTErr setVector(const TTUInt16 channel, const TTUInt16 vectorSize, const TTFloat32* newVector);
	TTErr setVector32(const TTValue& v);	// A version of the above used by the message passing interface.

	
	TTErr getVector(const TTUInt16 channel, const TTUInt16 vectorSize, TTSampleVector returnedVector);
	TTErr getVector64(TTValue& v);	// A version of the above used by the message passing interface.

	TTErr getVector(const TTUInt16 channel, const TTUInt16 vectorSize, TTFloat32* returnedVector);
	TTErr getVector32(TTValue& v);	// A version of the above used by the message passing interface.

	
	TTErr setvectorSize(const TTValue& newVectorSize)
	{
		vectorSize = newVectorSize;
		return kTTErrNone;
	}
	
	// Note the capitalization -- this is not a normal getter, but rather a convenience method
	TTUInt16 getVectorSize() const
	{
		return vectorSize;
	}
	
	TTErr setnumChannels(const TTValue& newNumChannels)
	{
		numChannels = TTClip<TTUInt16>(newNumChannels, 0, maxNumChannels);
		return kTTErrNone;
	}
	
	// Note the capitalization -- this is not a normal getter, but rather a convenience method
	TTUInt16 getNumChannels() const
	{
		return numChannels;
	}
	
	/**	Allocate memory for all channels at the current vectorsize.
	*/
	TTErr alloc();
	
	
	/**	Allocate memory for all channels at the specified vectorsize, 
		if the vectorsize is different from the current state.
	*/
	TTErr allocWithVectorSize(const TTUInt16 newVectorSize);	
	TTErr allocWithNewVectorSize(const TTValue& newVectorSize);
	
	
	/**	Zero out all of the sample values in the audio signal.
		@return An error code.	*/
	TTErr clear();
	
	
	/**	Copy the audio from one signal into another.	*/
	static TTErr copy(const TTAudioSignal& source, TTAudioSignal& dest);

	
	/** Use this class method to determine the least number of channels the two signals have in common.
	 *	In cases where a processAudio method expects to have a matching number of audio inputs and outputs,
	 *	this method can be used to compare the two signals and return the number of channels for which
	 *	it is safe to assume that the number of inputs and outputs are the same.
	 *	@param		signal1			The first of the two signals to be compared.
	 *	@param		signal2			The second of the two signals to be compared.
	 *	@return		The number of channels that are valid for both signal1 and signal2.		*/
	static TTUInt16 getMinChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2);

	/** Use this class method to determine the least number of channels the specified signals have in common.
	 	In cases where a processAudio method expects to have a matching number of audio inputs and outputs,
	 	this method can be used to compare the two signals and return the number of channels for which
	 	it is safe to assume that the number of inputs and outputs are the same.
	 	@param		signal1			The first of three signals to be compared.
	 	@param		signal2			The second of three signals to be compared.
		@param		signal3			The third of three signals to be compared.
	 	@return		The number of channels that are valid for all signals.		*/
	static TTUInt16 getMinChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2, const TTAudioSignal& signal3);

	static TTUInt16 getMaxChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2);
	static TTUInt16 getMaxChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2, const TTAudioSignal& signal3);
	
	/** Use this class method to determine the number of channels of an input our output signal.
	 *	This can be useful in circumstances where input and output signals are not necsessarily expected
	 *  or required to have the same number of channels.
	 *	@param		signal			The signal that we want to investigate.
	 *	@return		The number of channels of the signal.		*/
	static TTUInt16 getNumChannels(const TTAudioSignal& signal);
};


typedef TTAudioSignal* TTAudioSignalPtr;


/**	A convenience macro for sending the 'setVector32' message to an audio signal.  
	@param	signal_obj	A pointer to a TTAudioSignal object.
	@param	a			The zero-based channel number of the vector.
	@param	b			The vector size of the channel.
	@param	c			A pointer to the beginning of the vector.
	@return A TTErr code.									*/
#define TTAUDIOSIGNAL_SETVECTOR32(signal_obj, a, b, c) \
		TTValue _temp_tt_value_setvector ## a;\
		_temp_tt_value_setvector ## a.setSize(3);\
		_temp_tt_value_setvector ## a.set(0, a);\
		_temp_tt_value_setvector ## a.set(1, b);\
		_temp_tt_value_setvector ## a.set(2, TTPtr(c));\
		signal_obj->sendMessage(TT("setVector32"), _temp_tt_value_setvector ## a);

/**	A convenience macro for sending the 'getVector32' message to an audio signal.
	@param	signal_obj	A pointer to a TTAudioSignal object.
	@param	a			The zero-based channel number of the vector.
	@param	b			The vector size of the channel.
	@param	c			A pointer to the beginning of the vector.
	@return A TTErr code.									*/
#define TTAUDIOSIGNAL_GETVECTOR32(signal_obj, a, b, c) \
		TTValue _temp_tt_value_getvector ## a;\
		_temp_tt_value_getvector ## a.setSize(3);\
		_temp_tt_value_getvector ## a.set(0, a);\
		_temp_tt_value_getvector ## a.set(1, b);\
		_temp_tt_value_getvector ## a.set(2, TTPtr(c));\
		signal_obj->sendMessage(TT("getVector32"), _temp_tt_value_getvector ## a);


#endif // __TT_AUDIO_SIGNAL_H__

