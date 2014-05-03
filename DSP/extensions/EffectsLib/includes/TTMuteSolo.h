/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief ##TTMutesolo mutes and soloes channels.
 *
 * @details If a channel is simultaneously muted and soloed, soloing takes presedence.
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2014, Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTMUTE_SOLO_H__
#define __TTMUTE_SOLO_H__

#include "TTDSP.h"


/**	#TTMutesolo mutes and soloes individual channels of the input audio signal.
 @details Soloing takes presedence over muting.
 */
class TTMutesolo : public TTAudioObjectBase {
	TTCLASS_SETUP(TTMutesolo)

protected:

	TTBoolean		mInterpolated;	///< Flag indicating whether interpolation will be applied when gain is changed.
	
	TTSampleVector	mSolo;			///< solo status for each channel. Soloing takes presedence over muting.
	
	TTSampleVector	mMute;			///< mute status for each channel
	
	TTSampleVector	gain;			///< Gain value for each channel, depends on current settings for mute and solo
	
	TTSampleVector	oldGain;			///< Previous gain value for each channel, used when interpolating to new settings.
	
	
	/**	Clear all current mute and solo settings
	 @return Returns a TTErr error code.
	 */
	TTErr clear();
	
	
	/** Set boolean attribute determining whether linear interpolation is applied or not.
	 @param newValue			The new value that the interpolate attribute is to have.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setInterpolated(const TTValue& newValue);
	
	
	/**	Update gain values in response to current mute and solo settings
	 @return Returns a TTErr error code.
	 */
	TTErr updateGains();
	
	
	/**	Receives notifications when there are changes to the inherited maxNumChannels attribute.  This allocates memory for mute, solo and gain so that each channel's previous values are remembered.		*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	
	
	/**	A standard audio processing method as used by TTBlue objects.	*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/** Alternative audio processing method that might be used temporarily when mute or solo settings has been changed in order to interpolate linearly to the new gain value over one signal vector.
	 @param	inputs				Pointer to array of input audio signals.
	 @param outputs				Pointer to array of processaed audio signals.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudioInterpolated(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	
	/**	Unit testing.	*/
	TTErr test(TTValue& returnedTestInfo);
};


#endif // __TTMUTE_SOLO_H__
