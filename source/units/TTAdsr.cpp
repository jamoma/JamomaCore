

#include "TTadsr.h"

TTAdsr::TTAdsr(TTUInt8 newMaxNumChannels)
	: TTAudioObject("audio.adsr", newMaxNumChannels), output(0.), output_db(NOISE_FLOOR), 
	eg_state(k_eg_inactive), trigger(false)
{
	registerAttribute(TT("attack"), kTypeFloat64, NULL, (TTGetterMethod)&TTAdsr::getAttack, 
		(TTSetterMethod)&TTAdsr::setAttack);
	registerAttribute(TT("decay"), kTypeFloat64, NULL, (TTGetterMethod)&TTAdsr::getDecay, 
		(TTSetterMethod)&TTAdsr::setDecay);
	registerAttribute(TT("release"), kTypeFloat64, NULL, (TTGetterMethod)&TTAdsr::getRelease, 
		(TTSetterMethod)&TTAdsr::setRelease);
	registerAttribute(TT("sustain"), kTypeFloat64, NULL, (TTGetterMethod)&TTAdsr::getSustainAmp, 
		(TTSetterMethod)&TTAdsr::setSustainAmp);
	registerAttribute(TT("sustain_db"), kTypeFloat64, NULL, (TTGetterMethod)&TTAdsr::getSustainDb, 
		(TTSetterMethod)&TTAdsr::setSustainDb);
	registerAttribute(TT("trigger"), kTypeBoolean, &trigger);
	
	setAttributeValue(TT("attack"), 50.);
	setAttributeValue(TT("decay"), 100.);
	setAttributeValue(TT("sustain_db"), -6.);
	setAttributeValue(TT("release"), 500.);
	
	setProcess((TTProcessMethod)&TTAdsr::processAudio);
	//setProcess((TTProcessMethodOneChan)&TTAdsr::processAudio);
}

TTAdsr::~TTAdsr()
{
	;
}

/** Defines a setter function, the first parameter creates a function prefixed with the word set
 * in front of it.  The second parameter is the prefix for the variable that has been defined in the class */
#define DEFINE_SETPARAM(functionName, prefix)	TTErr TTAdsr::set ## functionName (const TTValue& newValue) { \
	prefix ## _ms = TTClip<TTFloat64>( prefix ## _ms, 1., 60000.); \
	prefix ## _samples = long(( prefix ## _ms / 1000.) * sr); \
	prefix ## _step = 1.0 / prefix ## _samples; \
	prefix ## _step_db = -(double(NOISE_FLOOR) / prefix ## _samples); \
	return kTTErrNone; \
	}

/** Defines a getter function, the first parameter creates a function prefixed with the word get
 * in front of it.  The second parameter is the prefix for the variable that has been defined in the class */
#define DEFINE_GETPARAM(functionName, prefix)	TTErr TTAdsr::get ## functionName (TTValue& value) { \
	value = prefix ## _ms; \
	return kTTErrNone; \
	}
	
/** Define a setter and getter function */
#define DEFINE_PARAM(functionName, prefix) DEFINE_SETPARAM(functionName, prefix) \
	DEFINE_GETPARAM(functionName, prefix)


DEFINE_PARAM(Attack, attack);
DEFINE_PARAM(Decay, decay);
DEFINE_PARAM(Release, release);

TTErr TTAdsr::setSustainAmp(const TTValue& newValue)
{
	sustain_amp = newValue;
	sustain_db = linearToDb(sustain_amp);
	return kTTErrNone;
}

TTErr TTAdsr::getSustainAmp(TTValue& value)
{
	value = sustain_amp;
	return kTTErrNone;
}

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
	
TTErr TTAdsr::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	TTSampleValue *inSample, *outSample;
	short vs = in.getVectorSize();

	inSample = in.sampleVectors[0];
	outSample = out.sampleVectors[0];
	while(vs--) {
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
