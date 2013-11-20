/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Hamming Window Function Unit for Jamoma DSP
 *
 * @details The Hamming window is optimized to minimize the maximum (nearest) side lobe, giving it a height of about one-fifth that of the Hanning window.@n
 *
 * Implementation is according to @
 * http://local.wasp.uwa.edu.au/~pbourke/miscellaneous/windows/ @n
 * hamming(x) = 0.54 + 0.46*cos(2*PI*(x-0.5))
 *
 * @authors Trond Lossius, Tim Place, Nathan Wolek
 *
 * @copyright © 2010 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTHammingWindow.h"


#define thisTTClass			HammingWindow
#define thisTTClassName		"hamming"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


HammingWindow::~HammingWindow()
{
	;
}


TTErr HammingWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{	
	y = 0.54 + 0.46*cos(kTTTwoPi*(x-0.5));
	return kTTErrNone;
}


TTErr HammingWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

