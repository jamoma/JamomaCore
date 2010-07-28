/* 
 * Jamoma DSP FFT Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_FFT_H__
#define __TT_FFT_H__

#include "TTDSP.h"


/**	TTOperator performs basic mathematical operations on an input signal, or a pair of input signals */
class TTfft : TTAudioObject {
	TTCLASS_SETUP(TTfft)

	static const int kTTFFTPerformFFT;
	static const int kTTFFTPerformIFFT;
	
	TTSampleVector		mBuffer;		// the samples we pass to the fft routine for processing
	std::vector<int>	mWorkArea;		// work area for bit reversal
	std::vector<double>	mCosSinTable;	// cos/sin table
	TTUInt16			mVectorSize;	// cached vector size
	TTFloat64			mRVectorSize;	// reciprocal of vector size
	TTBoolean			mInverse;		// true = IFFT, false = FFT
	TTInt16				mInverseValue;	// -1 means IFFT, +1 means FFT
	TTSymbolPtr			mMode;			// 'real' or 'complex'
	TTSymbolPtr			mAlgorithm;		// 'ooura' or 'mayer'	

	/** Attribute accessor.	*/
	TTErr setInverse(const TTValue& newValue);
	
	/** Attribute accessor.	*/
	TTErr setMode(const TTValue& newValue);
	
	/** Attribute accessor.	*/
	TTErr setAlgorithm(const TTValue& newValue);
	
	// Internal -- used by attr accessors
	TTErr updateProcessPointers();

	
	/**	FFT Audio Process Routine.  
		Some important notes:
		* The vector size of the inputs determines the frame size of the FFT.
		* The input currently assumes that we treat each channel as the input for a Real FFT (not complex).
		* The output is currently adapts the output to twice the number of channels as is present at the input.
	 */
	TTErr processComplexOoura(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processRealOoura(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processComplexMayer(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processRealMayer(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
};


#endif // __TT_FFT_H__
