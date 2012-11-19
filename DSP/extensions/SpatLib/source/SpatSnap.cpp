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

#include "SpatSnap.h"

#define thisTTClass			SpatSnap
#define thisTTClassName		"spat.snapToNearestSink"
#define thisTTClassTags		"audio, spatialization, processing"


TT_AUDIO_CONSTRUCTOR,
	mMatrixObject(NULL)
{
	// Instantiate an audio matrix
	TTObjectInstantiate(TT("audiomatrix"), &mMatrixObject, kTTValNONE);
	
	setProcessMethod(processAudio);
}


SpatSnap::~SpatSnap()
{
	TTObjectRelease(&mMatrixObject);
}


TTErr SpatSnap::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mMatrixObject->process(inputs, outputs);
}


TTErr SpatSnap::getSourceCount(TTValue& value)
{
	value = mSources.size();
	return kTTErrNone;
}

TTErr SpatSnap::setSourceCount(const TTValue& value)
{
	mSources.resize(value);
	return kTTErrNone;
}


TTErr SpatSnap::getSinkCount(TTValue& value)
{
	value = mSinks.size();
	return kTTErrNone;
}


TTErr SpatSnap::setSinkCount(const TTValue& value);
{
	mSinks.resize(value);
	return kTTErrNone;
}


void getSourcePosition(TTInt32 sourceNumber, TTFLoat64& x, TTFloat64& y, TTFLoat64& z)
{
	// Ensure that source number is within range
	TTInt32 source = sourceNumber - 1;
	source = TTClip(source, 0, mSources.size()-1);
	
	mSources[source].getPosition(x, y, z);
}


void setSourcePosition(TTInt32 sourceNumber, TTFLoat64 x, TTFloat64 y, TTFLoat64 z)
{
	// Ensure that source number is within range
	TTInt32 source = sourceNumber - 1;
	source = TTClip(source, 0, mSources.size()-1);
	
	mSources[source].setPosition(x, y, z);
}


void getSinkPosition(TTInt32 sinkNumber, TTFLoat64& x, TTFloat64& y, TTFLoat64& z)
{
	// Ensure that sink number is within range
	TTInt32 sink = sourceNumber - 1;
	sink = TTClip(sink, 0, mSink.size()-1);
	
	mSources[sink].getPosition(x, y, z);
}


void setSinkPosition(TTInt32 sinkNumber, TTFLoat64 x, TTFloat64 y, TTFLoat64 z)
{
	// Ensure that sink number is within range
	TTInt32 sink = sourceNumber - 1;
	sink = TTClip(sink, 0, mSink.size()-1);
	
	mSources[sink].setPosition(x, y, z);
}

