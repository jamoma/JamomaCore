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

#include "TTSpatSnapRenderer.h"



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


void TTSpatSnapRenderer::recalculateMatrixCoefficients(TTSpatSourceVector& sources, TTSpatSinkVector& sinks)
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

