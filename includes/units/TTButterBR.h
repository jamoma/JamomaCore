/*!
	@header		TTButterBR
				Licensed under the terms of the GNU LGPL.
	@copyright	Trond Lossius
	@updated	2007-10-18
*/

#import "TTAudioObject.h"


/*!
	@class			TTButterBR
	@abstract		2nd order Butterworth band reject filter.
	@discussion 	This class is a good example of a multichannel parallel process 
					with an additional (optional) control signal
	@classdesign	This class implements the pseudo-standard 'clearMessage'.
*/

@interface TTButterBRObject : TTAudioObject 
{
	@public
		/*! @var bypassAttribute		pass audio through unprocessed. */
		long		bypassAttribute;
		
		/*! @var frequencyAttribute		Center frequency. */ 			
		float		frequencyAttribute;
		
		/*! @var qAttribute				Filter resonance. */ 			
		float		qAttribute;

	@private
		/*! @var x1 Feedback values used for the audio filter */ 			
		double	 	x1[TT_MAX_NUM_CHANNELS];
		/*! @var x2 Feedback values used for the audio filter */ 			
		double	 	x2[TT_MAX_NUM_CHANNELS];
		/*! @var y1 Feedback values used for the audio filter */ 			
		double		y1[TT_MAX_NUM_CHANNELS];
		/*! @var y2 Feedback values used for the audio filter */ 			
		double		y2[TT_MAX_NUM_CHANNELS];
		// filter coefficients
		double		a0, a1, a2, b1, b2;
}

/*!
	@method 	clearMessage
	@abstract	Resets the Butterworth filter.
	@discussion	This algorithm uses a 2nd order IIR filter, meaning that it relies on feedback.  If the filter should
				not be producing any signal (such as turning audio off and then back on in a host) or if the
				feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
				neccesary to clear the filter by calling this method.
	@result		Returns a TTBlue Error Code.
*/
- (TTErr)	clearMessage;

/*!
	@method 	processAudioWithInput:andOutput:
	@abstract	Standard audio processing method for TTBlue objects.
	@discussion	This object can process N parallel channels of audio.  Each matching pair of inlets and outlets
				are filtered.  If an additional input is received, with no matching output, that input will be
				used as a control signal set the frequency attribute.
	@param		audioIn			A pointer to a TTAudioSignal object that may contain any number of channels.
								This signal is considered the master, and thus it provides the vectorsize
								and number of channels should the two signals not be matched.
	@param		audioOut		A pointer to a TTAudioSignal object that has the output sample vectors.
	@result		Returns a TTBlue Error Code.
*/

- (void) calculateCoefficients

/*!
	@method 	calculateCoefficients
	@abstract	Calculate filter coefficients.
	@discussion	This object recalculates the coefficients to use in the 2nd order IIR filter depending on current
				center frequency, resonance and sample rate.
	@result		Should it return a TTBlue Error Code?
*/


- (TTErr)	processAudioWithInput:(TTAudioSignal *)audioIn andOutput:(TTAudioSignal *)audioOut;

@end
