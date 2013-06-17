/** @file
 *
 * @ingroup audioGraphPlugtastic
 *
 * @brief Manage output signals from Plugtastic 
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "PlugtasticOutput.h"

#define thisTTClass			PlugtasticOutput
#define thisTTClassName		"plugtastic.output"
#define thisTTClassTags		"audio, output, plugtastic"


TT_AUDIO_CONSTRUCTOR
{
	registerAttribute(TT("linearGain"),	kTypeFloat64,	&mGain);
	registerAttribute(TT("gain"),		kTypeFloat64,	NULL,	(TTGetterMethod)&PlugtasticOutput::getGain, (TTSetterMethod)&PlugtasticOutput::setGain);
	registerAttribute(TT("midiGain"),	kTypeFloat64,	NULL,	(TTGetterMethod)&PlugtasticOutput::getMidiGain, (TTSetterMethod)&PlugtasticOutput::setMidiGain);
	
	// Set Defaults...
	setAttributeValue(TT("linearGain"),	1.0);
	setProcessMethod(processAudio);
}


PlugtasticOutput::~PlugtasticOutput()
{
	;
}


TTErr PlugtasticOutput::setGain(const TTValue& newValue)
{
	mGain = TTDecibelsToLinearGain(newValue);
	return kTTErrNone;
}


TTErr PlugtasticOutput::getGain(TTValue& value)
{
	value = TTLinearGainToDecibels(mGain);
	return kTTErrNone;
}


TTErr PlugtasticOutput::setMidiGain(const TTValue& newValue)
{
	mGain = TTMidiToLinearGain(newValue);
	return kTTErrNone;
}


TTErr PlugtasticOutput::getMidiGain(TTValue& value)
{
	value = TTLinearGainToMidi(mGain);
	return kTTErrNone;
}


TTErr PlugtasticOutput::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample,
	*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		while (vs--)
			*outSample++ = (*inSample++) * mGain;
	}
	return kTTErrNone;
}

