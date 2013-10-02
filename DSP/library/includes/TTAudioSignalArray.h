/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Container for an array of #TTAudioSignal pointers.
 *
 * @details TODO: put more info here
 *
 * @see TTAudioSignal
 *
 * @authors Tim Place
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_AUDIO_SIGNAL_ARRAY_H__
#define __TT_AUDIO_SIGNAL_ARRAY_H__

#include "TTAudioSignal.h"


/****************************************************************************************************/
// Class Specification

/**	A simple container for an array of TTAudioSignal pointers.
	This class does not automatically manage the signals themselves, instantiate, or free them.	*/
class TTDSP_EXPORT TTAudioSignalArray : public TTDataObjectBase {
	TTCLASS_SETUP(TTAudioSignalArray)

protected:

	TTAudioSignalPtr*	audioSignals;			///< The actual array of audio signal pointers.
	TTUInt16			maxNumAudioSignals;		///< The maximum number of audio signals that can be passed in this array.

public:

	TTUInt16			numAudioSignals;		///< The number of audio signal pointers which are actually valid.
	
	void		init();
	void		releaseAll();

	void clearAll()
	{
		for (TTUInt16 i=0; i<maxNumAudioSignals; i++)
			audioSignals[i]->clear();
	}
	
	void		allocAllWithVectorSize(TTUInt16 vs);
	TTUInt16	getVectorSize();
	void		setAllMaxNumChannels(TTUInt16 newMaxNumChannels);
	void		setAllNumChannels(TTUInt16 newNumChannels);
	
	void setAllSampleRates(TTUInt32 newSampleRate)
	{
		for (TTUInt16 i=0; i<numAudioSignals; i++)
			audioSignals[i]->setSampleRate(newSampleRate);
	}
	
	/**	Note: calling this function will invalidate all audioSignal pointers contained within the array. */
	void setMaxNumAudioSignals(TTUInt16 newMaxNumAudioSignals)
	{
		if (newMaxNumAudioSignals != maxNumAudioSignals) {
			maxNumAudioSignals = newMaxNumAudioSignals;
			init();
		}
	}
	
	TTUInt16 getMaxNumAudioSignals()
	{
		return maxNumAudioSignals;
	}

	
	inline TTAudioSignal& getSignal(TTUInt16 index)
	{
		return *audioSignals[index];
	}
	
	inline TTErr setSignal(TTUInt16 index, const TTAudioSignalPtr aSignal)
	{
		audioSignals[index] = aSignal;
		return kTTErrNone;
	}
	
	
	void matchNumChannels(TTAudioSignalArray* anotherArray)
	{
		matchNumChannels(*anotherArray);
	}

	void matchNumChannels(TTAudioSignalArray& anotherArray)
	{
		TTUInt16	audioSignalCount =  TTClip<TTUInt16>(maxNumAudioSignals, 0, anotherArray.maxNumAudioSignals);
		TTValue		v;
		
		for (int i=0; i<audioSignalCount; i++) {
			TTUInt16 numChannels = anotherArray.audioSignals[i]->getNumChannelsAsInt();

			v = numChannels;
			// TODO: for efficiency, we should only set the maxNumChannels if it is larger than the current so we aren't allocing memory on the heap!
			audioSignals[i]->setMaxNumChannels(v);
			audioSignals[i]->setNumChannels(v);
		}
		
		// TODO, for all channels that are not in this array, but are in another array, we should zero the numChannels
	}
	
	TTUInt16 getMaxNumChannels()
	{
		TTUInt16 maxNumChannels = 0;
		
		for (TTUInt16 i=0; i<maxNumAudioSignals; i++) {
			if (audioSignals[i]->getMaxNumChannelsAsInt() > maxNumChannels)
				maxNumChannels = audioSignals[i]->getMaxNumChannelsAsInt();
		}
		return maxNumChannels;
	}
	
};


typedef TTAudioSignalArray* TTAudioSignalArrayPtr;

#endif // __TT_AUDIO_SIGNAL_ARRAY_H__

