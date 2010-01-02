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
	registerAttributeWithSetter(fade, kTypeFloat64);

	// Set Defaults:
	setAttributeValue(TT("fade"),	0.1);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TrapezoidWindow::~TrapezoidWindow()
{
	;
}


TTErr TrapezoidWindow::setfade(const TTValue& newValue)
{
	fade = newValue;
	TTClip(fade, 0. , 0.5);
	return kTTErrNone;
}


TTErr TrapezoidWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// Avoid dividing by 0:
	if (fade==0.)
		y = 1.;
	else {
		y = (0.5/fade) * (1 - fabs(2. * x-1));
		TTClip(y, 0.0, 1.0 );
	}
	return kTTErrNone;
}


TTErr TrapezoidWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

