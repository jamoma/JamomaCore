/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Hanning Window Function Unit for Jamoma DSP
 *
 * @details This implements a window function as described @
 http://local.wasp.uwa.edu.au/~pbourke/miscellaneous/windows/ @n
 hanning(x) = 0.5 + 0.5*cos(2*PI*(x-0.5)) @n
 *
 * @authors Nils Peters, Trond Lossius, Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2010 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTHanningWindow.h"

#define thisTTClass			HanningWindow
#define thisTTClassName		"hanning"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


HanningWindow::~HanningWindow()
{
	;
}


// hanning(x) = 0.5 + 0.5*cos(2*PI*(x-0.5))
TTErr HanningWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = 0.5 + 0.5*cos(kTTTwoPi*(x-0.5));
	return kTTErrNone;
}


TTErr HanningWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

