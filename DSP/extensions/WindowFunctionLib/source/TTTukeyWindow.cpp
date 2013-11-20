/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Tukey Window Function Unit for Jamoma DSP
 *
 * @details	This implements the Tukey window function described here: @n
 
 * http://en.wikipedia.org/wiki/File:Window_function_(Tukey;_alpha_%3D_0.5).png @n
 * This is alternate implementation of what Roads (1996 p 170, 2001 p 88) typically refers to as a quasi-Gaussian window.
 * It is easier to ensure that x and y values will scale properly with this formula as opposed to the one given by Roads. @n
 * @n
 * Where 0. <= x <= 1. and 0. <= mAlpha <= 1.: @n
 * y	= 0.5 * (1 + cos ( pi * ((twoOverAlpha * x) - 1)))					: for the attack @n
 *      = 1																	: for the sustain @n
 *      = 0.5 * (1 + cos ( pi * ((twoOverAlpha * x) - twoOverAlpha + 1)))	: for the release @n
 *
 * @authors Nathan Wolek, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTTukeyWindow.h"

#define thisTTClass TukeyWindow
#define thisTTClassName		"tukey"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	addAttribute(Alpha, kTypeFloat64);
	addAttributeProperty(Alpha,	range,			TTValue(kTTEpsilon, 1.0));	// Avoid dividing by 0
	addAttributeProperty(Alpha,	rangeChecking,	TT("clip"));
	
	// Set Defaults:
	setAttributeValue(TT("alpha"), 0.5);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TukeyWindow::~TukeyWindow()
{
	;
}


TTErr TukeyWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64 twoOverAlpha = 2. / mAlpha;
	TTFloat64 alphaOverTwo = mAlpha / 2.;
	
	if ( x < alphaOverTwo ) {  // attack portion
		
		y = 0.5 * (1 + cos( kTTPi * ((twoOverAlpha * x) - 1)));
		
	} else if ( x > ( 1 - alphaOverTwo) ) { // release portion
		
		y = 0.5 * (1 + cos( kTTPi * ((twoOverAlpha * x) - twoOverAlpha + 1)));
		
	} else { // sustain portion
		
		y = 1.;
		
	}
	
	TTLimit(y, 0.0, 1.0 ); // just in case 
	
	return kTTErrNone;
}


TTErr TukeyWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

