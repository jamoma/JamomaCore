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
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TrapezoidWindow::~TrapezoidWindow()
{
	;
}


TTErr TrapezoidWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// TODO: Add f attribute, easy to do based on similar stuff in Function Lib.
	//y = TTClip( (0.5/f) * (1 - fabs(2x-1)), 0., 1 )
	y = 1. - fabs(2.*x-1.);
	return kTTErrNone;
}


TTErr TrapezoidWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

