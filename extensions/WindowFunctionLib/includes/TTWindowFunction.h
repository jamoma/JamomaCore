/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Generalized Window Function Wrapper for Jamoma DSP
 *
 * @details More information on window functions can be found here: @n
 * @n
 * http://en.wikipedia.org/wiki/Window_function @n
 * https://ccrma.stanford.edu/~jos/sasp/Spectrum_Analysis_Windows.html
 *
 * @authors Tim Place, Nathan Wolek, Trond Lossius, 
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __WINDOWFUNCTION_H__
#define __WINDOWFUNCTION_H__

#include "TTDSP.h"


/**	Generalized Window Function Wrapper
 */
class WindowFunction : TTAudioObject {
	TTCLASS_SETUP(WindowFunction)

	friend class KaiserWindow;				// need this for the unit testing - NW: should protected be before this?
	
protected:

	TTSymbol			mFunction;			///< Name of the window function to use
	TTAudioObjectPtr	mFunctionObject;	///< The actual window function object for mFunction
	TTUInt32			mNumPoints;			///< Number of Points in the lookup table
	TTSampleVector		mLookupTable;		///< Cached table of size mNumPoints
	TTSymbol			mMode;				///< Options: 'generate', 'lookup', 'apply'
	TTUInt32			mPadding;			///< for generating the lookup table - (e.g. padded welch window padded by 16 zeros on both sides)
											// further padding references: http://www.dsprelated.com/dspbooks/sasp/Sliding_FFT_Maximum_Overlap.html

	/**	Choose the window function 
	 @param function			The window function to use.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setFunction(const TTValue& function);
	
	
	/**	@brief Set the lookup table size.
	 @details The setNumPoints and doSetNumPoints methods perform the same action, and differs only in the type of the argument to the method.
	 @param	numPoints			The number of points to use.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 @see doSetNumPoints
	 */
	TTErr setNumPoints(const TTValue& numPoints);
	
	
	/** @brief Set the lookup table size.
	 @details The setNumPoints and doSetNumPoints methods perform the same action, and differs only in the type of the argument to the method.
	 @param numPoints			The number of points to use.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 @see setNumPoints
	 */
	TTErr doSetNumPoints(const TTUInt32 numPoints);

	
	/**	Set the process method. The options are 'generate', 'lookup', 'apply'.
	 @param	mode				The processing mode to use. The options are 'generate', 'lookup', 'apply'.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setMode(const TTValue& mode);
	
	
	/** Zero-padding applied to lookup table.
	 @param padding
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setPadding(const TTValue& padding);
	
	
	/** Internal method for filling the lookup table.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr fill();
	
	
	/**	Return a list of all the available window functions.
	 @param listOfWindowTypesToReturn Pointer to an array that will be filled with a list of all available window functions.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getFunctions(const TTValue&, TTValue& listOfWindowTypesToReturn);

	
	/**	Set an attribute of the internal window object (e.g. the 'beta' parameter to the Kaiser function).
	 @param aParameterValueForTheFunction	Some functions have one or more parameters that can be set and that will alter the curve of the function. These parameters can be set using this method.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setParameter(const TTValue& aParameterValueForTheFunction, TTValue&);
	
	
	/** Calculate a single window function value y = f(x).
	 @param x					The input value that we want to calculate a window function value for.
	 @param y					The returned window function y value.
	 @param data				Not currently used.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	
	/** Lookup a single function value y = f(x) from the stored table of window function values.
	 @param x					The input value that we want to calculate a window function value for.
	 @param y					The returned window function y value.
	 @param data				Not currently used.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	inline TTErr lookupValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	
	/**	Generate a window function curve by means of calculations.
	 @param inputs				The input signal vector.
	 @param outputs				The resaulting window function.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processGenerate(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/** Apply window function to the inputs signal using window function values from the stored lookup table.
	 @param inputs				The input signal to apply a window function on.
	 @param outputs				The resaulting windowed signal.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/** Apply window function to the inputs signal using window function values that are calculated on the fly.
	 @param inputs				The input signal to apply a window function on.
	 @param outputs				The resaulting windowed signal.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processApply(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __WINDOWFUNCTION_H__
