/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief #TTAudioObjectBase is the Jamoma DSP Audio Object Base Class
 *
 * @details
 *
 * @authors Tim Place, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_AUDIO_OBJECT_H__
#define __TT_AUDIO_OBJECT_H__

#include "TTObject.h"
#include "TTAudioObjectBase.h"


/** Wrap TTAudioSignal instances for convenience. */
class TTAudio : public TTObject {
public:
	TTAudio(int aChannelCount):
	TTObject(kTTSym_audiosignal, aChannelCount)
	{}
	
	TTAudioSignalPtr instance()
	{
		return (TTAudioSignalPtr)mObjectInstance;
	}
	
	int getVectorSizeAsInt()
	{
		return instance()->getVectorSizeAsInt();
	}
	
	void setVectorSizeWithInt(int aVectorSize)
	{
		instance()->setVectorSizeWithInt(aVectorSize);
	}
	
	void alloc()
	{
		instance()->alloc();
	}
	
	TTErr allocWithVectorSize(const TTUInt16 aNewVectorSize)
	{
		return instance()->allocWithVectorSize(aNewVectorSize);
	}
	
	void setNumChannels(int aChannelCount)
	{
		instance()->setNumChannels(aChannelCount);
	}
	
	
	TTErr setVector(const TTUInt16 channel, const TTUInt16 vectorSize, const TTSampleValuePtr newVector)
	{
		return instance()->setVector(channel, vectorSize, newVector);
	}
	
	
	TTErr getVectorCopy(const TTUInt16 channel, const TTUInt16 theVectorSize, TTSampleValue* returnedVector)
	{
		return instance()->getVectorCopy(channel, theVectorSize, returnedVector);
	}
	
	
	TTSampleValue** rawSamples()
	{
		return instance()->mSampleVectors;
	}
	
	void clear()
	{
		instance()->clear();
	}
	
};


inline TTErr TTAudioObjectBase::process(TTAudio& inputs, TTAudio& outputs)
{
	return process(inputs.instance(), outputs.instance());
}


/** Wrap audio objects for convenience. */
class TTAudioObject : public TTObject {
	
public:
	TTAudioObject(const TTSymbol& aClassName, const TTValue& arguments = kTTValNONE):
	TTObject(aClassName, arguments)
	{}
	
	TTErr process(TTAudioSignal& in, TTAudioSignal& out)
	{
		return TTAudioObjectBasePtr(mObjectInstance)->process(in, out);
	}
	
	TTErr process(TTAudio* in, TTAudio* out)
	{
		return TTAudioObjectBasePtr(mObjectInstance)->process(in->instance(), out->instance());
	}
	
};



#endif // __TT_AUDIO_OBJECT_H__
