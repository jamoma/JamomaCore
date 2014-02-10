/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTAllpass is a generalized allpass filter wrapper
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_ALLPASS_H__
#define __TT_ALLPASS_H__

#include "TTDSP.h"


/**	Generalized Allpass Filter Wrapper. */
class TTAllpass : public TTAudioObjectBase {
	TTCLASS_SETUP(TTAllpass)
	
protected:
	
	TTSymbol			mFilter;			///< Name of the filter to use
	TTAudioObjectBasePtr	mFilterObject;		///< The actual filter object for mFilter
	
	
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);
	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 not be producing any signal (such as turning audio off and then back on in a host) or if the
	 feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 neccesary to clear the filter by calling this method.
	 @return Returns a TTErr error code. */
	TTErr clear();
	
	/**	return a list of all the available filters	*/
	//TTErr getFilters(TTValue& listOfFilterTypesToReturn);
	TTErr getFilters(const TTValue&, TTValue& listOfFiltersToReturn)
	{
		return TTObject::GetRegisteredClassNamesForTags(listOfFiltersToReturn, TT("allpass"));
	}
	
	

	// Attribute:
	TTErr setFilter(const TTValue& filter);
	
	TTErr setCoefficients(const TTValue& coefficients, TTValue&);
	
	/** y = f(x) for a single value */
	TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects. */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Unit Tests
	 @param	returnedTestInfo		Used to return test information
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_ALLPASS_H__
