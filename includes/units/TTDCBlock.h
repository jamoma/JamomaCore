/*!
	@header		TTDCBlock
				Licensed under the terms of the GNU LGPL.
	@copyright	Timothy Place
	@updated	2007-10-08	
*/

#import "TTAudioObject.h"


/*!
	@class			TTDCBlockObject
	@abstract		Audio processor that filters out DC Offsets from an input.
	@discussion 	This class is a good example of a very simple audio filter that can process any 
					number of parallel audio channels.  It has no attributes.
	@classdesign	This class implements the pseudo-standard 'clear' method.
*/

@interface TTDCBlockObject : TTAudioObject 
{
	@private
		/*! @var last_input Feedback values used for the audio filter */ 			
		double	 	last_input[TT_MAX_NUM_CHANNELS];
		/*! @var last_output Feedback values used for the audio filter */ 			
		double		last_output[TT_MAX_NUM_CHANNELS];
}

- (id)		init;								// Constructor
- (void)	dealloc;							// Destructor

/*!
	@method 	clear
	@abstract	Resets the DC-Blocking filter.
	@discussion	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
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
	@param		signals_in		A pointer to a TTAudioSignal object that may contain any number of channels.
								This signal is considered the master, and thus it provides the vectorsize
								and number of channels should the two signals not be matched.
	@param		signals_out		A pointer to a TTAudioSignal object that has the output sample vectors.
	@result		Returns a TTBlue Error Code.  TODO: Perhaps we should check if the signals are matched and then
				return an error if they aren't?  Currently we are just returning TT_ERR_NONE all the time.
*/
- (TTErr)	processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out;

@end
