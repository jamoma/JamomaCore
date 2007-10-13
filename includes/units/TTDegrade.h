/*!
	@header		TTDegrade
				Licensed under the terms of the GNU LGPL.
	@copyright	Timothy Place
	@updated	2007-10-13
*/

#import "TTAudioObject.h"

/*!
	@class			TTDegradeObject
	@abstract		Audio processor that distorts a signal in ugly digital ways.
	@discussion 	This class is a good example of a very simple audio filter that can process any 
					number of parallel audio channels, with just a couple of attributes.
*/

@interface TTDegradeObject : TTAudioObject 
{
	@public
		/*! @var bitdepthAttribute 		Use a range of 1 to 24 to emulate the specified bitdepth. */ 			
		long				bitDepthAttribute;

		/*! @var srRatioAttribute		Use a range of 0.0 to 1.0 to specify a ratio of the current sample-rate to emulate in order to intentional aliasing artifacts. */ 			
		float				srRatioAttribute;
		
		@private
		short				bit_shift;
		float				accumulator;
		TTSampleValue		output;
}

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
- (TTErr) processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out;

@end
