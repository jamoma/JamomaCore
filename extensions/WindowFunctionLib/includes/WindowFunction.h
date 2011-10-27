/* 
 * Generalized Window Function Wrapper for Jamoma DSP
 * Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __WINDOWFUNCTION_H__
#define __WINDOWFUNCTION_H__

#include "TTDSP.h"


/**	Generalized Window Function Wrapper
 
	http://en.wikipedia.org/wiki/Window_function
	https://ccrma.stanford.edu/~jos/sasp/Spectrum_Analysis_Windows.html
 
 */
class WindowFunction : TTAudioObject {
	TTCLASS_SETUP(WindowFunction)
	
	friend class KaiserWindow;				// need this for the unit testing

	TTSymbolPtr			mFunction;			///< Name of the window function to use
	TTAudioObjectPtr	mFunctionObject;	///< The actual window function object for mFunction
	TTUInt32			mNumPoints;			///< Number of Points in the lookup table
	TTSampleVector		mLookupTable;		///< Cached table of size mNumPoints
	TTSymbolPtr			mMode;				///< Options: 'generate', 'lookup', 'apply'
	TTUInt32			mPadding;			///< for generating the lookup table - (e.g. padded welch window padded by 16 zeros on both sides)
											// further padding references: http://www.dsprelated.com/dspbooks/sasp/Sliding_FFT_Maximum_Overlap.html

	/**	choose the window function */
	TTErr setFunction(const TTValue& function);
	
	/**	set lookup table size */
	TTErr setNumPoints(const TTValue& numPoints);
	TTErr doSetNumPoints(const TTUInt32 numPoints);

	/**	set process method */
	TTErr setMode(const TTValue& mode);
	
	/** zero-padding applied to lookup table */
	TTErr setPadding(const TTValue& padding);
	
	// internal method for filling the lookup table
	TTErr fill();
	
	/**	return a list of all the available window shapes	*/
	TTErr getFunctions(const TTValue&, TTValue& listOfWindowTypesToReturn);

	/**	set an attribute of the internal window object (e.g. the 'beta' parameter to the Kaiser function)	*/
	TTErr setParameter(const TTValue& aParameterValueForTheFunction, TTValue&);
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	inline TTErr lookupValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.*/
	TTErr processGenerate(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processApply(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __WINDOWFUNCTION_H__
