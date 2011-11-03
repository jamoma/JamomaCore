/* 
 * Blackman Window Function Unit for Jamoma DSP
 * Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBlackmanWindow.h"


#define thisTTClass			BlackmanWindow
#define thisTTClassName		"blackman"
#define thisTTClassTags		"audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


BlackmanWindow::~BlackmanWindow()
{
	;
}


TTErr BlackmanWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = 0.42 - 0.5 * cos(kTTTwoPi * x) + 0.08 * cos(4.0 * kTTPi * x);
	return kTTErrNone;
}


TTErr BlackmanWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

