/* 
 * Generalized Allpass Filter Wrapper for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_ALLPASS_H__
#define __TT_ALLPASS_H__

#include "TTDSP.h"


/**	Generalized Allpass Filter Wrapper. */
class TTAllpass : public TTAudioObject {
	TTCLASS_SETUP(TTAllpass)
	
	TTSymbolPtr			mFilter;			///< Name of the filter to use
	TTAudioObjectPtr	mFilterObject;		///< The actual filter object for mFilter
	
	
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);
	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 not be producing any signal (such as turning audio off and then back on in a host) or if the
	 feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 neccesary to clear the filter by calling this method.
	 @return Returns a TTErr error code.												*/
	TTErr clear();
	
	/**	return a list of all the available filters	*/
	//TTErr getFilters(TTValue& listOfFilterTypesToReturn);
		TTErr getFilters(const TTValue&, TTValue& listOfFiltersToReturn)
	{
		TTValue v;
		v.setSize(2);
		v.set(0, TT("allpass"));
		v.set(1, TT("audio")); 
		return TTGetRegisteredClassNamesForTags(listOfFiltersToReturn, v);
	}
	
	

	// Attribute:
	TTErr setFilter(const TTValue& filter);
	
	TTErr setCoefficients(const TTValue& coefficients, TTValue&);
	
	/** y = f(x) for a single value */
	TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
};


#endif // __TT_ALLPASS_H__
