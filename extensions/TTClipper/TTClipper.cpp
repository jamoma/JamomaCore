/* 
 * TTClipper
 * Extension Class for TTBlue
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlueAPI.h"
#define thisTTClass TTClipper


/**	Hard-clip signals to a low and high bound. */
class TTClipper : public TTAudioObject {
	TTFloat64	lowBound;		///< Attribute: low bound for clipping
	TTFloat64	highBound;		///< Attribute: high bound for clipping
	
public:
	/**	Constructor. */
	TTClipper(TTUInt16 newMaxNumChannels)
		: TTAudioObject("audio.gain", newMaxNumChannels)
	{
		registerAttributeSimple(lowBound,	kTypeFloat64);
		registerAttributeSimple(highBound,	kTypeFloat64);
		
		setAttributeValue(TT("lowBound"), -1.0);
		setAttributeValue(TT("highBound"), -1.0);
		setProcessMethod(processAudio);
	}
	

	/**	Destructor. */
	~TTClipper(){;}
	
	
	/** Audio Processing Method */
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out)
	{
		TTUInt16		vs;
		TTSampleValue*	inSample;
		TTSampleValue*	outSample;
		TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);

		for(TTUInt16 channel=0; channel<numchannels; channel++){
			inSample = in.sampleVectors[channel];
			outSample = out.sampleVectors[channel];
			vs = in.getVectorSize();

			while(vs--)
				*outSample++ = TTClip(*inSample++, lowBound, highBound);
		}
		return kTTErrNone;
	}

};


TT_CLASS_SETUP("clipper", TTClipper);		// Register our class with the TTBlue environment

