/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Blackman-Harris Window Function Unit for Jamoma DSP
 *
 * @details The Blackman-Harris is a generalization of the Hamming family, produced by adding more shifted sinc functions, meant to minimize side-lobe levels. @n
 *
 * @authors Nils Peters, Trond Lossius, Tim Place, Nathan Wolek
 *
 * @copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBlackmanHarrisWindow.h"


#define thisTTClass			BlackmanHarrisWindow
#define thisTTClassName		"blackmanHarris"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


BlackmanHarrisWindow::~BlackmanHarrisWindow()
{
	;
}


TTErr BlackmanHarrisWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = 0.35875 - 0.48829*cos(kTTTwoPi*x) + 0.14128*cos(2*kTTTwoPi*x) - 0.01168*cos(3*kTTTwoPi*x);
	return kTTErrNone;
}


TTErr BlackmanHarrisWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

