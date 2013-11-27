/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Bartlett Window Function Unit for Jamoma DSP
 *
 * @details The Bartlett window is a triangular window with zero-valued end-points: @n
 *
 * @authors Trond Lossius, Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2010 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBartlettWindow.h"

#define thisTTClass BartlettWindow
#define thisTTClassName		"bartlett"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


BartlettWindow::~BartlettWindow()
{
	;
}


TTErr BartlettWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = 1. - fabs(2.*x-1.);
	return kTTErrNone;
}


TTErr BartlettWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

