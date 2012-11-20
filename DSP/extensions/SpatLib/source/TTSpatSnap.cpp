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
	
	mMixerMatrixCoefficients->setRowCount(sources.size());
	mMixerMatrixCoefficients->setColumnCount(sinks.size());
	
	for (TTInt32 source=0; source<sources.size(); source++) {
		
		// The source that we want to locate the nearest sink for:
		sources[source].getPosition(sourceX, sourceY, sourceZ);
		
		// In order to find the nearest sink for a source, we'll start by assuming that sink 0 is the nearest
		sinks[0].getPosition(sinkX, sinkY, sinkZ);
		
		// It is more efficient to do comparement on square of the distance
		sqrDistance = (sourceX-sinkX)*(sourceX-sinkX) + (sourceY-sinkY)*(sourceY-sinkY) + (sourceZ-sinkZ)*(sourceZ-sinkZ);
		smallestDist = sqrDistance;
		nearestSink = 0;
		
		// We also ensures that the matrix coefficient is set to 0 for the first sink
		mMixerMatrixCoefficients->set2d(source, 0., 0.);
		
		// Now we iterate over the remaining sinks to see if any of them are closer
		for (TTInt32 sink=1; sink<sinks.size(); sink++) {
			
			sinks[sink].getPosition(sinkX, sinkY, sinkZ);
			
			sqrDistance = (sourceX-sinkX)*(sourceX-sinkX) + (sourceY-sinkY)*(sourceY-sinkY) + (sourceZ-sinkZ)*(sourceZ-sinkZ);
			
			// Check if sinks[sink] is closer
			if ((smallestDist>sqrDistance)){
				smallestDist = sqrDistance;
				nearestSink = sink;
				
			}
			// In the process we also set all matrix coefficients to 0
			mMixerMatrixCoefficients->set2d(source, sink, 0.);
		}
		
		// We have now found the nearest sink, and all coefficients have been reset to 0.
		// The only thing left to do is to send the coefficient of the nearest sink to 1
		mMixerMatrixCoefficients->set2d(source, nearestSink, 1.);
	}
}


TTErr TTSpatSnapRenderer::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{	
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTSampleValuePtr	inSample;
	TTSampleValuePtr	outSample;
	TTUInt16			numInputChannels = in.getNumChannelsAsInt();
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	TTUInt16			outChannel;
	TTUInt16			inChannel;
    TTSampleValue       gainValue;
	
	TTInt16				sourceCount = mMixerMatrixCoefficients->getRowCount();
	TTInt16				sinkCount	= mMixerMatrixCoefficients->getColumnCount();
	
	// If the input signal has more channels than we have sources, the additional channels are ignored.
	if (numInputChannels > sourceCount) {
		numInputChannels = sourceCount;
	}
	
	// Force the right number of sinks
	if ( numOutputChannels != sinkCount ) {
		TTValue v = sinkCount;
		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);
		numOutputChannels = sinkCount;
	}
	// Setting all output signals to zero.
	out.clear();
	
	// TODO: Make sure that when we iterate over the matrix, this is done in an efficient way.
	
	for (outChannel=0; outChannel<numOutputChannels; outChannel++) {
		outSample = out.mSampleVectors[outChannel];
		for (inChannel=0; inChannel<numInputChannels; inChannel++) {
			
			mMixerMatrixCoefficients->get2d(inChannel, outChannel, gainValue);
			
			if (gainValue != 0.0){
				inSample = in.mSampleVectors[inChannel];
				for (int i=0; i<vs; i++) {
					outSample[i] += inSample[i] * gainValue;
				}
			}
		}
	}
	return kTTErrNone;
	
}


/// Methods for SpatSnap: ////////////////////////////////


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
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
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
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


void TTSpatSnap::getOneSourcePosition(TTInt32 sourceNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	// Ensure that source number is within range
	TTInt32 source = sourceNumber - 1;
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].getPosition(x, y, z);
}


TTErr TTSpatSnap::getSourcePosition(const TTValue& requestedChannel, TTValue& aPosition)
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


void TTSpatSnap::setOneSourcePosition(TTInt32 sourceNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	// Ensure that source number is within range
	TTInt32 source = sourceNumber - 1;
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].setPosition(x, y, z);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
}

TTErr TTSpatSnap::setSourcePosition(const TTValue& aPosition, TTValue& unused)
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


void TTSpatSnap::getOneSinkPosition(TTInt32 sinkNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	// Ensure that sink number is within range
	TTInt32 sink = sinkNumber - 1;
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSinks[sink].getPosition(x, y, z);
	mRenderer.recalculateMatrixCoefficients(mSources, mSinks);
}


TTErr TTSpatSnap::getSinkPosition(const TTValue& requestedChannel, TTValue& aPosition)
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


void TTSpatSnap::setOneSinkPosition(TTInt32 sinkNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	// Ensure that sink number is within range
	TTInt32 sink = sinkNumber - 1;
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSinks[sink].setPosition(x, y, z);
}


TTErr TTSpatSnap::setSinkPosition(const TTValue& aPosition, TTValue& unused)
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


