/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Nuttall Window Function Unit for Jamoma DSP
 *
 * @details This implements a window function as described at
 http://en.wikipedia.org/wiki/Window_function#Nuttall_window.2C_continuous_first_derivative @n
 *
 * @authors Nils Peters, Nathan Wolek, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTNuttallWindow.h"


#define thisTTClass			NuttallWindow
#define thisTTClassName		"nuttall"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


NuttallWindow::~NuttallWindow()
{
	;
}


TTErr NuttallWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = 0.3635819 - 0.4891775*cos(kTTTwoPi*x) + 0.1365995*cos(2*kTTTwoPi*x) - 0.0106411*cos(3*kTTTwoPi*x);
	return kTTErrNone;
}


TTErr NuttallWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

