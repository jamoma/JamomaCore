/*!
	@header		TTDownsample
				Licensed under the terms of the GNU LGPL.
	@copyright	Timothy Place
	@updated	2007-10-13
*/

#import "TTAudioObject.h"

/*!
	@class			TTDownsampleObject
	@abstract		Reduce a vector's size / effective sample-rate.
	@discussion 	This class does some things a bit differently than most TTBlue objects.  For one thing, it will output at 
					a different sample-rate and vector-size than it receives at its input.
*/

@interface TTDownsample : TTAudioObject
{
	@public		
		/*! @var 	factorAttribute 	Factor by which to downsample.  For example a factor of 2 will provide 1/2 the effective sample-rate. */ 			
		long		factorAttribute;
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
