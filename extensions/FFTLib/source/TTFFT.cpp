/* 
 * TTBlue Operator Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTOperator.h"

#define thisTTClass			TTFFT
#define thisTTClassName		"FFT"
#define thisTTClassTags		"audio, processor, math"


TT_AUDIO_CONSTRUCTOR
{
//	registerAttribute(TT("operator"), kTypeSymbol, &operatorAttribute, (TTSetterMethod)&TTOperator::setoperator);
//	registerAttributeWithSetter(operand, kTypeFloat64);
	
	// Set Defaults...
//	setAttributeValue(TT("operator"),	TT("+"));
//	setAttributeValue(TT("operand"),	1.0);
}


TTFFT::~TTFFT()
{
	;
}

/*
TTErr TTFFT::setoperator(const TTValue& newValue)
{
	operatorAttribute = newValue;
	if(operatorAttribute == TT("+"))
		setProcessMethod(processAdd);
	else if(operatorAttribute == TT("-"))
		setProcessMethod(processSubtract);
	else if(operatorAttribute == TT("*"))
		setProcessMethod(processMultiply);
	else if(operatorAttribute == TT("/"))
		setProcessMethod(processDivide);
	else if(operatorAttribute == TT("%"))
		setProcessMethod(processModulo);
	else
		return kTTErrInvalidValue;
	
	return kTTErrNone;
}
*/


TTErr TTOperator::processAddConstant(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample,
	*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		while(vs--)
			*outSample++ = *inSample++ + operand;
	}
	return kTTErrNone;
}

TTErr TTOperator::processAddSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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


