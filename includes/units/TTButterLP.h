/*!
	@header		TTButterLP
				Licensed under the terms of the GNU LGPL.
	@copyright	Trond Lossius/Timothy Place
	@updated	2007-10-15	
*/

#import "TTAudioObject.h"


/*!
	@class			TTButterLP
	@abstract		2nd order Butterworth low pass filter.
	@discussion 	This class is a good example of a very simple audio filter that can process any 
					number of parallel audio channels.
	@classdesign	This class implements the pseudo-standard 'clear' method.
*/

@interface TTDCBlockObject : TTAudioObject 
{
	@public
		/*! @var bypassAttribute		pass audio through unprocessed. */
		long		bypassAttribute;
		
		/*! @var freqAttribute		Low pass filter cut off frequency. */ 			
		float		freqAttribute;

	@private
		/*! @var x1 Feedback values used for the audio filter */ 			
		double	 	x1[TT_MAX_NUM_CHANNELS];
		/*! @var x2 Feedback values used for the audio filter */ 			
		double	 	x2[TT_MAX_NUM_CHANNELS];
		/*! @var y1 Feedback values used for the audio filter */ 			
		double		y1[TT_MAX_NUM_CHANNELS];
		/*! @var y2 Feedback values used for the audio filter */ 			
		double		y2[TT_MAX_NUM_CHANNELS];
}

/*!
	@method 	clear
	@abstract	Resets the Butterworth filter.
	@discussion	This algorithm uses a 2nd order IIR filter, meaning that it relies on feedback.  If the filter should
				not be producing any signal (such as turning audio off and then back on in a host) or if the
				feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
				neccesary to clear the filter by calling this method.
	@result		Returns a TTBlue Error Code.
*/
- (TTErr)	clear;

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
