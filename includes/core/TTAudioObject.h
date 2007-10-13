/*!
	@header		TTAudioObject
				The basis for all audio processing objects in the TTBlue API.
				TTBlue is licensed under the terms of the GNU LGPL.
	@copyright	Timothy Place
	@updated	2007-10-13	
*/

#import "TTAudioSignal.h"
#import "TTObject.h"


/*! @define		TT_MAX_NUM_CHANNELS 
	@abstract	Defines a maximum number of channels that TTBlue objects can reasonably expect to use.
	@discussion	This is a hold-over from some older implementations that allocate arrays statically for 
				processing multiple channels of audio.
				
				It is included at the moment for backwards compatibility in the code.  It should be
				respected by hosts of TTBlue objects, but its use in creating new TTBlue objects is
				heavily discouraged.
	@dependency	TTAudioSignal
	@deprecated	in version 0.3
*/ 
#define TT_MAX_NUM_CHANNELS 32


/*!
	@class		TTAudioObject
	@abstract	The required base-class from which all TTBlue audio processing objects must inherit.
	@discussion This object is the base-class for all TTBlue audio processing objects.  It includes 
				audio-specific functionality common to many/all audio processing contexts.  This includes
				maintaining an object's sample-rate (which may differ from the global sample-rate).
*/
@interface TTAudioObject : TTObject {
	@public

	@protected

		/*! @var sr		The sample-rate for this object in hertz. */
		long	sr;

		/*! @var srr	The reciprocal of the sample-rate (1/sr).  This is set automatically when the sr is set via the accessor. */
		double	srr;

		/*! @var srr	The sample-rate for this object in samples/ms.  In other words, sr/1000.  This is set automatically when the sr is set via the accessor. */
		double	srm;
		
	@private
		
}

/*!
	@method 	setSr:
	@abstract	The accessor for setting the sample-rate.
	@discussion	This method can be called directly, or it can be called by using the KVC setLong:forKey: method.
	@param		value			The sample-rate in hertz.
*/
- (void) setSr:(long)value;

@end
