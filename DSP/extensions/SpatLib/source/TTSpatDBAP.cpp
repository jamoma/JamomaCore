/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Jamoma DSP SpatLib unit based on Distance-based amplitude panning (DBAP)
 *
 * @details DBAP permits sinks (speakers) to be positioned any way you want.
 * Speaker configurations are not limited to circles/spheres surrounding a sweet spot, but can be used e.g. to locate speakers in several adjecent spaces.
 * DBAP is matrix-based and ensures equal intensity while adjusting gains to each of the sinks in such a way that relative gain diminish with increasing distance from source to sink.
 * The exact rolloff rate (in dB) can be controlled with the rolloff attribute of the #TTSpatDBAPRenderer class.
 *
 * @todo: Extend with a solution for interpolating to new matrix coefficients
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSpatDBAP.h"

#define thisTTClass			TTSpatDBAP
#define thisTTClassName		"spat.dbap"
#define thisTTClassTags		"audio, spatialization, processing, dbap"


TT_AUDIO_CONSTRUCTOR
{
	mSources.resize(1);
	mSinks.resize(1);
	
	// Generic Spat Lib Stuff
	
	addAttributeWithGetterAndSetter(SourceCount, kTypeInt32);
	addAttributeWithGetterAndSetter(SinkCount, kTypeInt32);
		
	addMessageWithArguments(setSourcePosition);
	addMessageWithArguments(getSourcePosition);
	
	addMessageWithArguments(setSinkPosition);
	addMessageWithArguments(getSinkPosition);
	
	setProcessMethod(processAudio);

	// DBAP Specific Stuff
	
	addAttributeWithGetterAndSetter(Rolloff, kTypeFloat64);
	
	addMessageWithArguments(getSourceWidth);
	addMessageWithArguments(setSourceWidth);
	
}


TTSpatDBAP::~TTSpatDBAP()
{
	
}


TTErr TTSpatDBAP::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mRenderer.processAudio(inputs, outputs);
}



TTErr TTSpatDBAP::getSourceCount(TTValue& value)
{
	value = mSources.size();
	return kTTErrNone;
}

TTErr TTSpatDBAP::setSourceCount(const TTValue& value)
{
	
	TTInt32 number = value;
		
	TTLimitMin<TTInt32>(number, 1);
	mSources.resize(number);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


TTErr TTSpatDBAP::getSinkCount(TTValue& value)
{
	value = mSinks.size();
	return kTTErrNone;
}


TTErr TTSpatDBAP::setSinkCount(const TTValue& value)
{
	TTInt32 number = value;
	
	TTLimitMin<TTInt32>(number, 1);
	mSinks.resize(number);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


void TTSpatDBAP::getOneSourcePosition(TTInt32 sourceNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	// Ensure that source number is within range
	TTInt32 source = sourceNumber - 1;
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].getPosition(x, y, z);
}


TTErr TTSpatDBAP::getSourcePosition(const TTValue& requestedChannel, TTValue& aPosition)
{
	TTInt16 sourceNumber;
	TTFloat64 x, y, z;

	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	requestedChannel.get(0, sourceNumber);
	
	getOneSourcePosition(sourceNumber, x, y, z);
	
	aPosition.setSize(4);
	
	aPosition.set(0, sourceNumber);
	aPosition.set(1, x);
	aPosition.set(2, y);
	aPosition.set(3, z);
	
	return kTTErrNone;
}


void TTSpatDBAP::setOneSourcePosition(TTInt32 sourceNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	// Ensure that source number is within range
	TTInt32 source = sourceNumber - 1;
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].setPosition(x, y, z);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
}

TTErr TTSpatDBAP::setSourcePosition(const TTValue& aPosition, TTValue& unused)
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


void TTSpatDBAP::getOneSinkPosition(TTInt32 sinkNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	// Ensure that sink number is within range
	TTInt32 sink = sinkNumber - 1;
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSinks[sink].getPosition(x, y, z);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
}


TTErr TTSpatDBAP::getSinkPosition(const TTValue& requestedChannel, TTValue& aPosition)
{
	TTInt16 sinkNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	requestedChannel.get(0, sinkNumber);
	
	getOneSinkPosition(sinkNumber, x, y, z);
	
	aPosition.setSize(4);
	
	aPosition.set(0, sinkNumber);
	aPosition.set(1, x);
	aPosition.set(2, y);
	aPosition.set(3, z);
	
	return kTTErrNone;
}


void TTSpatDBAP::setOneSinkPosition(TTInt32 sinkNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	// Ensure that sink number is within range
	TTInt32 sink = sinkNumber - 1;
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSinks[sink].setPosition(x, y, z);
}


TTErr TTSpatDBAP::setSinkPosition(const TTValue& aPosition, TTValue& unused)
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


TTErr TTSpatDBAP::getRolloff(TTValue& value)
{
	value = mRenderer.getRolloff();
	return kTTErrNone;
}


TTErr TTSpatDBAP::setRolloff(const TTValue& value)
{
	TTFloat64 rolloff = value;
	
	mRenderer.setRolloff(rolloff);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


// TODO: Problem -- when initializing the matrix will be calculated many many times


TTErr TTSpatDBAP::setSourceWidth(const TTValue& aWidth, TTValue& unused)
{
	TTInt32 sourceNumber;
	TTFloat64 width;
	
	// TODO: We need to think of what to do if there are not two arguments...
	
	aWidth.get(0, sourceNumber);
	aWidth.get(1, width);
	
	sourceNumber = sourceNumber - 1;
	sourceNumber = TTClip<TTInt32>(sourceNumber, 0, mSources.size()-1);
	mSources[sourceNumber].setWidth(width);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
	
	return kTTErrNone; // Return something else if we don't have four arguments
}


TTErr TTSpatDBAP::getSourceWidth(const TTValue& requestedChannel, TTValue& aWidth)
{
	TTInt16 sourceNumber;
	TTFloat64 width;
	
	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	requestedChannel.get(0, sourceNumber);
	
	sourceNumber = sourceNumber - 1;
	sourceNumber = TTClip<TTInt32>(sourceNumber, 0, mSources.size()-1);
	mSources[sourceNumber].getWidth(width);
	
	aWidth.setSize(2);
	aWidth.set(0, sourceNumber);
	aWidth.set(1, width);
	
	return kTTErrNone;
}


