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


/** A type that can be used to store a pointer to a process method */
typedef TTErr (TTProcessMethod)(TTAudioSignal& in, TTAudioSignal& out);

/****************************************************************************************************/
// Class Specification

/** The TTAudioSignal class represents N vectors of audio samples for M channels. 
 *	All of the members are made public so that direct access to members can be used for
 *	speed in cases where efficiency is of the utmost importance.
*/
class TTAudioSignal : TTElement {
public:
	TTUInt16		vs;					///< Vector Size for this signal.  Every channel in a signal must have the same vector-size.
	TTUInt16		maxNumChannels;		///< The number of audio channels for which memory has been allocated.
	TTUInt16		numChannels;		///< The number of audio channels that have valid sample values stored in them.
	TTSampleVector	*sampleVectors;		///< An array of pointers to the first sample in each vector.

	/** Constructor.  Defines a maximum number of audio channels that can be used. */
	TTAudioSignal(TTUInt16 howMany);
	
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
	 *	@param		newVector		A pointer to the first sample in a vector of samples.
	 *	@result		An error code.																 */
	TTErr setVector(TTUInt8 channel, TTSampleVector newVector);
	
	/** Use this class method to determine the least number of channels the two signals have in common.
	 *	In cases where a processAudio method expects to have a matching number of audio inputs and outputs,
	 *	this method can be used to compare the two signals and return the number of channels for which
	 *	it is safe to assume that the number of inputs and outputs are the same.
	 *	@param		signal1			The first of the two signals to be compared.
	 *	@param		signal2			The second of the two signals to be compared.
	 *	@return		The number of channels that are valid for both signal1 and signal2.		*/
	static TTUInt16 getMinChannelCount(TTAudioSignal& signal1, TTAudioSignal& signal2);

};


#endif // __TT_AUDIO_SIGNAL_H__

