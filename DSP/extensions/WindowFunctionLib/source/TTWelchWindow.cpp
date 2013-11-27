/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Welch Window Function Unit for Jamoma DSP
 *
 * @details This implements a window function as described @n
 * http://local.wasp.uwa.edu.au/~pbourke/miscellaneous/windows/ @n
 * welch(i) = 1.0 - ((i-n/2)/(n/2)) * ((i-n/2)/(n/2))
 *
 * @authors Tim Place, Nathan Wolek, Trond Lossius
 *
 * @copyrightCopyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTWelchWindow.h"

#define thisTTClass			WelchWindow
#define thisTTClassName		"welch"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


WelchWindow::~WelchWindow()
{
	;
}


// welch(i) = 1.0 - ((i-n/2)/(n/2)) * ((i-n/2)/(n/2))
TTErr WelchWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	//w = ((x-1.0/2.0)/(1.0/2.0)); 
	
	//TTFloat64	w;
	//w = (x-0.5)/0.5; 	
	//y = 1.0 - (w * w);
	// [NP]: since we assume that n=1, we can simplified to:
	y = 4.0 * (-x*x + x);
	return kTTErrNone;
}


TTErr WelchWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

