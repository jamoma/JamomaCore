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

	TTBoolean		mInterpolated;				///< Flag indicating whether interpolation will be applied when gain is changed.
	
	TTChannelCount	mStoredStateNumChannels;	///< The number of channels that mute and solo states are currently stored for. This might be higher than #mMaxNumChannels.
	
	TTSampleVector	mChannelSolo;				///< solo status for each channel. Soloing takes presedence over muting.
	
	TTSampleVector	mChannelMute;				///< mute status for each channel
	
	TTSampleVector	gain;						///< Gain value for each channel, depends on current settings for mute and solo
	
	TTSampleVector	oldGain;					///< Previous gain value for each channel, used when interpolating to new settings.
	
	
	/**	Clear all current mute and solo settings
	 @return Returns a #TTErr error code.
	 */
	TTErr clear();
	
	
	/** Set boolean attribute determining whether linear interpolation is applied or not.
	 @param newValue			The new value that the interpolate attribute is to have.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setInterpolated(const TTValue& newValue);
	
	
	/**	Update gain values in response to current mute and solo settings
	 @return Returns a #TTErr error code.
	 */
	TTErr updateGains();
	
	
	/**	Set whether one of the channels is muted or not.
	 @param	input				Expects a #TTValue containing an array of two values: Channel number and flag indicating if it is to be muted or not.
	 @param	outputNotUsed		This argument is not used.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setChannelMute(const TTValue& aValue, TTValue&);
	
	
	/**	Set whether one of the channels is soloed or not.
	 @param	input				Expects a #TTValue containing an array of two values: Channel number and flag indicating if it is to be soloed or not.
	 @param	outputNotUsed		This argument is not used.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setChannelSolo(const TTValue& aValue, TTValue&);
	
	
	/** Get current mute settings for all channels as an array.
	 @param						Not used;
	 @param aMuteValue			Returns mute values for all channels as an array.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getChannelMute(const TTValue&, TTValue& aMuteValues);
	
	
	/** Get current solo settings for all channels as an array.
	 @param						Not used;
	 @param aSoloValue			Returns solo values for all channels as an array.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getChannelSolo(const TTValue&, TTValue& aSoloValues);
	
	
	/**	Receives notifications when there are changes to the inherited maxNumChannels attribute.  This allocates memory for mute, solo and gain so that each channel's previous values are remembered.		
	 @param	oldMaxNumChannels	The previous maximum number of channels.
	 @param	outputNotUsed		This argument is not used.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	
	
	/** If there is a need to store mute/solo information for a channel that is not yet tracked, the number of channels that information need to be stored for is increased.
	 @details #mStoredStateNumChannels can increase over the run of the application, but once expanded it will never decrease. This is needed in roder to be able to store the states for channels that the audio processing do not yet know of.
	 @param aDesiredChannel		The channel that it is desired to store information.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr increaseStoredStateNumChannels(TTChannelCount aDesiredChannel);
	
	
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
