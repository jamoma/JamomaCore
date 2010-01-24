/* 
 * Jamoma DSP FFT Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTFFT.h"

#define thisTTClass			TTfft
#define thisTTClassName		"fft"
#define thisTTClassTags		"audio, processor, math"


TT_AUDIO_CONSTRUCTOR
{
	;
}


TTfft::~TTfft()
{
	;
}


TTErr TTfft::process(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in1 = inputs->getSignal(0);
	TTAudioSignal&	in2 = inputs->getSignal(1);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*in1Sample,
					*in2Sample,
					*outSample;
	TTUInt16		numChannels;
	TTUInt16		channel;
	
	if(in2.getNumChannels() == 1){				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in2.getNumChannels();
		for(channel=0; channel<numChannels; channel++){
			in1Sample = in1.sampleVectors[channel];
			in2Sample = in2.sampleVectors[0];
			outSample = out.sampleVectors[channel];
			vs = in1.getVectorSize();
			while(vs--)
				*outSample++ = *in1Sample++ + *in2Sample++;
		}		
	}
	else{										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, out);
		for(channel=0; channel<numChannels; channel++){
			in1Sample = in1.sampleVectors[channel];
			in2Sample = in2.sampleVectors[channel];
			outSample = out.sampleVectors[channel];
			vs = in1.getVectorSize();
			while(vs--)
				*outSample++ = *in1Sample++ + *in2Sample++;
		}
	}
	return kTTErrNone;
}


