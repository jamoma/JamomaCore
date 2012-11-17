/* 
 * Clipper
 * Extension Class for Jamoma DSP
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"

#define thisTTClass				Clipper
#define thisTTClassName			"clipper"
#define thisTTClassDescription	"Limits the amplitude of signals."
#define thisTTClassTags			"audio, processor"


/**	Hard-clip signals to a low and high bound. */
class Clipper : TTAudioObject {
	TTCLASS_SETUP(Clipper)

	TTFloat64	mLowBound;		///< Attribute: low bound for clipping
	TTFloat64	mHighBound;		///< Attribute: high bound for clipping
	
	
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
	{
		y = x;
		TTLimit(y, mLowBound, mHighBound);
		return kTTErrNone;
	}
	
	
	/** Audio Processing Method */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TT_WRAP_CALCULATE_METHOD(calculateValue);
	}
	
};


TT_AUDIO_CONSTRUCTOR_EXPORT(Clipper)
{
	addAttribute(LowBound,	kTypeFloat64);
	addMessageProperty(LowBound,	description,	TT("Sets the minimum amplitude."));
	
	addAttribute(HighBound,	kTypeFloat64);
	addMessageProperty(LowBound,	description,	TT("Sets the maximum amplitude."));
	
	setAttributeValue(TT("lowBound"), -1.0);	
	setAttributeValue(TT("highBound"), 1.0);
	
	setProcessMethod(processAudio);	
}


Clipper::~Clipper()
{;}
