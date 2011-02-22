/* 
 * Tukey Window Function Unit for Jamoma DSP
 * Copyright ¬© 2011 by Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TukeyWindow.h"

#define thisTTClass TukeyWindow
#define thisTTClassName		"tukey"
#define thisTTClassTags		"audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	addAttribute(Fade, kTypeFloat64);
	addAttributeProperty(Fade,	range,			TTValue(kTTEpsilon, 0.5));	// Avoid dividing by 0
	addAttributeProperty(Fade,	rangeChecking,	TT("clip"));
	
	// Set Defaults:
	setAttributeValue(TT("fade"), 0.1);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TukeyWindow::~TukeyWindow()
{
	;
}


TTErr TukeyWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64 oneovermFade = 1 / mFade;
	
	if ( x < mFade ) {  // attack portion
		
		y = 0.5 * (1 + cos( kTTPi * ((oneovermFade * x) - 1)));
		
	} else if ( x > ( 1 - mFade) ) { // release portion
		
		y = 0.5 * (1 + cos( kTTPi * ((oneovermFade * x) - oneovermFade + 1)));
		
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

