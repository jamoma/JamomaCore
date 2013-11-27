/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Rectangular Window Function Unit for Jamomoma DSP
 *
 * @details This implements a window function which basically does nothing:
 y = 1.0 @n
 * @n
 * It is the same as the Matlab function: @n
 * w=rectwin(L) @n
 * Which is an alias for: @n
 * w = ones(L,1); @n
 * http://www.mathworks.com/help/toolbox/signal/ref/rectwin.html @n
 * @n
 * This can be expressed also as: @n
 * w(n) = 1, 0 <= n <= N-1 @n
 * @n
 * Values outside of this range could be set to zero, though (at least in theory)
 * we should never receive a request for out-of-range values. @n
 *
 * @authors Trond Lossius, Tim Place, Nathan Wolek, Nils Peters
 *
 * @copyright Copyright © 2009 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTRectangularWindow.h"

#define thisTTClass RectangularWindow
#define thisTTClassName		"rectangular"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


RectangularWindow::~RectangularWindow()
{
	;
}


TTErr RectangularWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = 1.0;
	return kTTErrNone;
}


TTErr RectangularWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

