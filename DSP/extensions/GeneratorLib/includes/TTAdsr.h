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


#ifndef __TT_ADSR_H__
#define __TT_ADSR_H__

#include "TTDSP.h"


/**	TTAdsr is an attack-decay-sustain-release envelope generator. 
 */
class TTAdsr : TTAudioObject {
	TTCLASS_SETUP(TTAdsr)

protected:

	TTFloat64	attack_ms;			///< Attack duration in milliseconds.
	TTInt32		attack_samples;		///< Attack duration in total number of samples.
	TTFloat64	attack_step;		///< Stepsize for each sample in the attack phase.
	TTFloat64	attack_step_db;		///< Stepasize in decibels for each sample in the attack phase.
	
	TTFloat64	decay_ms;			///< Decay duration in milliseconds.
	TTInt32		decay_samples;		///< Decay duration in total number of samples.
	TTFloat64	decay_step;			///< Stepsize for each sample during the decay phase.
	TTFloat64	decay_step_db;		///< Stepsize in decibels for each sample during the decay phase.
	
	TTFloat64	sustain_amp;		///< Sustain level as linear amplitude.
	TTFloat64	sustain_db;			///< Sustain level as decibel value.
	
	TTFloat64	release_ms;			///< Release duration in milliseconds.
	TTInt32		release_samples;	///< Release duration in total number of samples.
	TTFloat64	release_step;		///< Stepsize for each sample during the release phase.
	TTFloat64	release_step_db;	///< Stepsize in decibels for each sample during the release phase.
	
	TTSampleValue output;			///< Current envelope value as linear amplitude.
	TTSampleValue output_db;		///< Current envelope value as decibel value.
	
	TTInt16		eg_state;			///< The current state of the envelope. Tracks what envelope phase that we are currently in.
	TTBoolean	trigger;
	
	TTSymbol	attrMode;
	
	
	/** This method must be called when the sample rate change.
	 @return		#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr updateSampleRate(const TTValue&, TTValue&);

	
	/** Send a dictionary from Jamoma Graph to this object in order to pass a MidiNoteEvent or set attributes.
	
	 @details Sending a dictionary to this object may perform one of several functions.
		
		-# If the dictionary contains a MidiNoteEvent, then the midi note velocity
			(second item of the value array for the dictionary) is used to set the ADSR trigger 
			as on or off.
		-# For setting attributes, etc., we rely on the external system (e.g. Jamoma Graph) to
			implement the infrastructure.  By returning an error code if the dictionary is not a
			MidiNoteEvent, we indicate to the calling system that it is free to perform other 
			tasks with the dictionary.
	 
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	*/
	TTErr dictionary(const TTValue& input, TTValue& output);
	
	
	/** The Linear audio processing method use linear amplitude curves for all parts of the envelope.
	 @param inputs			The input audio vector to process. For this unit generator this is basically ignored.
	 @param outputs			The returned processed audio.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudioLinear(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/** The Exponential processing methods use exponential curves for all sections of the envelope.
	 @param inputs			The input audio vector to process. For this unit generator this is basically ignored.
	 @param outputs			The returned processed audio.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudioExponential(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/** The Hybrid processing method combines a linear attack with an exponential release.
	 @param inputs			The input audio vector to process. For this unit generator this is basically ignored.
	 @param outputs			The returned processed audio.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudioHybrid(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/**
	 @ingroup consts
	 */
	enum constants {
		NOISE_FLOOR = -120
	};
	
	
	/** Enumerations tracking the state of the envelope.
	 ingroup enums
	 */
	enum eg_states {
		k_eg_inactive,		///< The envelope is currently inactive (not being executed).
		k_eg_attack,		///< The envelope is currently in the attack phase.
		k_eg_decay,			///< The envelope is currently in the decay phase.
		k_eg_sustain,		///< The envelope is currently in the sustain phase.
		k_eg_release		///< The envelope is currently in the release phase.
	};
	
	
	/** Set the attack time for the enevelope.
	 @details The maximum attack amplitude is normalised to 0 dB.
	 @param newValue		The desired attack time in milliseconds.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setAttack(const TTValue& newValue);
	
	
	/** Set the decay time for the envelope.
	 @param newValue		The desired decay time in milliseconds.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setDecay(const TTValue& newValue);
	
	
	/** Set the signal level to use for the sustain, expressed in decibels.
	 @param newValue		The desired sustain level in decibels.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSustainDb(const TTValue& newValue);
	
	
	/** Get the signal level currently used for the sustain, measured in decibels.
	 @param returnedValue	Used to return the current sustain signal level in dB.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSustainDb(TTValue& returnedValue);
	
	
	/** Set the signal level to use for the sustain, expressed as linear amplitude.
	 @param newValue		The desired sustain level in decibels.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSustainAmp(const TTValue& newValue);
	
	
	/** Set the release time in milliseconds.
	 *param newValue		The desired release time in milliseconds.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setRelease(const TTValue& newValue);
	
	
	/**						Set the performance mode to use for the envelope.
	 @details				Possible options are 'exponential', 'linear' and 'hybrid'
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setMode(const TTValue& newValue);
};

#endif

