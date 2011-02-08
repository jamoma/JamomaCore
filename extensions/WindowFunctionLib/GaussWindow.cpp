/* 
 * Gauss Window Function Unit for Jamoma DSP
 * Copyright © 2011 by Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "GaussWindow.h"

#define thisTTClass GaussWindow
#define thisTTClassName		"gauss"
#define thisTTClassTags		"audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


GaussWindow::~GaussWindow()
{
	;
}


TTErr GaussWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// NOTE: function would go here, nothing just yet
	return kTTErrNone;
}


TTErr GaussWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

