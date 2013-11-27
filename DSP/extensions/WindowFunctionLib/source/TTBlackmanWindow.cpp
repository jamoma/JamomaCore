/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Blackman Window Function Unit for Jamoma DSP
 *
 * @details Implemented according to: @n
 * http://en.wikipedia.org/wiki/File:Window_function_(blackman).png @n
 * w = 0.42 - 0.5*cos(2*pi*k/(N-1)) + 0.08*cos(4*pi*k/(N-1));
 *
 * @authors Tim Place, Nathan Wolek, Trond Lossius
 *
 * @copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBlackmanWindow.h"


#define thisTTClass			BlackmanWindow
#define thisTTClassName		"blackman"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


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

