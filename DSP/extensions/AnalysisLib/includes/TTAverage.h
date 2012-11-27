/** @file
 *
 * @ingroup dspAnalysisLib
 *
 * @brief #TTAverage - measuring of averaged and RMS signal energy 
 *
 * @details
 *
 * @authors Nils Peters, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011, Nils Peters, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_AVERAGE_H__
#define __TT_AVERAGE_H__

#include "TTDSP.h"
#include "TTDelayBuffer.h"

/** TTAverage - measuring averaged and RMS signal energy
 */
class TTAverage : TTAudioObject {
	TTCLASS_SETUP(TTAverage)

protected:

	TTUInt64			mMaxInterval;			///< The largest possible interval or window to do running averaging over.
	TTUInt64			mInterval;				///< The interval to do runiing averaging over.
	TTFloat64			mIntervalReciprocal;	///< The inverse of #mInterval. Calculated and stored for conviniency and efficiency.
	TTSampleVector		mAccumulator;			///< An accumulator used for calculation of running averages.
	TTSymbol			mMode;					///< Averaging mode, options are absolute, bipolar and rms.
	TTDelayBufferVector	mBins;
	
	
	/**	This method gets called when the inherited maxNumChannels attribute is changed. 
	 @param aNotUsed1			Not used
	 @param aNotUsed2			Not used
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr updateMaxNumChannels(const TTValue& anOldMaxNumChannels, TTValue& aNotUsed);
	
	
	/** Receives notifications when there are changes to the inherited sr attribute.
	 @todo When window length is set with time, we have to recompute the length in samples and resize mBins
	 @param aNotUsed1			Not used
	 @param aNotUsed2			Not used
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr updateSampleRate(const TTValue& aNotUsed1, TTValue& aNotUsed2);
	
	
	/** Internal method - set up the buffer memory.
	 @param newDelayMaxInSamples		New value for maximum samples to permit.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr init(TTUInt64 newDelayMaxInSamples);
	
	
	/** Internal method - Position the buffer pointers
	 */
	void reset();
	
	
	/**	Audio process method to use when doing bipolar averaging.
	 @param	anInputs			A pointer to a TTAudioSignal object that may contain any number of channels. This signal is considered the master, and thus it provides the vectorsize and number of channels should the two signals not be matched.
	 @param	anOutputs			A pointer to a TTAudioSignal object that has the output sample vectors.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processBipolarAverage(TTAudioSignalArrayPtr anInputs, TTAudioSignalArrayPtr anOutputs);
	
	
	/** An inline method for single sample calculation of bipolar average value.
	 @param anInput				An input sample value
	 @param anOutput			An output (processed) sample value
	 @param aDelayBuffer		Delay buffer used for calculation of running averages
	 @param aChannel			The audio channel to perform to processing for
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr calculateBipolarValue(const TTFloat64& anInput, TTFloat64& anOutput, TTDelayBufferPtr aDelayBuffer, TTPtrSizedInt aChannel);
	
	
	/** Audio process method to use when doing absolute value averaging.
	 @param	anInputs			A pointer to a TTAudioSignal object that may contain any number of channels. This signal is considered the master, and thus it provides the vectorsize and number of channels should the two signals not be matched.
	 @param	anOutputs			A pointer to a TTAudioSignal object that has the output sample vectors.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAbsoluteAverage(TTAudioSignalArrayPtr anInputs, TTAudioSignalArrayPtr anOutputs);
	
	
	/** An inline method for single sample calculation of absolute average value.
	 @param anInput				An input sample value
	 @param anOutput			An output (processed) sample value
	 @param aDelayBuffer		Delay buffer used for calculation of running averages
	 @param aChannel			The audio channel to perform to processing for
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr calculateAbsoluteValue(const TTFloat64& anInput, TTFloat64& anOutput, TTDelayBufferPtr aDelayBuffer, TTPtrSizedInt aChannel);

	
	/** Audio process method to use when doing root-mean-square averaging.
	 @param	anInputs			A pointer to a TTAudioSignal object that may contain any number of channels. This signal is considered the master, and thus it provides the vectorsize and number of channels should the two signals not be matched.
	 @param	anOutputs			A pointer to a TTAudioSignal object that has the output sample vectors.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processRmsAverage(TTAudioSignalArrayPtr anInputs, TTAudioSignalArrayPtr anOutputs);
	
	
	/** An inline method for single sample calculation of rms (root mean square) average value.
	 @param anInput				An input sample value
	 @param anOutput			An output (processed) sample value
	 @param aDelayBuffer		Delay buffer used for calculation of running averages
	 @param aChannel			The audio channel to perform to processing for
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr calculateRmsValue(const TTFloat64& anInput, TTFloat64& anOutput, TTDelayBufferPtr aDelayBuffer, TTPtrSizedInt aChannel);


	/** Unit test.
	 @param returnedTestInfo	The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);	
		
public:
	
	/** A method for single sample calculation of bipolar average value.
	 @param anInput				An input sample value
	 @param anOutput			An output (processed) sample value
	 @param aChannel			The audio channel to perform to processing for
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr calculateBipolarValue(const TTFloat64& anInput, TTFloat64& anOutput, TTPtrSizedInt aChannel);
	
	
	/** A method for single sample calculation of absolute average value.
	 @param anInput				An input sample value
	 @param anOutput			An output (processed) sample value
	 @param aChannel			The audio channel to perform to processing for
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr calculateAbsoluteValue(const TTFloat64& anInput, TTFloat64& anOutput, TTPtrSizedInt aChannel);
	
	
	/** A method for single sample calculation of rms (root mean square) average value.
	 @param anInput				An input sample value
	 @param anOutput			An output (processed) sample value
	 @param aChannel			The audio channel to perform to processing for
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr calculateRmsValue(const TTFloat64& anInput, TTFloat64& anOutput, TTPtrSizedInt aChannel);
	
	
	/**	Reset (clear) the history used in the analysis.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr clear();	
	
	/**	Set the mode attribute that controlles what averaging mode to use.
	 @details Options are bipolar, absolute and rms. This method also ensures that the correct process method will be used.
	 @param aNewMode			The new mode to use.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setMode(const TTValue& newValue);
	
	
	/** Set the interval to use when averaging.
	 @param aNewInterval		The new interval to use when averaging.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setInterval(const TTValue& aNewInterval);
	
	
	/** Set the maximum interval that can be used when averaging.
	 @param aNewMaxInterval		The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setMaxInterval(const TTValue& aNewMaxInterval);
	
};


#endif // __TT_AVERAGE_H__
