/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Kaiser Window Function Unit for Jamoma DSP
 *
 * @details This implements a window function as described @n
 https://ccrma.stanford.edu/~jos/sasp/Kaiser_Window.html @n
 http://en.wikipedia.org/wiki/Window_function#Kaiser_windows 
 *
 * @authors Nils Peters, Trond Lossius, Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTKaiserWindow.h"


#define thisTTClass			KaiserWindow
#define thisTTClassName		"kaiser"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	addAttributeWithSetter(Beta, kTypeFloat64);
	addAttributeWithSetter(Alpha, kTypeFloat64);
	
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


TTErr KaiserWindow::setAlpha(const TTValue& newValue)
{
	mAlpha = newValue;
	mBeta = mAlpha * kTTPi;
	mBesselIOofBeta = BesselFunctionI0(mBeta);
	// the following 3 lines can be used for testing; comment out when not in use
	//TTLogMessage("alpha: %f\n", mAlpha); 
	//TTLogMessage("beta: %f\n", mBeta); 
	//TTLogMessage("besselOfBeta: %f\n", mBesselIOofBeta); 
	return kTTErrNone;
}

TTErr KaiserWindow::setBeta(const TTValue& newValue)
{
	mBeta = newValue;
	mAlpha = mBeta / kTTPi;
	mBesselIOofBeta = BesselFunctionI0(mBeta);
	// the following 3 lines can be used for testing; comment out when not in use
	//TTLogMessage("alpha: %f\n", mAlpha); 
	//TTLogMessage("beta: %f\n", mBeta); 
	//TTLogMessage("besselOfBeta: %f\n", mBesselIOofBeta); 
	return kTTErrNone;
}

TTErr KaiserWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// rewritten on 26 April 2011 by Nathan Wolek
	
	TTFloat64	two_x_minusone = 2.0 * x - 1;
	TTFloat64	temp = 1.0 - (two_x_minusone * two_x_minusone);
	TTFloat64	temp2 = sqrt(temp);
	TTFloat64	temp3 = mBeta * temp2;
	TTFloat64	temp4 = BesselFunctionI0(temp3);

	y = temp4 / mBesselIOofBeta;
	return kTTErrNone;
}


TTErr KaiserWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

