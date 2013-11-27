/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Trapezoid Window Function Unit for Jamoma DSP
 *
 * @details This implements a Trapezoid window using the following algorthim: @n
 * @n
 * Where 0. <= x <= 1. and 0. <= mAlpha <= 1.: @n
 * y	= x * twoOverAlpha				: for the attack @n
 *      = 1								: for the sustain @n
 *      = (1 - x) * twoOverAlpha		: for the release @n
 *
 * @authors Trond Lossius, Nathan Wolek, Tim Place, Nils Peters,
 *
 * @copyright Copyright © 2010 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTTrapezoidWindow.h"

#define thisTTClass TrapezoidWindow
#define thisTTClassName		"trapezoid"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	addAttribute(Alpha, kTypeFloat64);
	addAttributeProperty(Alpha,	range,			TTValue(kTTEpsilon, 0.5));	// Avoid dividing by 0
	addAttributeProperty(Alpha,	rangeChecking,	TT("clip"));
	
	// Set Defaults:
	setAttributeValue(TT("alpha"), 0.4);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TrapezoidWindow::~TrapezoidWindow()
{
	;
}


TTErr TrapezoidWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64 twoOverAlpha = 2. / mAlpha;
	TTFloat64 alphaOverTwo = mAlpha / 2.;
	
	if ( x < alphaOverTwo ) {  // attack portion
		
		y = x * twoOverAlpha;
		
	} else if ( x > ( 1 - alphaOverTwo ) ) { // release portion
		
	 	y = (1 - x) * twoOverAlpha;
		
	} else { // sustain portion
        
        y = 1.;
		
    }
	
	TTLimit(y, 0.0, 1.0 );

	return kTTErrNone;
}


TTErr TrapezoidWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

