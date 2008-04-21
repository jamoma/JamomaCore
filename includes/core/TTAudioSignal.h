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
 *	All of the members are made public so that direct access to members can be used for
 *	speed in cases where efficiency is of the utmost importance.
*/
TTBLUE_CLASS TTAudioSignal : TTElement {
private:
	enum{
		kExternallyOwned = 0,
		kLocallyOwned = 1
	};

	TTBoolean		isLocallyOwned;
	TTUInt8			maxNumChannels;		///< The number of audio channels for which memory has been allocated.
	TTUInt16		vs;					///< Vector Size for this signal.  Every channel in a signal must have the same vector-size.
	TTUInt8			numChannels;		///< The number of audio channels that have valid sample values stored in them.
	TTUInt8			bitdepth;			///< Currently supported bitdepths are 32 and 64. This is set by the setVector() method.

public:
	TTSampleVector	*sampleVectors;		///< An array of pointers to the first sample in each vector. Declared Public for fast access.

	/** Constructor.  Defines a maximum number of audio channels that can be used. */
	TTAudioSignal(TTUInt8 initialMaxNumChannels);
	
	/** Destructor */
	virtual ~TTAudioSignal();
	
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
	TTErr setVector(TTUInt8 channel, TTUInt16 vectorSize, TTSampleVector newVector);
	
	/**	This version handles vector assignments from 32-bit vectors.
	*/
	TTErr setVector(TTUInt8 channel, TTUInt16 vectorSize, TTFloat32* newVector);
	
	TTErr getVector(TTUInt8 channel, TTUInt16 vectorSize, TTSampleVector returnedVector);
	TTErr getVector(TTUInt8 channel, TTUInt16 vectorSize, TTFloat32* returnedVector);
	
	TTUInt16 getVectorSize()
	{
		return vs;
	}
	
	void setVectorSize(TTUInt16 newVectorSize)
	{
		vs = newVectorSize;
	}
	
	TTUInt8 getNumChannels()
	{
		return (TTUInt8)numChannels;
	}

	void setNumChannels(TTUInt8 newNumChannels)
	{
		numChannels = TTClip(newNumChannels, (TTUInt8)0, maxNumChannels);
	}

	/**	Allocate memory for all channels at the current vectorsize.
	*/
	TTErr alloc();
	
	/** Use this class method to determine the least number of channels the two signals have in common.
	 *	In cases where a processAudio method expects to have a matching number of audio inputs and outputs,
	 *	this method can be used to compare the two signals and return the number of channels for which
	 *	it is safe to assume that the number of inputs and outputs are the same.
	 *	@param		signal1			The first of the two signals to be compared.
	 *	@param		signal2			The second of the two signals to be compared.
	 *	@return		The number of channels that are valid for both signal1 and signal2.		*/
	static TTUInt16 getMinChannelCount(TTAudioSignal& signal1, TTAudioSignal& signal2);

	/** Use this class method to determine the number of channels of an input our output signal.
	 *	This can be useful in circumstances where input and output signals are not necsessarily expected
	 *  or required to have the same number of channels.
	 *	@param		signal			The signal that we want to investigate.
	 *	@return		The number of channels of the signal.		*/
	static TTUInt8 getNumChannels(TTAudioSignal& signal);

};


#endif // __TT_AUDIO_SIGNAL_H__

