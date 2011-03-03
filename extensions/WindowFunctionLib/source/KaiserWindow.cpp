/* 
 * Kaiser Window Function Unit for Jamoma DSP
 * Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "KaiserWindow.h"


#define thisTTClass			KaiserWindow
#define thisTTClassName		"kaiser"
#define thisTTClassTags		"audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	addAttributeWithSetter(Beta, kTypeFloat64);
	
	setAttributeValue(TT("beta"), 6.0);

	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


KaiserWindow::~KaiserWindow()
{
	;
}


TTFloat64 KaiserWindow::BesselFunctionI0(TTFloat64 x)
{
	double y = 1.0;
	double u = 1.0;
	double halfx = x * 0.5;
	double temp;
	long i = 1;
	
	while (u > kTTEpsilon) {
		temp = halfx/(double)i;
		temp *= temp;
		u *= temp;
		y += u;
		i++;
	}
	return y;
}


TTErr KaiserWindow::setBeta(const TTValue& newValue)
{
	mBeta = newValue;
	mBesselIOofBeta = BesselFunctionI0(mBeta);
	return kTTErrNone;
}


// hanning(x) = 0.5 + 0.5*cos(2*PI*(x-0.5))
TTErr KaiserWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
//	double wn;
//	double two_n_over_m_minus_one;
		
//	for (i = 0; i < size; i++) {
//		two_n_over_m_minus_one = ((2.0 * i) / (double)size) - 1;
//		wn = buffer_besselfn_I0(beta * sqrt(1.0 - (two_n_over_m_minus_one * two_n_over_m_minus_one))) / mBesselIOofBeta;
//		x->b_samples[i] *= wn;
//	}
	
	y = BesselFunctionI0(mBeta * sqrt(1.0 - ((2.0*x) * (2.0*x))))   /   mBesselIOofBeta;
	
//	y = 0.54 + 0.46*cos(kTTTwoPi*(x-0.5));
	return kTTErrNone;
}


TTErr KaiserWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

