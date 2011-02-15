/* 
 * Tukey Window Function Unit for Jamoma DSP
 * Copyright © 2011 by Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TukeyWindow.h"

#define thisTTClass TukeyWindow
#define thisTTClassName		"tukey"
#define thisTTClassTags		"audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TukeyWindow::~TukeyWindow()
{
	;
}


TTErr TukeyWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// NOTE: function would go here, nothing just yet
	return kTTErrNone;
}


TTErr TukeyWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

