/* 
 * Clipper
 * Extension Class for Jamoma DSP
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"

#define thisTTClass			TTClipper
#define thisTTClassName		"clipper"
#define thisTTClassTags		"audio, processor"


/**	Hard-clip signals to a low and high bound. */
class TTClipper : TTAudioObject {
	TTCLASS_SETUP(TTClipper)

	TTFloat64	lowBound;		///< Attribute: low bound for clipping
	TTFloat64	highBound;		///< Attribute: high bound for clipping
	
	
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
	{
		y = TTClip(x, lowBound, highBound);
		return kTTErrNone;
	}
	
	
	/** Audio Processing Method */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TT_WRAP_CALCULATE_METHOD(calculateValue);
	}
	
};


TT_AUDIO_CONSTRUCTOR_EXPORT
{
	registerAttributeSimple(lowBound,	kTypeFloat64);
	registerAttributeSimple(highBound,	kTypeFloat64);
	
	setAttributeValue(TT("lowBound"), -1.0);
	setAttributeValue(TT("highBound"), -1.0);
	setProcessMethod(processAudio);	
}


TTClipper::~TTClipper()
{;}
