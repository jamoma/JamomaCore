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
#define thisTTClassName		"spat.snapToNearestSink"
#define thisTTClassTags		"audio, spatialization, processing"



/// Methods for TTSpatSnapRenderer: //////////////////////

TTSpatSnapRenderer::TTSpatSnapRenderer():
mMixerMatrixCoefficients(NULL)
{
	TTObjectInstantiate("samplematrix", (TTObjectPtr*)&mMixerMatrixCoefficients, kTTValNONE);
}


TTSpatSnapRenderer::~TTSpatSnapRenderer()
{
	TTObjectRelease((TTObjectPtr*)&mMixerMatrixCoefficients);
}


void TTSpatSnapRenderer::recalculateMatrixCoefficients(TTSpatEntityVector& sources, TTSpatEntityVector& sinks)
{	
	TTInt32 nearestSink;
	TTFloat64 sqrDistance, smallestDist;
	TTFloat64 sourceX, sourceY, sourceZ;
	TTFloat64 sinkX, sinkY, sinkZ;
	
	mMixerMatrixCoefficients->setColumnCount(sources.size());
	mMixerMatrixCoefficients->setRowCount(sinks.size());
	
	for (TTInt32 source=0; source<sources.size(); source++) {
		
		// First find the nearest sink for each of the sources
		
		// Start with sinks[0] being the nearest
		sources[source].getPosition(sourceX, sourceY, sourceZ);
		sinks[0].getPosition(sinkX, sinkY, sinkZ);
		
		sqrDistance = (sourceX-sinkX)*(sourceX-sinkX) + (sourceY-sinkY)*(sourceY-sinkY) + (sourceZ-sinkZ)*(sourceZ-sinkZ);
		smallestDist = sqrDistance;
		nearestSink = 0;
		
		// Iterate over sinks
		for (TTInt32 sink=1; sink<sinks.size(); sink++) {
			
			sinks[sink].getPosition(sinkX, sinkY, sinkZ);
			
			sqrDistance = (sourceX-sinkX)*(sourceX-sinkX) + (sourceY-sinkY)*(sourceY-sinkY) + (sourceZ-sinkZ)*(sourceZ-sinkZ);
			
			// Check if sinks[sink] is closer
			if ((smallestDist>sqrDistance)){
				smallestDist = sqrDistance;
				nearestSink = sink;
				
			}
			// We also set all coefficients to 0:
			mMixerMatrixCoefficients->set2d(sink, source, 0.);
		}
		
		// Second we update matrix coefficient for the nearest sink
		mMixerMatrixCoefficients->set2d(nearestSink, source, 1.);
									
	}
	// TODO: Make sure that when we iterate over the matrix, this is done in an efficient way.
}

									
/// Methods for SpatSnap: ////////////////////////////////


TT_AUDIO_CONSTRUCTOR,
	mMatrixObject(NULL)
{
	// Instantiate an audio matrix
	TTObjectInstantiate("audiomatrix", &mMatrixObject, kTTValNONE);
	
	setProcessMethod(processAudio);
}


TTSpatSnap::~TTSpatSnap()
{
	TTObjectRelease(&mMatrixObject);
}


TTErr TTSpatSnap::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mMatrixObject->process(inputs, outputs);
}



TTErr TTSpatSnap::getSourceCount(TTValue& value)
{
	value = mSources.size();
	return kTTErrNone;
}

TTErr TTSpatSnap::setSourceCount(const TTValue& value)
{
	
	TTInt32 number = value;
		
	TTLimitMin<TTInt32>(number, 1);
	mSources.resize(number);
	return kTTErrNone;
}


TTErr TTSpatSnap::getSinkCount(TTValue& value)
{
	value = mSinks.size();
	return kTTErrNone;
}


TTErr TTSpatSnap::setSinkCount(const TTValue& value)
{
	TTInt32 number = value;
	
	TTLimitMin<TTInt32>(number, 1);
	mSinks.resize(number);
	return kTTErrNone;
}


void TTSpatSnap::getSourcePosition(TTInt32 sourceNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	// Ensure that source number is within range
	TTInt32 source = sourceNumber - 1;
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].getPosition(x, y, z);
}


void TTSpatSnap::setSourcePosition(TTInt32 sourceNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	// Ensure that source number is within range
	TTInt32 source = sourceNumber - 1;
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].setPosition(x, y, z);
}


void TTSpatSnap::getSinkPosition(TTInt32 sinkNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	// Ensure that sink number is within range
	TTInt32 sink = sinkNumber - 1;
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSources[sink].getPosition(x, y, z);
}


void TTSpatSnap::setSinkPosition(TTInt32 sinkNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	// Ensure that sink number is within range
	TTInt32 sink = sinkNumber - 1;
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSources[sink].setPosition(x, y, z);
}

