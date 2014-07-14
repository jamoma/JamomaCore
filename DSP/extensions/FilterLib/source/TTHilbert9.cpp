/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTHilbert9 is a 9th-order Hilbert Transform filter built up from a 2-path allpass structure
 *
 * @details A 9th-order Hilber Transform filter built-up from allpass building blocks. Based on Multirate Signal Processing for Communication Systems, Chapter 10 and "The Digital All-Pass Filter: A Versatile Signal Processing Building Block" by REGALIA, MITRA, and P.VAIDYANATHAN, 1988. @n
 *  @n
 *  This filter is so-named because we base this filter on TTHalfband9 filter, which we transform to produce the phase quadrature by flipping coefficient signs and decoupling the output of the two paths. @n
 *  @n
 *  This particular Hilbert filter may be a bit too crude for many applications, as the distortion to the phase quadrature (perfect 90º) begins to distort somewhat rapidly as the frequencies at the input get further and further away from f_s/2. Because of this, a higher-order filter would be a better match for most applications. For example, TTHilbert17 will offer more accurate results, albeit at a higher computational cost. @n
 *  @n
 *  An additional caveat regards phase linearity with regard to the input signal. While the output phases of the real and imaginary signals from this filter are 90º to each other, the phase response of both in relation to the input signal is non-linear. To acheive a linear-phase version, a linear halfband filter needs to serve as the base from which to transform. E.g. TTHalfbandLinear33 could be modified to become TTHilbertLinear33. @n
 *  @n
 *  Current implementation does not perform resampling. As with the halfband filters, we could make a version of this object that has downsampling and upsampling (e.g. for inverse hilber transforms) built-in. @n
 *  @n
 *  At the moment, however, we do not have any applications in Jamoma which require the use of hilbert-transformed signals to be processed at a lower rate.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTHilbert9.h"

#define thisTTClass			TTHilbert9
#define thisTTClassName		"hilbert.9"
#define thisTTClassTags		"dspFilterLib, audio, processor, hilbert"
// no "filter" tag because this is a special case that produces two outputs for one input and doesn't fit the general filter schema

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mF0("allpass.1b"),
	mF2("allpass.1b"),
	mF1("allpass.1b"),
	mF3("allpass.1b"),
	mDelay("allpass.1a")
{
	TTChannelCount	initialMaxNumChannels = arguments;
	
	addMessage(clear);
	addUpdates(MaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
		
	// for the simple 1-sample delay, we set alpha (the feedback coefficient) to zero
	mDelay.set("alpha", 0.0);
	
	// These coefficients are sign-flipped copies from the TTHalfband9 filter
	mF0.set("alpha", -0.043646929608759);
	mF2.set("alpha", -0.399125646691078);
	
	mF1.set("alpha", -0.174628080915462);
	mF3.set("alpha", -0.749510679417446);
	
	setProcessMethod(processAudio);
}


TTHilbert9::~TTHilbert9()
{
}


TTErr TTHilbert9::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mF0.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF1.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF2.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF3.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mDelay.set(kTTSym_maxNumChannels, mMaxNumChannels);
	
	clear();
	return kTTErrNone;
}


TTErr TTHilbert9::clear()
{
	mF0.send(kTTSym_clear);
	mF1.send(kTTSym_clear);
	mF2.send(kTTSym_clear);
	mF3.send(kTTSym_clear);
	mDelay.send(kTTSym_clear);
	return kTTErrNone;
}


TTErr TTHilbert9::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	outReal = outputs->getSignal(0);
	TTAudioSignal&	outImaginary = outputs->getSignal(1);
	TTSampleValue*	inSample;
	TTSampleValue*	outRealSample;
	TTSampleValue*	outImaginarySample;
	TTChannelCount	numChannels = TTAudioSignal::getMinChannelCount(in, outReal, outImaginary);
	TTPtrSizedInt	channel;
	TTFloat64		temp_0;
	TTFloat64		x;
	TTUInt16		n;
	TTFloat64		delayOutput;
		
	for (channel=0; channel<numChannels; channel++) {
		n = in.getVectorSizeAsInt();
		
		inSample = in.mSampleVectors[channel];
		outRealSample = outReal.mSampleVectors[channel];
		outImaginarySample = outImaginary.mSampleVectors[channel];
		
		while (n--) {
			x = *inSample++;

			TTBASE(mF0, TTAllpass1b)->calculateValue(x,				temp_0,					channel);
			TTBASE(mF2, TTAllpass1b)->calculateValue(temp_0,			*outRealSample++,		channel);

			TTBASE(mDelay, TTAllpass1a)->calculateValue(x,			delayOutput,			channel);
			TTBASE(mF1, TTAllpass1b)->calculateValue(delayOutput,	temp_0,					channel);
			TTBASE(mF3, TTAllpass1b)->calculateValue(temp_0,			*outImaginarySample++,	channel);
		}
	}
	return kTTErrNone;
}

