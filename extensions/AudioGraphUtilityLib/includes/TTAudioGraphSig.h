/* 
 * TTAudioGraphSig Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SIG_H__
#define __TT_SIG_H__

#include "TTDSP.h"


/**	The split≈ object takes a single input signal and splits it out	into N output signals */
class TTAudioGraphSig : public TTAudioObject {
	TTCLASS_SETUP(TTAudioGraphSig)

	TTFloat64	mValue;
	
	/** A value passed in as a dictionary will set the value attribute
		If an array is passed in for the value in the dictionary, the first item in the array is used. */
	TTErr dictionary(TTValue& input);
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TTAudioSignal&	out			= outputs->getSignal(0);
		TTUInt16		numChannels = out.getNumChannelsAsInt();
		TTUInt16		n			= out.getVectorSizeAsInt();
		
		for (TTUInt16 channel=0; channel < numChannels; channel++) {
			TTSampleValuePtr outSample = out.mSampleVectors[channel];
			
			while (n--)
				*outSample++ = mValue;
		}
		return kTTErrNone;
	}
	
};



#endif // __TT_SIG_H__
