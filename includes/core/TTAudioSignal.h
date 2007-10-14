/*!
	@header		TTAudioSignal
				The basis for all audio passing in the TTBlue API.
				This class is kept free from any dependencies so that it can be used in a 
				variety of contexts without creating problems.
				TTBlue is licensed under the terms of the GNU LGPL.
	@copyright	Timothy Place
	@updated	2007-10-13
*/

//#import "TTObject.h"


/*!
	@class		TTAudioSignal
	@abstract	An object containing a set of audio vectors.
	@discussion This object serves as the primary mechanism for passing audio between TTBlue objects.  
				It contains a set of audio vectors, specifically pointers to TTAudioSample values.
				
				Because this code is used in audio-contexts, with high-performance demands, all members
				are made public for direct access in audio processing loops.
*/
@interface TTAudioSignal : NSObject {
	@public
		/*! @var sr 			Sample Rate for this signal.  Every channel in a signal must have the same sample-rate */
		long			sr;

		/*! @var vs 			Vector Size for this signal.  Every channel in a signal must have the same vector-size. */
		long			vs;

		/*! @var maxNumChannels	The number of audio channels for which memory has been allocated. */	
		short			maxNumChannels;

		/*! @var numChannels	The number of audio channels that have valid sample values stored in them. */
		short			numChannels;

		/*! @var vectors		An array of pointers to the first sample in each vector */
		float			**vectors;
}

/*!
	@method 	initWithMaxNumChannels:
	@abstract	Initialize the object, defining a maximum number of audio channels that can be used.
	@discussion	This method allocates memory for the audio vectors and sets maxNumChannels accordingly.
	@param		howMany			The maximum number of audio channels that this signal will be able to represent.
	@result		The instance pointer (id) for this object.
*/
- (id)			initWithMaxNumChannels:(long)howMany;

/*!
	@method 	setSamplesForChannel:withVector:
	@abstract	Assigns a vector of sample values to a channel in this signal.
	@discussion	The vector member of this class simply holds a pointer, not a copy of the data.  This makes the 
				operation of this method (and others) fast, but also means that care should be taken to ensure
				that the data being pointed to by this signal is valid, and does not become invalid during the
				lifetime of the signal.
				
				It is the responsibility of the user of this method to ensure that the sample-rate and vector-size
				are also set correctly.
	@param		channel			The channel number (zero-based) to assign the vector to.
	@param		vector			A pointer to the first sample in a vector of samples.
	@result		An error code.
*/
- (long)		setSamplesForChannel:(long)channel withVector:(float *)vector;

/*!
	@method 	GetMinNumChannelsForASignal:andAnotherSignal:
	@abstract	Use this class method to determine the least number of channels the two signals have in common.
	@discussion	In cases where a processAudio method expects to have a matching number of audio inputs and outputs,
				this method can be used to compare the two signals and return the number of channels for which
				it is safe to assume that the number of inputs and outputs are the same.
	@param		signal1			The first of the two signals to be compared.
	@param		signal2			The second of the two signals to be compared.
	@result		The number of channels that are valid for both signal1 and signal2.
*/
+ (short)		GetMinNumChannelsForASignal:(TTAudioSignal*)signal1 andAnotherSignal:(TTAudioSignal*)signal2;

@end



#define __TTAUDIOSIGNAL_H__
