/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Gauss Window Function Unit for Jamoma DSP
 *
 * @details This implements the Gauss window function described here: @n
 http://en.wikipedia.org/wiki/File:Window_function_(gauss).png @n
 Be aware that when higher values are used for mSigma, minimum sample value will approach -17 dB @n
 @n
 Where 0. <= x <= 1. and 0. <= mSigma <= 0.5: @n
 superscript = -0.5 * ( ( (2 * x) - 1 ) / mSigma )^2 @n
 y = e^ superscript @n
 *
 * @authors Nathan Wolek, Tim Place, Trond Lossius
 *
 * @copyright © 2011 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGaussWindow.h"

#define thisTTClass GaussWindow
#define thisTTClassName		"gauss"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	addAttribute(Sigma, kTypeFloat64);
	addAttributeProperty(Sigma,	range,			TTValue(kTTEpsilon, 0.5));	// Avoid dividing by 0
	addAttributeProperty(Sigma,	rangeChecking,	TT("clip"));
	
	// Set Defaults:
	setAttributeValue(TT("sigma"), 0.4);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);

}

GaussWindow::~GaussWindow()
{
	;
}

TTErr GaussWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64 superscript = -0.5 * pow( ( (2. * x) - 1. ) / mSigma, 2 );
	
	y = exp(superscript);
	
	TTLimit(y, 0.0, 1.0 ); // just in case 
	
	return kTTErrNone;
}

TTErr GaussWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}