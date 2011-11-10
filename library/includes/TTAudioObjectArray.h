/* 
 * A wrapper for an array of audio objects
 * Copyright © 2011, Timothy Place and Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_AUDIO_OBJECT_ARRAY_H__
#define __TT_AUDIO_OBJECT_ARRAY_H__

#include "TTAudioObject.h"

typedef vector<TTAudioObjectPtr>		TTAudioObjectVector;
typedef TTAudioObjectVector::iterator	TTAudioObjectIter;

/****************************************************************************************************/
// Class Specification

/**	TTAudioObjectArray instantiates an array of TTAudioObjects, manages their life-cycles, and
	process audio through the array.
 
	This permits the processing of an N-channel audio signal through N instances of a given
	class while using different attribute values for the instances.
 
	One application of such a structure is a graphic eq.
 */
class TTAudioObjectArray : public TTAudioObject {
	TTCLASS_SETUP(TTAudioObjectArray)

	TTSymbolPtr			mClass;					///< The name of the object we will instantiate in the array
	TTUInt16			mSize;					///< The number of instances in the array
	TTAudioObjectVector	mInstances;				///< The actual vector containing object instance pointers
	TTAudioSignalPtr	mInputChannelSignal;	///< Signal used within the process method for passing to individual instances
	TTAudioSignalPtr	mOutputChannelSignal;	///< Signal used within the process method for passing to individual instances
	
	// accessors
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	TTErr setSize(const TTValueRef newSize);
	TTErr setClass(const TTValueRef newClass);

	// access the objects inside the array
	TTErr set(TTValue& arguments, TTValue&);
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_AUDIO_OBJECT_ARRAY_H__

