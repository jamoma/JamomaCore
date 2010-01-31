/* 
 * Jamoma DSP FFT Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTFFT.h"

#define thisTTClass			TTfft
#define thisTTClassName		"fft"
#define thisTTClassTags		"audio, processor, math"

const int TTfft::kTTFFTPerformFFT = 1;
const int TTfft::kTTFFTPerformIFFT = -1;

// prototype of function from fftsg.c
extern "C" void cdft(int n, int isgn, double *a, int *ip, double *w);
extern "C" void rdft(int n, int isgn, double *a, int *ip, double *w);


TT_AUDIO_CONSTRUCTOR,
	mVectorSize(0),
	mInverse(false),
	mInverseValue(1)
{
	addAttributeWithSetter(Inverse, kTypeBoolean);
	addAttributeWithSetter(Mode, kTypeSymbol);
	
	setAttributeValue(TT("Mode"), TT("real"));
}


TTfft::~TTfft()
{
	;
}


TTErr TTfft::setInverse(const TTValue& newValue)
{
	mInverse = newValue;
	if (mInverse)
		mInverseValue = kTTFFTPerformIFFT;
	else
		mInverseValue = kTTFFTPerformFFT;
	return kTTErrNone;
}


TTErr TTfft::setMode(const TTValue& newValue)
{
	mMode = newValue;
	if (mMode == TT("real"))
		setProcessMethod(processReal);
	else
		setProcessMethod(processComplex);
	return kTTErrNone;
}


TTErr TTfft::processComplex(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSize();;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	numChannels = in.getNumChannels();
	// if we're doing an IFFT, then we assume the out channels is <= in channels already
	if (out.getNumChannels() != numChannels*2 && !mInverse) {
		TTValue v = numChannels*2;
		out.setmaxNumChannels(v);
		out.setnumChannels(v);
	}
	
	if (vs != mVectorSize) {	
		mWorkArea.resize(vs);
		mWorkArea.assign(vs, 0);
		
		mCosSinTable.resize(vs);
		mCosSinTable.assign(vs, 0.0);
		
		mBuffer.resize(vs*2);
		mBuffer.assign(vs, 0.0);
		
		mVectorSize = vs;
		mRVectorSize = 1.0/(mVectorSize/2.0);
	}
	
	if (mInverse) {
		for (channel=0; channel<numChannels/2; channel++) {
			TTSampleValuePtr	inSampleReal		= in.sampleVectors[channel];
			TTSampleValuePtr	inSampleImaginary	= in.sampleVectors[channel*2+1];
			TTSampleValuePtr	outSample			= out.sampleVectors[channel];
			
			for (int i=0; i<vs; i++) {
				// mult by mRVectorSize to normalize the FFT
				mBuffer[i] = *inSampleReal++ * mRVectorSize;
				mBuffer[i+vs] = *inSampleImaginary++ * mRVectorSize;
			}
			cdft(mVectorSize, mInverseValue, &mBuffer[0], &mWorkArea[0], &mCosSinTable[0]);
			
			for (int i=0; i<vs; i++)
				*outSample++ = mBuffer[i];
		}
	}
	else {
		for (channel=0; channel<numChannels; channel++) {
			TTSampleValuePtr	inSample			= in.sampleVectors[channel];
			TTSampleValuePtr	outSampleReal		= out.sampleVectors[channel*2];
			TTSampleValuePtr	outSampleImaginary	= out.sampleVectors[channel*2+1];

			for (int i=0; i<vs; i++)
				mBuffer[i] = *inSample++;
			
			cdft(mVectorSize, mInverseValue, &mBuffer[0], &mWorkArea[0], &mCosSinTable[0]);

			for (int i=0; i<vs; i++) {
				*outSampleReal++ = mBuffer[i];
				*outSampleImaginary++ = mBuffer[i+vs];
			}
		}
	}

	return kTTErrNone;
}


TTErr TTfft::processReal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSize();;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	numChannels = in.getNumChannels();
	// if we're doing an IFFT, then we assume the out channels is <= in channels already
	if (out.getNumChannels() != numChannels*2 && !mInverse) {
		TTValue v = numChannels*2;
		out.setmaxNumChannels(v);
		out.setnumChannels(v);
	}
	
	if (vs != mVectorSize) {	
		mWorkArea.resize(vs);
		mWorkArea.assign(vs, 0);
		
		mCosSinTable.resize(vs);
		mCosSinTable.assign(vs, 0.0);
		
		mBuffer.resize(vs*2);
		mBuffer.assign(vs, 0.0);
		
		mVectorSize = vs;
		mRVectorSize = 1.0/(mVectorSize/2.0);
	}
	
	if (mInverse) {
		for (channel=0; channel<numChannels/2; channel++) {
			TTSampleValuePtr	inSampleReal		= in.sampleVectors[channel];
			TTSampleValuePtr	inSampleImaginary	= in.sampleVectors[channel*2+1];
			TTSampleValuePtr	outSample			= out.sampleVectors[channel];
			
			for (int i=0; i<vs; i++) {
				// mult by mRVectorSize to normalize the FFT
				mBuffer[i] = *inSampleReal++ * mRVectorSize;
				mBuffer[i+vs] = *inSampleImaginary++ * mRVectorSize;
			}
			rdft(mVectorSize, mInverseValue, &mBuffer[0], &mWorkArea[0], &mCosSinTable[0]);
			
			for (int i=0; i<vs; i++)
				*outSample++ = mBuffer[i];
		}
	}
	else {
		for (channel=0; channel<numChannels; channel++) {
			TTSampleValuePtr	inSample			= in.sampleVectors[channel];
			TTSampleValuePtr	outSampleReal		= out.sampleVectors[channel*2];
			TTSampleValuePtr	outSampleImaginary	= out.sampleVectors[channel*2+1];
			
			for (int i=0; i<vs; i++)
				mBuffer[i] = *inSample++;
			
			rdft(mVectorSize, mInverseValue, &mBuffer[0], &mWorkArea[0], &mCosSinTable[0]);
			
			for (int i=0; i<vs; i++) {
				*outSampleReal++ = mBuffer[i];
				*outSampleImaginary++ = mBuffer[i+vs];
			}
		}
	}
	
	return kTTErrNone;
}


