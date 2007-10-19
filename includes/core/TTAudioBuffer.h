/*!
	@header		TTAudioBuffer
				A shared buffer object for audio.
				TTBlue is licensed under the terms of the GNU LGPL.
	@copyright	Timothy Place
	@updated	2007-10-19
*/

#import "TTAudioSignal.h"


// The TTAudioBuffer class is not intended to be directly exposed to a user, but rather included
// and referenced from within other TTBlue classes

// TODO:
// extern hash table, "bufferName" : "bufferObject"


@interface TTAudioBuffer : TTAudioObject 
{
	@public
		TTSampleVector		contents;				// made public so it can be accessed with speed
		TTUInt32			lengthSamples;			// length of the buffer in samples (also available for speed)
		// short					channels;
		// attribute_value_discrete	loop_start_file;		// loop start indicated in file
		// attribute_value_discrete	loop_end_file;			// loop end indicated in file
	@private
		TTFloat64			lengthMs;			// length of the buffer in milliseconds
		TTBoolean			localContents;		// flags true if we are using the internal buffer
}

- (id)				init;								// Constructor
- (id)				initWithNumSamples:(TTUInt32)numSamples;
- (void)			dealloc;							// Destructor

- (void)			setBuffer:(TTAudioBuffer*)newBuffer;
- (TTSampleValue)	peekAt:(TTUInt32)index;
- (void)			pokeAt:(TTUInt32)index value:(TTSampleValue)newValue;
- (void)			fillWithFunction:(NSString*)functionName;
- (void)			fillWithFunction:(NSString*)functionName usingFirstParameter:(TTFloat64)param1 andSecondParameter:(TTFloat64)param2;
- (void)			clear;

@end

