/*!
	@header		TTAudioObject
				The basis for all audio processing objects in the TTBlue API.
				TTBlue is licensed under the terms of the GNU LGPL.
	@copyright	Timothy Place
	@updated	2007-10-08	
*/

#import "TTObject.h"
#import "TTAudioSignal.h"


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


@interface TTAudioObject : TTObject {
	// because this code is used in audio-contexts, with high-performance demands, all members
	// are made public for direct access in audio processing loops
	@public

	@protected
	long	sr;
	double	srr;
	double	srm;
		
	@private
		
}

- (void) setSr:(long)value;

@end
