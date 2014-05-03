/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief #TTGain adjusts adio gain
 * 
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * License: This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_GAIN_H__
#define __TT_GAIN_H__

#include "TTDSP.h"


/**	TTGain is an simple audio processor that adjusts the gain of an input audio signal.
 */
class TTGain : public TTAudioObjectBase {
	TTCLASS_SETUP(TTGain)

private:
	
	TTFloat64		oldGain;		///< Temporarily stored old gain value, required for linear interpolation.
	
protected:

	TTFloat64		mGain;			///< Linear gain to be applied to the input signal.
	
	TTBoolean		mInterpolated;	///< Flag indicating whether interpolation will be applied when gain is changed.
	
	
	/**	A standard audio processing method as used by TTBlue objects.
	 @param	inputs				Pointer to array of input audio signals.
	 @param outputs				Pointer to array of processaed audio signals.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/** Alternative audio processing method that might be used temporarily when gain value has been changed in order to interpolate linearly to the new gain value over one signal vector.
	 @param	inputs				Pointer to array of input audio signals.
	 @param outputs				Pointer to array of processaed audio signals.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudioInterpolated(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/** Set boolean attribute determining whether linear interpolation is applied or not.
	 @param newValue			The new value that the interpolate attribute is to have.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setInterpolated(const TTValue& newValue);
	
	
	/** Set the gain using dB units.
	 @param newValue			The new gain value, expressed in dB units.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setGain(const TTValue& newValue);
	
	
	/** Get current gain in dB units.
	 @param value				Used to return the current gain value, expressed in dB units.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getGain(TTValue& value);
	
	
	/** Set the gain using MIDI units.
	 @param newValue			The new gain value, expressed in MIDI units.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setMidiGain(const TTValue& newValue);
	
	
	/** Retreive current gain in MIDI units.
	 @param value				Used to return the current gain vallue, expressed in MIDI units.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getMidiGain(TTValue& value);
	
	
	/** Gain unit test.
	 @param returnedTestInfo	The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);

};


#endif // __TT_GAIN_H__
