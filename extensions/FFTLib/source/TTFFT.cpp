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


TT_AUDIO_CONSTRUCTOR,
	mVectorSize(0)
{
	setProcessMethod(process);
}


TTfft::~TTfft()
{
	;
}

// prototype of function from fftsg.c
extern "C" void rdft(int n, int isgn, double *a, int *ip, double *w);
const int kTTFFTPerformFFT = 1;
const int kTTFFTPerformIFFT = -1;


TTErr TTfft::process(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSize();;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	numChannels = in.getNumChannels();
	if (out.getNumChannels() != numChannels*2) {
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
	}
	
	for (channel=0; channel<numChannels; channel++) {
		TTSampleValuePtr	inSample			= in.sampleVectors[channel];
		TTSampleValuePtr	outSampleReal		= out.sampleVectors[channel*2];
		TTSampleValuePtr	outSampleImaginary	= out.sampleVectors[channel*2+1];

		for (int i=0; i<vs; i++)
			mBuffer[i] = *inSample++;
		
		rdft(mVectorSize, kTTFFTPerformFFT, &mBuffer[0], &mWorkArea[0], &mCosSinTable[0]);

		for (int i=0; i<vs; i++) {
			*outSampleReal++ = mBuffer[i];
			*outSampleImaginary++ = mBuffer[i+vs];
		}
	}

	return kTTErrNone;
}


