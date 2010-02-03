/* 
 * Hamming Window Function Unit for Jamoma DSP
 * Copyright © 2010 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "HammingWindow.h"

#define thisTTClass			HammingWindow
#define thisTTClassName		"hamming"
#define thisTTClassTags		"audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


HammingWindow::~HammingWindow()
{
	;
}


// hanning(x) = 0.5 + 0.5*cos(2*PI*(x-0.5))
TTErr HammingWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = 0.54 + 0.46*cos(kTTwoTPi*(x-0.5));
	return kTTErrNone;
}


TTErr HammingWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

