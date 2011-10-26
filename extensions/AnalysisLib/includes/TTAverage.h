/* 
 * TTAverage - measuring of aveaged and RMS signal energy 
 * Copyright © 2011, Nils Peters, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_AVERAGE_H__
#define __TT_AVERAGE_H__

#include "TTDSP.h"
#include "TTDelayBuffer.h"

class TTAverage : TTAudioObject {
	TTCLASS_SETUP(TTAverage)

	TTUInt64			mMaxInterval;
	TTUInt64			mInterval;
	TTFloat64			mIntervalReciprocal;
	TTSampleVector		mAccumulator;
	TTSymbol*			mMode;
	TTDelayBufferVector	mBins;
	
	/**	This method gets called when the inherited maxNumChannels attribute is changed. */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	
	/** Receives notifications when there are changes to the inherited sr attribute. */
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);
	
	// internal - set up the buffer memory
	TTErr init(TTUInt64 newDelayMaxInSamples);
	
	// internal - position the buffer pointers
	void reset();
	
	/**	Process method 	*/
	TTErr processBipolarAverage(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr calculateBipolarValue(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr data, TTPtrSizedInt channel);	
	
	TTErr processAbsoluteAverage(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr calculateAbsoluteValue(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr data, TTPtrSizedInt channel);

	TTErr processRmsAverage(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr calculateRmsValue(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr data, TTPtrSizedInt channel);


	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
		
public:
	TTErr calculateBipolarValue(	const TTFloat64& x,		TTFloat64& y, TTPtrSizedInt channel);
	TTErr calculateAbsoluteValue(	const TTFloat64& x,		TTFloat64& y, TTPtrSizedInt channel);
	TTErr calculateRmsValue(		const TTFloat64& x,		TTFloat64& y, TTPtrSizedInt channel);
	
	/**	Resets the history used in the analysis.*/
	TTErr clear();	
	
	/**	Attribute Setter. */
	TTErr setMode(const TTValue& newValue);
	TTErr setInterval(const TTValue& newValue);
	TTErr setMaxInterval(const TTValue& newValue);
	
	
};


#endif // __TT_AVERAGE_H__
