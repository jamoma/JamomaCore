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

#include "TTSpatBaseRenderer.h"



/// Methods for TTSpatSnapRenderer: //////////////////////

TTSpatBaseRenderer::TTSpatBaseRenderer():
mMixerMatrixCoefficients(NULL)
{
	TTObjectInstantiate("samplematrix", (TTObjectPtr*)&mMixerMatrixCoefficients, kTTValNONE);
}


TTSpatBaseRenderer::~TTSpatBaseRenderer()
{
	TTObjectRelease((TTObjectPtr*)&mMixerMatrixCoefficients);
}


TTErr TTSpatBaseRenderer::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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

