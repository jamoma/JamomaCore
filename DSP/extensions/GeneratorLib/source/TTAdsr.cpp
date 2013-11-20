/** @file
 *
 * @ingroup dspGeneratorLib
 *
 * @brief GeneratorLib: Generate classic ADSR envelope (attack, decay, sustain, release).
 *
 * @details
 *
 * @authors Tim Place, Dave Watson, Trond Lossius
 *
 * @copyright Copyright © 2009 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAdsr.h"

#define thisTTClass TTAdsr
#define thisTTClassName		"adsr"
#define thisTTClassTags		"dspGeneratorLib, audio, generator, envelope"


TT_AUDIO_CONSTRUCTOR
, output(0.), output_db(NOISE_FLOOR), eg_state(k_eg_inactive), trigger(false), attrMode("linear")
{
	registerAttribute(TT("attack"), kTypeFloat64, &attack_ms, (TTSetterMethod)&TTAdsr::setAttack);
	registerAttribute(TT("decay"), kTypeFloat64, &decay_ms, (TTSetterMethod)&TTAdsr::setDecay);
	registerAttribute(TT("release"), kTypeFloat64, &release_ms, (TTSetterMethod)&TTAdsr::setRelease);
	registerAttribute(TT("linearSustain"), kTypeFloat64, &sustain_amp, (TTSetterMethod)&TTAdsr::setSustainAmp);
	registerAttribute(TT("sustain"), kTypeFloat64, NULL, (TTGetterMethod)&TTAdsr::getSustainDb, (TTSetterMethod)&TTAdsr::setSustainDb);
	registerAttribute(TT("trigger"), kTypeBoolean, &trigger);
	registerAttribute(TT("mode"), kTypeSymbol, &attrMode, (TTSetterMethod)&TTAdsr::setMode);

	addUpdates(SampleRate);
	addMessageWithArguments(dictionary);

	setAttributeValue(TT("attack"), 50.);
	setAttributeValue(TT("decay"), 100.);
	setAttributeValue(TT("sustain"), -6.);
	setAttributeValue(TT("release"), 500.);
	setAttributeValue(TT("mode"), TT("hybrid"));	// <-- sets the process method
}


TTAdsr::~TTAdsr()
{
	;
}


TTErr TTAdsr::dictionary(const TTValue& input, TTValue& output)
{
	TTDictionaryPtr	d = NULL;
	TTSymbol		schema;
	
	input.get(0, (TTPtr*)(&d));
	schema = d->getSchema();

	if (schema == TT("MidiNoteEvent")) {
		TTValue	v;
		TTErr	err;
		TTUInt8	velocity;
	
		err = d->getValue(v);
		if (!err) {
			v.get(1, velocity);
			if (velocity)
				trigger = true;
			else
				trigger = false;
		}
		return err;
	}
	else
		return kTTErrInvalidType;
}


TTErr TTAdsr::updateSampleRate(const TTValue&, TTValue&)
{
	TTValue	v;

	v = attack_ms;
	setAttack(v);

	v = decay_ms;
	setDecay(v);

	v = release_ms;
	setRelease(v);

	return kTTErrNone;
}


TTErr TTAdsr::setAttack(const TTValue& newValue)
{
	attack_ms = TTClip((TTFloat64)newValue, 1.0, 60000.0);
	attack_samples = long((attack_ms / 1000.0) * sr);
	attack_step = 1.0 / attack_samples;
	attack_step_db = -(double(NOISE_FLOOR) / attack_samples);
	return kTTErrNone;
}


TTErr TTAdsr::setDecay(const TTValue& newValue)
{
	decay_ms = TTClip((TTFloat64)newValue, 1.0, 60000.0);
	decay_samples = long((decay_ms / 1000.0) * sr);
	decay_step = 1.0 / decay_samples;
	decay_step_db = -(double(NOISE_FLOOR) / decay_samples);
	return kTTErrNone;
}


TTErr TTAdsr::setRelease(const TTValue& newValue)
{
	release_ms = TTClip((TTFloat64)newValue, 1.0, 60000.0);
	release_samples = long((release_ms / 1000.0) * sr);
	release_step = 1.0 / release_samples;
	release_step_db = -(double(NOISE_FLOOR) / release_samples);
	return kTTErrNone;
}


TTErr TTAdsr::setSustainAmp(const TTValue& newValue)
{
	sustain_amp = newValue;
	sustain_db = TTLinearGainToDecibels(sustain_amp);
	return kTTErrNone;
}

TTErr TTAdsr::setSustainDb(const TTValue& newValue)
{
	sustain_db = newValue;
	sustain_amp = TTDecibelsToLinearGain(sustain_db);
	return kTTErrNone;
}

TTErr TTAdsr::getSustainDb(TTValue& value)
{
	value = TTLinearGainToDecibels(sustain_amp);
	return kTTErrNone;
}


TTErr TTAdsr::setMode(const TTValue& newValue)
{
	attrMode = newValue;
	
	if (attrMode == TT("exponential"))
		setProcessMethod(processAudioExponential);
	else if (attrMode == TT("hybrid"))
		setProcessMethod(processAudioHybrid);
	else
		setProcessMethod(processAudioLinear);
		
	return kTTErrNone;
}


TTErr TTAdsr::processAudioLinear(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue*	inSample = NULL;
	TTSampleValue*	outSample;
	TTUInt16		vs = out.getVectorSizeAsInt();
	bool			checkAudioTrigger = false;

	// TODO: Is there a decent way to do this without having to check this every single vector?
	if (inputs->numAudioSignals) {
		checkAudioTrigger = true;
		inSample = in.mSampleVectors[0];
	}
	outSample = out.mSampleVectors[0];

	while (vs--) {
		if (checkAudioTrigger)
			trigger = (TTBoolean)(*inSample++ > 0.5);

		if (trigger) {
			if (eg_state == k_eg_inactive || eg_state == k_eg_release)
				eg_state = k_eg_attack;
		} else {
			if (eg_state != k_eg_inactive && eg_state != k_eg_release)
				eg_state = k_eg_release;
		}

		switch(eg_state) {
			case k_eg_attack:
				output += attack_step;
				if (output >= 1.) {
					output = 1.;
					eg_state = k_eg_decay;
				}
				break;
			case k_eg_decay:
				output -= decay_step;
				if (output <= sustain_amp) {
					eg_state = k_eg_sustain;
					output = sustain_amp;
				}
				break;
			case k_eg_sustain:

				break;

			case k_eg_release:
				output -= release_step;
				if (output <= 0.) {
					eg_state = k_eg_inactive;
					output = 0.;
				}
				break;
		}
		*outSample++ = output;
	}

	return kTTErrNone;
}


TTErr TTAdsr::processAudioExponential(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue*	inSample = NULL;
	TTSampleValue*	outSample;
	TTUInt16		vs = out.getVectorSizeAsInt();
	bool			checkAudioTrigger = false;

	// TODO: Is there a decent way to do this without having to check this every single vector?
	if (inputs->numAudioSignals) {
		checkAudioTrigger = true;
		inSample = in.mSampleVectors[0];
	}
	outSample = out.mSampleVectors[0];

	while (vs--) {
		if (checkAudioTrigger)
			trigger = (TTBoolean)(*inSample++ > 0.5);

		if (trigger) {
			if (eg_state == k_eg_inactive || eg_state == k_eg_release)
				eg_state = k_eg_attack;
		} else {
			if (eg_state != k_eg_inactive && eg_state != k_eg_release)
				eg_state = k_eg_release;
		}

		switch(eg_state) {
			case k_eg_attack:						// ATTACK
				output_db += attack_step_db;			// Increment the output
				if (output_db >= 0.0) {						// If we've hit the top of the attack,
					eg_state = k_eg_decay;				// start the decay stage
					output = 1.0;						// Make sure we didn't go over 1.0
				}
				else
					output = TTDecibelsToLinearGain(output_db);
				break;
			case k_eg_decay:						// DECAY
				output_db -= decay_step_db;
				output = TTDecibelsToLinearGain(output_db);	// Decrement the output
				if (output <= sustain_amp) {				// If we've hit the bottom of the decay,
					eg_state = k_eg_sustain;			// start the sustain stage
					output = sustain_amp;				// Lock in the sustain value
				}
				break;
			case k_eg_sustain:						// SUSTAIN
				break;									// leave it alone

			case k_eg_release:						// RELEASE
				output_db -= release_step_db;
				if (output_db <= NOISE_FLOOR) {						// If we've hit the basement,
					eg_state = k_eg_inactive;			// deactivate the eg
					output = 0.0;						// Make sure we didn't dip too low
				}
				else
					output = TTDecibelsToLinearGain(output_db);		// Decrement the output
				break;
		}
		*outSample++ = output;
	}

	return kTTErrNone;
}


// 'hybrid' is linear attack (especially for short times) and a exponential release

TTErr TTAdsr::processAudioHybrid(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue*	inSample = NULL;
	TTSampleValue*	outSample;
	TTUInt16		vs = out.getVectorSizeAsInt();
	bool			checkAudioTrigger = false;

	// TODO: Is there a decent way to do this without having to check this every single vector?
	if (inputs->numAudioSignals) {
		checkAudioTrigger = true;
		inSample = in.mSampleVectors[0];
	}
	outSample = out.mSampleVectors[0];

	while (vs--) {
		if (checkAudioTrigger)
			trigger = (TTBoolean)(*inSample++ > 0.5);

		if (trigger) {
			if (eg_state == k_eg_inactive || eg_state == k_eg_release)
				eg_state = k_eg_attack;
		} 
		else {
			if (eg_state != k_eg_inactive && eg_state != k_eg_release)
				eg_state = k_eg_release;
		}

		switch (eg_state) {
			case k_eg_attack:						// ATTACK
				output += attack_step;
				if (output >= 1.0) {
					output = 1.0;
					output_db = 0.0;
					eg_state = k_eg_decay;
				}
				else
					output_db = TTLinearGainToDecibels(output);
				break;
			case k_eg_decay:						// DECAY
				output_db -= decay_step_db;
				output = TTDecibelsToLinearGain(output_db);	// Decrement the output
				if (output <= sustain_amp) {				// If we've hit the bottom of the decay,
					eg_state = k_eg_sustain;			// start the sustain stage
					output = sustain_amp;				// Lock in the sustain value
				}
				break;
			case k_eg_sustain:						// SUSTAIN
				break;									// leave it alone

			case k_eg_release:						// RELEASE
				output_db -= release_step_db;
				if (output_db <= NOISE_FLOOR) {						// If we've hit the basement,
					eg_state = k_eg_inactive;			// deactivate the eg
					output = 0.0;						// Make sure we didn't dip too low
				}
				else
					output = TTDecibelsToLinearGain(output_db);		// Decrement the output
				break;
		}
		*outSample++ = output;
	}

	return kTTErrNone;
}

