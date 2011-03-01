/* 
 * Expodec Window Function Unit for Jamoma DSP
 * Copyright © 2011 by Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "ExpodecWindow.h"

#define thisTTClass ExpodecWindow
#define thisTTClassName		"expodec"
#define thisTTClassTags		"audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	addAttribute(Peak, kTypeFloat64);
	addAttributeProperty(Peak,	range,			TTValue(kTTEpsilon, 0.5));	// Avoid dividing by 0
	addAttributeProperty(Peak,	rangeChecking,	TT("clip"));
	
	// Set Defaults:
	setAttributeValue(TT("peak"), 0.);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


ExpodecWindow::~ExpodecWindow()
{
	;
}


TTErr ExpodecWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64 lambda = Math.log(0.001);  // window will begin/end at -60 dB, could eventually be controlled attribute
	
	if ( x <= mPeak ) {  // attack portion
		
		y = exp( ( 1 - ( x / mPeak ) ) * lambda );
		
		
	} else { // decay portion
		
		y = exp( ((x - mPeak) / (1 - mPeak)) * lambda );
		
	}
	
	TTLimit(y, 0.0, 1.0 ); // just in case 
	
	return kTTErrNone;
}


TTErr ExpodecWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

