/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Expodec (Exponential Decay) Window Function Unit for Jamoma DSP
 *
 * @details This implements an exponential decay window that applies principles described here: @n
 * http://en.wikipedia.org/wiki/Exponential_decay @n
 * @n
 * This window is intended for microsound applications as described by Roads (2001 p 88-90).
 * Ratio variable allows this single class to produce BOTH expodec and rexpodec windows with options between.
 * Lambda variable is set so that the quietest point in the decay will be -60 dB.
 * @n
 * Where 0. <= x <= 1. and 0. <= mRatio <= 1.: @n
 * y = e^ ( ( 1 - ( x / mRatio ) ) * lambda )        : for the attack (approaching peak) @n
 * 	 = e^ ( ((x - mRatio) / (1 - mRatio)) * lambda ) : for the release (leaving peak)
 *
 * @authors Nathan Wolek, Tim Place, Trond Lossius
 *
 * @copyright © 2011 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTExpodecWindow.h"

#define thisTTClass ExpodecWindow
#define thisTTClassName		"expodec"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	addAttribute(Ratio, kTypeFloat64);
	addAttributeProperty(Ratio,	range,			TTValue(kTTEpsilon, 1.0));	// Avoid dividing by 0
	addAttributeProperty(Ratio,	rangeChecking,	TT("clip"));
	
	// Set Defaults:
	setAttributeValue(TT("ratio"), 0.);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


ExpodecWindow::~ExpodecWindow()
{
	;
}


TTErr ExpodecWindow::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64 lambda = log(0.001);  // window will begin/end at -60 dB, could eventually be controlled attribute
	
	if ( x <= mRatio ) {  // attack portion
		
		y = exp( ( 1 - ( x / mRatio ) ) * lambda );
		
		
	} else { // decay portion
		
		y = exp( ((x - mRatio) / (1 - mRatio)) * lambda );
		
	}
	
	TTLimit(y, 0.0, 1.0 ); // just in case 
	
	return kTTErrNone;
}


TTErr ExpodecWindow::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

