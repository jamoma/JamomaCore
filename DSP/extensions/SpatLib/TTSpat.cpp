/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Host a SpatLib object
 *
 * @details
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSpat.h"

#define thisTTClass			TTSpat
#define thisTTClassName		"spat"
#define thisTTClassTags		"audio, spatialization"

TT_AUDIO_CONSTRUCTOR,
mSpatRendererObject(NULL),
mSourceCount(1),
mSinkCount(1)
{
	mSources.resize(1);
	mSinks.resize(1);
	
	addAttributeWithSetter(Renderer,	kTypeSymbol);	// setting name of the renderer
	addMessageWithArguments(getSpatFunctions);
	
	// Sources
	addAttributeWithSetter(SourceCount,	kTypeUInt16);	// Sett
	
	addMessageWithArguments(setSourcePosition);
	addMessageWithArguments(getSourcePosition);
	
	addMessageWithArguments(getSourceWidth);
	addMessageWithArguments(setSourceWidth);
	
	// Sinks
	addAttributeWithSetter(SinkCount,	kTypeUInt16);
	
	addMessageWithArguments(setSinkPosition);
	addMessageWithArguments(getSinkPosition);
	
	//addUpdate(MaxNumChannels); - TODO: Check if this is being taken care of elsewhere
	
	setAttributeValue("renderer", "spat.dbap");
	setAttributeValue("sourceCount", 2);
	setAttributeValue("sinkCount", 8);
	
	setProcessMethod(processAudio);
	
	// Global to the scene, specific to one or a few renderers
	addAttributeWithGetterAndSetter(Rolloff, kTypeFloat64);
}


TTSpat::~TTSpat()
{
	delete mSpatRendererObject;
}


#if 0
#pragma mark -
#pragma mark Renderer set/get
#endif


TTErr TTSpat::setSpatFunction(const TTValue& aSpatFunction)
{
	TTErr				err;
	TTSymbol			spatFunctionName;
	TTAudioObjectBasePtr	spatFunction = NULL;
	
	spatFunctionName = aSpatFunction[0];
	
	// if the function didn't change, then don't change the function
	if (spatFunctionName == mSpatRendererObject)
		return kTTErrNone;	
	
	// TTObjectBaseInstantiate will automatically free the object passed into it
	err = TTObjectBaseInstantiate(spatFunctionName, &spatFunction, kTTValNONE);
	if (!err && spatFunction) {
		// Now set the state of the object to the state we have stored
		spatFunction->setAttributeValue(TT("sourceCount"), mSourceCount);
		spatFunction->setAttributeValue(TT("sinkCount"), mSinkCount);
		
		mSpatRendererName = spatFunctionName;
		mSpatRendererObject = spatFunction;
		
		// FIXME: This is not thread safe if the audio is running
		// We need to queue this switch to occur at a time when it is safe 
		// (when audio is not processed by the old object any longer)
		// Redmine #994
		//
		// ACTUALLY: it should be okay because of the locks in the TTObjectBaseInstantiate spinlocking to wait
		// for any process calls.
		// However, maybe those need some improvements like using volatile or atomic types
	}
	else {
		// some problems have occurred, not yet sure how we should handle this...
	}
	
	
	return err;
}



TTErr TTSpat::getSpatFunctions(const TTValue&, TTValue& listOfSpatFunctionsToReturn)
{
	TTValue v;
	
	v.resize(2);
	v[0] = TT("spatialization");
	v[1] = TT("processing"); // more efficent than append
	return TTObject::GetRegisteredClassNamesForTags(listOfSpatFunctionsToReturn, v);

}		   


TTErr TTSpat::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mSpatRendererObject->processAudio(inputs, outputs);
}


#if 0
#pragma mark -
#pragma mark Source set/get
#endif


TTErr TTSpat::setSourceCount(const TTValue& aSourceCount)
{
	TTInt32 number = aSourceCount;
	
	TTLimitMin<TTInt32>(number, 1);
	mSources.resize(number);
	mSceneHasChanged = true;
	return kTTErrNone;
}


TTErr TTSpat::getSourceCount(TTValue& value)
{
	value = TTUInt32(mSources.size());
	return kTTErrNone;
}


TTErr TTSpat::setSourcePosition(TTInt32 sourceNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	// When receiving messages, source index start from 1, not 0
	TTInt32 source = sourceNumber - 1;
	
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].setPosition(x, y, z);
	mSceneHasChanged = true;
	
	return kTTErrNone;
}


TTErr TTSpat::setSourcePosition(const TTValue& aPosition, TTValue& unused)
{
	TTInt32 sourceNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are not four arguments...
	
	sourceNumber = aPosition[0];
	x = aPosition[1];
	y = aPosition[2];
	z = aPosition[3];
	
	// TODO: Return error if we do not have four list members?
	return setSourcePosition(sourceNumber, x, y, z);
}


TTErr TTSpat::getSourcePosition(TTInt32 sourceNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	// When receiving messages, source index start from 1, not 0
	TTInt32 source = sourceNumber - 1;
	
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].getPosition(x, y, z);
	return kTTErrNone;
}


TTErr TTSpat::getSourcePosition(const TTValue& requestedChannel, TTValue& aPosition)
{
	TTInt16 sourceNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	sourceNumber = requestedChannel[0];
	
	getSourcePosition(sourceNumber, x, y, z);
	
	aPosition.resize(4);
	
	aPosition[0] = sourceNumber;
	aPosition[1] = x;
	aPosition[2] = y;
	aPosition[3] = z;
	
	return kTTErrNone;
}


TTErr TTSpat::setSourceWidth(TTInt32 sourceNumber, TTFloat64 width)
{
	// When receiving messages, source index start from 1, not 0
	sourceNumber = sourceNumber - 1;
	
	sourceNumber = TTClip<TTInt32>(sourceNumber, 0, mSources.size()-1);
	
	mSources[sourceNumber].setWidth(width);
	mSceneHasChanged = true;
	
	return kTTErrNone;
}


TTErr TTSpat::setSourceWidth(const TTValue& aWidth, TTValue& anUnused)
{
	TTInt32 sourceNumber;
	TTFloat64 width;
	
	// TODO: We need to think of what to do if there are not two arguments...
	
	sourceNumber = aWidth[0];
	width = aWidth[1];
	
	return setSourceWidth(sourceNumber, width);
}


TTErr TTSpat::getSourceWidth(TTInt32 sourceNumber, TTFloat64& width)
{
	// When receiving messages, source index start from 1, not 0
	sourceNumber = sourceNumber - 1;
	sourceNumber = TTClip<TTInt32>(sourceNumber, 0, mSources.size()-1);
	mSources[sourceNumber].getWidth(width);
	
	return kTTErrNone;
}


TTErr TTSpat::getSourceWidth(const TTValue& aRequestedChannel, TTValue& aWidth)
{
	TTInt16 sourceNumber;
	TTFloat64 width;
	
	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	sourceNumber = aRequestedChannel[0];
	
	getSourceWidth(sourceNumber, width);
	
	aWidth.resize(2);
	aWidth[0] = sourceNumber;
	aWidth[1] = width;
	
	return kTTErrNone;
}


#if 0
#pragma mark -
#pragma mark Sink set/get
#endif


TTErr TTSpat::setSinkCount(const TTValue& aSinkCount)
{
	TTInt32 number = aSinkCount;
	
	TTLimitMin<TTInt32>(number, 1);
	mSinks.resize(number);
	mSceneHasChanged = true;
	return kTTErrNone;
}


TTErr TTSpat::getSinkCount(TTValue& value)
{
	value = TTUInt32(mSinks.size());
	return kTTErrNone;
}


TTErr TTSpat::setSinkPosition(TTInt32 sinkNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	// When receiving messages, sink index start from 1, not 0
	TTInt32 sink = sinkNumber - 1;
	
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSinks[sink].setPosition(x, y, z);
	mSceneHasChanged = true;
	
	return kTTErrNone;
}


TTErr TTSpat::setSinkPosition(const TTValue& aPosition, TTValue& unused)
{
	TTInt32 sinkNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are not four arguments...
	
	sinkNumber = aPosition[0];
	x = aPosition[1];
	y = aPosition[2];
	z = aPosition[3];
	
	// TODO: Return error if we do not have four list members?
	return setSinkPosition(sinkNumber, x, y, z);
}


TTErr TTSpat::getSinkPosition(TTInt32 sinkNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	// When receiving messages, sink index start from 1, not 0
	TTInt32 sink = sinkNumber - 1;
	
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSinks[sink].getPosition(x, y, z);
	return kTTErrNone;
}


TTErr TTSpat::getSinkPosition(const TTValue& requestedChannel, TTValue& aPosition)
{
	TTInt16 sinkNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sinks
	
	sinkNumber = requestedChannel[0];
	
	getSinkPosition(sinkNumber, x, y, z);
	
	aPosition.resize(4);
	
	aPosition[0] = sinkNumber;
	aPosition[1] = x;
	aPosition[2] = y;
	aPosition[3] = z;
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Particular to Units
#endif


TTErr TTSpat::setRolloff(const TTValue& aValue)
{
	mRolloff = (TTFloat64)aValue[0];
	mSceneHasChanged = true;
	return kTTErrNone;
}


TTErr TTSpat::getRolloff(TTValue& aValue)
{
	aValue.resize(1);
	aValue[0] = mRolloff;
	
	return kTTErrNone;
}

