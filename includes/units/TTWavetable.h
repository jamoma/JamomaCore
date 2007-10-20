/*!
	@header		TTDCBlock
				Licensed under the terms of the GNU LGPL.
	@copyright	Timothy Place
	@updated	2007-10-08	
*/

#import "TTAudioObject.h"
#import "TTAudioBuffer.h"

/*!
	@class			TTWavetable
	@abstract		Wavetable synthesizer
	@discussion 	This class is a good example of using a TTAudioBuffer object as a waveform.
*/
@interface TTWavetable : TTAudioObject 
{
	@public
		/*! @var frequencyAttribute		Frequency of the oscillator in Hertz. */
		TTFloat32						frequencyAttribute;
		/*! @var gainAttribute			Amplitude of the oscillator specified in decibels. */
		TTFloat32						gainAttribute;
		/*! @var gainValue				Amplitude of the oscillator specified directly. */
		TTFloat32						gainValue;
		/*! @var gainValue				Amplitude of the oscillator specified directly. */
		NSString*						waveformAttribute;
		
	@private
		/*! @var last_input Feedback values used for the audio filter */ 			
		double	 	last_input[TT_MAX_NUM_CHANNELS];
		/*! @var last_output Feedback values used for the audio filter */ 			
		double		last_output[TT_MAX_NUM_CHANNELS];

		TTAudioBuffer*					wavetable;
		double							index_delta;
		double							index;
}

		
/*!
	@method 	processAudioWithInput:andOutput:
	@abstract	Standard audio processing method for TTBlue objects.
	@discussion	This object can process N parallel channels of audio.  It is assumed that the number
				of inputs and outputs are the same, as are the vector sizes of those inputs and outputs.
	@param		audioIn			A pointer to a TTAudioSignal object that may contain any number of channels.
								This signal is considered the master, and thus it provides the vectorsize
								and number of channels should the two signals not be matched.
	@param		audioOut		A pointer to a TTAudioSignal object that has the output sample vectors.
	@result		Returns a TTBlue Error Code.  TODO: Perhaps we should check if the signals are matched and then
				return an error if they aren't?  Currently we are just returning TT_ERR_NONE all the time.
*/
- (TTErr)	processAudioWithInput:(TTAudioSignal *)audioIn andOutput:(TTAudioSignal *)audioOut;

@end

