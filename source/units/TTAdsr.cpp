/* 
 * TTBlue Cycling Ramp Generator
 * Copyright © 2008, Timothy Place & Dave Watson
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAdsr.h"
#define thisTTClass TTAdsr


TTAdsr::TTAdsr(TTUInt16 newMaxNumChannels)
	: TTAudioObject("audio.adsr", newMaxNumChannels), output(0.), output_db(NOISE_FLOOR), 
	eg_state(k_eg_inactive), trigger(false), attrMode(TT("linear"))
{
	registerAttribute(TT("attack"), kTypeFloat64, &attack_ms, (TTSetterMethod)&TTAdsr::setAttack);
	registerAttribute(TT("decay"), kTypeFloat64, &decay_ms, (TTSetterMethod)&TTAdsr::setDecay);
	registerAttribute(TT("release"), kTypeFloat64, &release_ms, (TTSetterMethod)&TTAdsr::setRelease);
	registerAttribute(TT("linearSustain"), kTypeFloat64, &sustain_amp, (TTSetterMethod)&TTAdsr::setSustainAmp);
	registerAttribute(TT("sustain"), kTypeFloat64, NULL, (TTGetterMethod)&TTAdsr::getSustainDb, (TTSetterMethod)&TTAdsr::setSustainDb);
	registerAttribute(TT("trigger"), kTypeBoolean, &trigger);
	registerAttribute(TT("mode"), kTypeSymbol, &attrMode, (TTSetterMethod)&TTAdsr::setMode);
	
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessageSimple(updateSr);

	setAttributeValue(TT("attack"), 50.);
	setAttributeValue(TT("decay"), 100.);
	setAttributeValue(TT("sustain"), -6.);
	setAttributeValue(TT("release"), 500.);
	setAttributeValue(TT("mode"), TT("linear"));	// <-- sets the process method
}

TTAdsr::~TTAdsr()
{
	;
}


TTErr TTAdsr::updateSr()
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


#ifdef USE_MACRO_ACCESSORS
/** Defines a setter function, the first parameter creates a function prefixed with the word set
 * in front of it.  The second parameter is the prefix for the variable that has been defined in the class */
#define DEFINE_SETPARAM(functionName, prefix)	TTErr TTAdsr::set ## functionName (const TTAttribute&, const TTValue& newValue) { \
	prefix ## _ms = TTClip<TTFloat64>( prefix ## _ms, 1., 60000.); \
	prefix ## _samples = long(( prefix ## _ms / 1000.) * sr); \
	prefix ## _step = 1.0 / prefix ## _samples; \
	prefix ## _step_db = -(double(NOISE_FLOOR) / prefix ## _samples); \
	return kTTErrNone; \
	}

/** Defines a getter function, the first parameter creates a function prefixed with the word get
 * in front of it.  The second parameter is the prefix for the variable that has been defined in the class */
#define DEFINE_GETPARAM(functionName, prefix)	TTErr TTAdsr::get ## functionName (const TTAttribute&, TTValue& value) { \
	value = prefix ## _ms; \
	return kTTErrNone; \
	}
	
/** Define a setter and getter function */
#define DEFINE_PARAM(functionName, prefix) DEFINE_SETPARAM(functionName, prefix) \
	DEFINE_GETPARAM(functionName, prefix)


DEFINE_PARAM(Attack, attack);
DEFINE_PARAM(Decay, decay);
DEFINE_PARAM(Release, release);

#else // using old fashioned not-generated-by-a-macro accessors


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

#endif 


TTErr TTAdsr::setSustainAmp(const TTValue& newValue)
{
	sustain_amp = newValue;
	sustain_db = linearToDb(sustain_amp);
	return kTTErrNone;
}

/*
TTErr TTAdsr::getSustainAmp(const TTAttribute&, TTValue& value)
{
	value = sustain_amp;
	return kTTErrNone;
}
*/

TTErr TTAdsr::setSustainDb(const TTValue& newValue)
{
	sustain_db = newValue;
	sustain_amp = dbToLinear(sustain_db);
	return kTTErrNone;
}

TTErr TTAdsr::getSustainDb(TTValue& value)
{
	value = linearToDb(sustain_amp);
	return kTTErrNone;
}


TTErr TTAdsr::setMode(const TTValue& newValue)
{
	attrMode = newValue;
	if(attrMode == TT("exponential"))
		setProcessMethod(processAudioExponential);
	else
		setProcessMethod(processAudioLinear);
	return kTTErrNone;
}

/*
TTErr TTAdsr::processAudio(TTAudioSignal& out)
{
	TTSampleValue *outSample;
	short vs = out.vs;

	while(vs--) {
		
		if(trigger) {
			if(eg_state == k_eg_inactive || eg_state == k_eg_release)
				eg_state = k_eg_attack;
		} else {
			if(eg_state != k_eg_inactive && eg_state != k_eg_release)
				eg_state = k_eg_release;
		}
		
		switch(eg_state) {
			case k_eg_attack:
				output += attack_step;
				if(output >= 1.) {
					output = 1.;
					eg_state = k_eg_decay;
				}
				break;
			case k_eg_decay:
				output -= decay_step;
				if(output <= sustain_amp) {
					eg_state = k_eg_sustain;
					output = sustain_amp;
				}
				break;
			case k_eg_sustain:
			
				break;
				
			case k_eg_release:
				output -= release_step;
				if(output <= 0.) {
					eg_state = k_eg_inactive;
					output = 0.;
				}
				break;
		}
		*outSample++ = output;
	}
	
	
	return kTTErrNone;
}
*/
	
TTErr TTAdsr::processAudioLinear(TTAudioSignal& in, TTAudioSignal& out)
{
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		vs = in.getVectorSize();
	bool			checkAudioTrigger = false;

	// If the two signals are the same instance, then we know that only an output signal has been passed
	// So in that case we use the control-rate trigger instead of an audio-rate trigger.
	// TODO: Is there a decent way to do this without having to check this every single vector?
	if(&in != &out)
		checkAudioTrigger = true;

	inSample = in.sampleVectors[0];
	outSample = out.sampleVectors[0];
	
	while(vs--) {
		if(checkAudioTrigger)
			trigger = (TTBoolean)(*inSample++ > 0.5);
		
		if(trigger) {
			if(eg_state == k_eg_inactive || eg_state == k_eg_release)
				eg_state = k_eg_attack;
		} else {
			if(eg_state != k_eg_inactive && eg_state != k_eg_release)
				eg_state = k_eg_release;
		}
		
		switch(eg_state) {
			case k_eg_attack:
				output += attack_step;
				if(output >= 1.) {
					output = 1.;
					eg_state = k_eg_decay;
				}
				break;
			case k_eg_decay:
				output -= decay_step;
				if(output <= sustain_amp) {
					eg_state = k_eg_sustain;
					output = sustain_amp;
				}
				break;
			case k_eg_sustain:
			
				break;
				
			case k_eg_release:
				output -= release_step;
				if(output <= 0.) {
					eg_state = k_eg_inactive;
					output = 0.;
				}
				break;
		}
		*outSample++ = output;
	}
	
	return kTTErrNone;
}


TTErr TTAdsr::processAudioExponential(TTAudioSignal& in, TTAudioSignal& out)
{
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		vs = in.getVectorSize();
	bool			checkAudioTrigger = false;

	// If the two signals are the same instance, then we know that only an output signal has been passed
	// So in that case we use the control-rate trigger instead of an audio-rate trigger.
	// TODO: Is there a decent way to do this without having to check this every single vector?
	if(&in != &out)
		checkAudioTrigger = true;

	inSample = in.sampleVectors[0];
	outSample = out.sampleVectors[0];
	
	while(vs--) {
		if(checkAudioTrigger)
			trigger = (TTBoolean)(*inSample++ > 0.5);
		
		if(trigger) {
			if(eg_state == k_eg_inactive || eg_state == k_eg_release)
				eg_state = k_eg_attack;
		} else {
			if(eg_state != k_eg_inactive && eg_state != k_eg_release)
				eg_state = k_eg_release;
		}
		
		switch(eg_state){
			case k_eg_attack:						// ATTACK
				output_db += attack_step_db;			// Increment the output
				if (output_db >= 0.0){						// If we've hit the top of the attack,
					eg_state = k_eg_decay;				// start the decay stage
					output = 1.0;						// Make sure we didn't go over 1.0
				}
				else
					output = dbToLinear(output_db);
				break;
			case k_eg_decay:						// DECAY
				output_db -= decay_step_db;
				output = dbToLinear(output_db);	// Decrement the output
				if (output <= sustain_amp){				// If we've hit the bottom of the decay,
					eg_state = k_eg_sustain;			// start the sustain stage
					output = sustain_amp;				// Lock in the sustain value
				}
				break;
			case k_eg_sustain:						// SUSTAIN
				break;									// leave it alone
							
			case k_eg_release:						// RELEASE
				output_db -= release_step_db;
				if (output_db <= NOISE_FLOOR){						// If we've hit the basement,
					eg_state = k_eg_inactive;			// deactivate the eg
					output = 0.0;						// Make sure we didn't dip too low
				}
				else
					output = dbToLinear(output_db);		// Decrement the output
				break;
		}
		*outSample++ = output;
	}
	
	return kTTErrNone;
}

