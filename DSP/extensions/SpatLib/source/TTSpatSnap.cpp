/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief TODO
 *
 * @details TODO @n
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSpatSnap.h"

#define thisTTClass			TTSpatSnap
#define thisTTClassName		"spat.snap"
#define thisTTClassTags		"audio, spatialization, processing"


TT_AUDIO_CONSTRUCTOR
{
	mSources.resize(1);
	mSinks.resize(1);
	
	addAttributeWithGetterAndSetter(SourceCount, kTypeInt32);
	addAttributeWithGetterAndSetter(SinkCount, kTypeInt32);
	
	addMessageWithArguments(setSourcePosition);
	addMessageWithArguments(getSourcePosition);
	
	addMessageWithArguments(setSinkPosition);
	addMessageWithArguments(getSinkPosition);
	
	setProcessMethod(processAudio);
}


TTSpatSnap::~TTSpatSnap()
{
	
}


TTErr TTSpatSnap::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mRenderer.processAudio(inputs, outputs);
}



TTErr TTSpatSnap::getSourceCount(TTValue& aValue)
{
	aValue = mSources.size();
	return kTTErrNone;
}

TTErr TTSpatSnap::setSourceCount(const TTValue& aValue)
{
	
	TTInt32 number = aValue;
		
	TTLimitMin<TTInt32>(number, 1);
	mSources.resize(number);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


TTErr TTSpatSnap::getSinkCount(TTValue& aValue)
{
	aValue = mSinks.size();
	return kTTErrNone;
}


TTErr TTSpatSnap::setSinkCount(const TTValue& aValue)
{
	TTInt32 number = aValue;
	
	TTLimitMin<TTInt32>(number, 1);
	mSinks.resize(number);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


void TTSpatSnap::getOneSourcePosition(TTInt32 aSourceNumber, TTFloat64& aX, TTFloat64& aY, TTFloat64& aZ)
{
	// Ensure that source number is within range
	TTInt32 source = aSourceNumber - 1;
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].getPosition(aX, aY, aZ);
}


TTErr TTSpatSnap::getSourcePosition(const TTValue& aRequestedChannel, TTValue& aPosition)
{
	TTInt16 sourceNumber;
	TTFloat64 x, y, z;

	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	aRequestedChannel.get(0, sourceNumber);
	
	getOneSourcePosition(sourceNumber, x, y, z);
	
	aPosition.setSize(4);
	
	aPosition.set(0, sourceNumber);
	aPosition.set(1, x);
	aPosition.set(2, y);
	aPosition.set(3, z);
	
	return kTTErrNone;
}


void TTSpatSnap::setOneSourcePosition(TTInt32 aSourceNumber, TTFloat64 aX, TTFloat64 aY, TTFloat64 aZ)
{
	// Ensure that source number is within range
	TTInt32 source = aSourceNumber - 1;
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].setPosition(aX, aY, aZ);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
}

TTErr TTSpatSnap::setSourcePosition(const TTValue& aPosition, TTValue& anUnused)
{
	TTInt32 sourceNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are not four arguments...
	
	aPosition.get(0, sourceNumber);
	aPosition.get(1, x);
	aPosition.get(2, y);
	aPosition.get(3, z);
	
	setOneSourcePosition(sourceNumber, x, y, z);
	
	return kTTErrNone; // Return something else if we don't have four arguments
}


void TTSpatSnap::getOneSinkPosition(TTInt32 aSinkNumber, TTFloat64& aX, TTFloat64& aY, TTFloat64& aZ)
{
	// Ensure that sink number is within range
	TTInt32 sink = aSinkNumber - 1;
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSinks[sink].getPosition(aX, aY, aZ);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
}


TTErr TTSpatSnap::getSinkPosition(const TTValue& aRequestedChannel, TTValue& aPosition)
{
	TTInt16 sinkNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	aRequestedChannel.get(0, sinkNumber);
	
	getOneSinkPosition(sinkNumber, x, y, z);
	
	aPosition.setSize(4);
	
	aPosition.set(0, sinkNumber);
	aPosition.set(1, x);
	aPosition.set(2, y);
	aPosition.set(3, z);
	
	return kTTErrNone;
}


void TTSpatSnap::setOneSinkPosition(TTInt32 aSinkNumber, TTFloat64 aX, TTFloat64 aY, TTFloat64 aZ)
{
	// Ensure that sink number is within range
	TTInt32 sink = aSinkNumber - 1;
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSinks[sink].setPosition(aX, aY, aZ);
}


TTErr TTSpatSnap::setSinkPosition(const TTValue& aPosition, TTValue& anUnused)
{
	TTInt32 sinkNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are not four arguments...
	
	aPosition.get(0, sinkNumber);
	aPosition.get(1, x);
	aPosition.get(2, y);
	aPosition.get(3, z);
	
	setOneSinkPosition(sinkNumber, x, y, z);
	
	return kTTErrNone; // Return something else if we don't have four arguments
}


