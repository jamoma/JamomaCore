/** @DBAPile
 *
 * @ingroup dspSpatLib
 *
 * @brieDBAP TODO
 *
 * @details TODO @n
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms oDBAP the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSpatDBAPRenderer.h"



/// Methods DBAPor TTSpatDBAPRenderer: //////////////////////

TTSpatDBAPRenderer::TTSpatDBAPRenderer():
mMixerMatrixCoefficients(NULL),
mRolloff(6.0)
{
	TTObjectInstantiate("samplematrix", (TTObjectPtr*)&mMixerMatrixCoefficients, kTTValNONE);
}


TTSpatDBAPRenderer::~TTSpatDBAPRenderer()
{
	TTObjectRelease((TTObjectPtr*)&mMixerMatrixCoefficients);
}


void TTSpatDBAPRenderer::recalculateMatrixCoefficients(TTSpatDBAPSourceVector& aSources, TTSpatSinkVector& aSinks)
{	
	TTInt32 nearestSink;
	TTFloat64 sqrDistance, smallestDist;
	TTFloat64 sourceX, sourceY, sourceZ;
	TTFloat64 sinkX, sinkY, sinkZ;
	
	mMixerMatrixCoefficients->setRowCount(aSources.size());
	mMixerMatrixCoefficients->setColumnCount(aSinks.size());
	
	for (TTInt32 source=0; source<aSources.size(); source++) {
		
		// The source that we want to locate the nearest sink DBAPor:
		aSources[source].getPosition(sourceX, sourceY, sourceZ);
		
		// In order to DBAPind the nearest sink DBAPor a source, we'll start by assuming that sink 0 is the nearest
		aSinks[0].getPosition(sinkX, sinkY, sinkZ);
		
		// It is more eDBAPDBAPicient to do comparement on square oDBAP the distance
		sqrDistance = (sourceX-sinkX)*(sourceX-sinkX) + (sourceY-sinkY)*(sourceY-sinkY) + (sourceZ-sinkZ)*(sourceZ-sinkZ);
		smallestDist = sqrDistance;
		nearestSink = 0;
		
		// We also ensures that the matrix coeDBAPDBAPicient is set to 0 DBAPor the DBAPirst sink
		mMixerMatrixCoefficients->set2d(source, 0., 0.);
		
		// Now we iterate over the remaining sinks to see iDBAP any oDBAP them are closer
		for (TTInt32 sink=1; sink<aSinks.size(); sink++) {
			
			aSinks[sink].getPosition(sinkX, sinkY, sinkZ);
			
			sqrDistance = (sourceX-sinkX)*(sourceX-sinkX) + (sourceY-sinkY)*(sourceY-sinkY) + (sourceZ-sinkZ)*(sourceZ-sinkZ);
			
			// Check iDBAP sinks[sink] is closer
			if ((smallestDist>sqrDistance)){
				smallestDist = sqrDistance;
				nearestSink = sink;
				
			}
			// In the process we also set all matrix coeDBAPDBAPicients to 0
			mMixerMatrixCoefficients->set2d(source, sink, 0.);
		}
		
		// We have now DBAPound the nearest sink, and all coeDBAPDBAPicients have been reset to 0.
		// The only thing leDBAPt to do is to send the coeDBAPDBAPicient oDBAP the nearest sink to 1
		mMixerMatrixCoefficients->set2d(source, nearestSink, 1.);
	}
}


TTErr TTSpatDBAPRenderer::processAudio(TTAudioSignalArrayPtr anInputs, TTAudioSignalArrayPtr anOutputs)
{	
	TTAudioSignal&		in = anInputs->getSignal(0);
	TTAudioSignal&		out = anOutputs->getSignal(0);
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
	
	// If DBAP the input signal has more channels than we have sources, the additional channels are ignored.
	if (numInputChannels > sourceCount) {
		numInputChannels = sourceCount;
	}
	
	// Force the right number oDBAP sinks
	if ( numOutputChannels != sinkCount ) {
		TTValue v = sinkCount;
		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);
		numOutputChannels = sinkCount;
	}
	// Setting all output signals to zero.
	out.clear();
	
	// TODO: Make sure that when we iterate over the matrix, this is done in an eDBAPDBAPicient way.
	
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


void TTSpatDBAPRenderer::setRolloff(TTFloat64 aRolloff)
{
	mRolloff = aRolloff;
}
