/* 
 * Trapezoid Window Function Unit for Jamoma DSP
 * Copyright © 2010 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TrapezoidWindow.h"

#define thisTTClass TrapezoidWindow
#define thisTTClassName		"trapezoid"
#define thisTTClassTags		"audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	addAttribute(Fade, kTypeFloat64);
	addAttributeProperty(Fade,	range,			TTValue(0.0, 0.5));
	addAttributeProperty(Fade,	rangeChecking,	TT("clip"));
	
	// Set Defaults:
	setAttributeValue(TT("Fade"), 0.1);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TrapezoidWindow::~TrapezoidWindow()
{
	;
}


TTErr TrapezoidWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// Avoid dividing by 0:
	if (mFade==0.)
		y = 1.;
	else {
		y = (0.5/mFade) * (1 - fabs(2. * x-1));
		TTClip(y, 0.0, 1.0 );
	}
	return kTTErrNone;
}


TTErr TrapezoidWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

