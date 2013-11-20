/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Rosenberg Glottal Pulse Window Function Unit for Jamoma DSP
 *
 * @details This implements a window function as described here: @n
 * https://ccrma.stanford.edu/~jos/sasp/Kaiser_Window.html @n
 * http://en.wikipedia.org/wiki/Window_function#Kaiser_windows @n
 * @n
 * This window can be used as a glottal pulse in voice and speech synthesis.
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2013 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTRosenbergGlottalPulseWindow.h"


#define thisTTClass			RosenbergGlottalPulseWindow
#define thisTTClassName		"rosenbergGlottalPulse"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window, voice, speech"


TT_AUDIO_CONSTRUCTOR
{
	addAttribute(Ratio, kTypeFloat64);
	addAttributeProperty(Ratio,	range,			TTValue(kTTEpsilon, 1.0-kTTEpsilon));	// Avoid dividing by 0
	addAttributeProperty(Ratio,	rangeChecking,	TT("clip"));
	
	// Set Defaults:
	setAttributeValue(TT("ratio"), 0.6);

	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


RosenbergGlottalPulseWindow::~RosenbergGlottalPulseWindow()
{
	;
}


TTErr RosenbergGlottalPulseWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	if ( (x>=0.) && (x<=mRatio) )
		y = 0.5 * ( 1.0 - cos((kTTPi*x)/mRatio) );
	else if ( (x>mRatio) && (x<=1.) )
		y = cos(kTTPi*(x-mRatio)/(2*(1.0-mRatio)));
	else
		y = 0.;
	return kTTErrNone;
}


TTErr RosenbergGlottalPulseWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

