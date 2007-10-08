//	TTCrossfadeObject
//	Crossfader 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTAudioObject.h"

/*
		enum selectors{										// Attribute Selectors
			k_shape,
			k_mode,
			k_position,
			k_shape_equalpower,
			k_shape_linear,
			k_mode_lookup,
			k_mode_calculate
		};
*/

@interface TTCrossfadeObject : TTAudioObject 
	{
		@public
		float		positionAttribute;
		long		shapeAttribute;
		long		modeAttribute;
		
		@private
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_crossfade::*FuncPtr)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;
	}

	- (id)		init;								// Constructor
	- (void)	dealloc;							// Destructor
	- (TTErr)	processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out;
@end
