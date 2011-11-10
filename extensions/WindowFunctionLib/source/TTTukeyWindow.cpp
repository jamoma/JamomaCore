/* 
 * Tukey Window Function Unit for Jamoma DSP
 * Copyright ¬© 2011 by Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTTukeyWindow.h"

#define thisTTClass TukeyWindow
#define thisTTClassName		"tukey"
#define thisTTClassTags		"audio, processor, function, window"


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

