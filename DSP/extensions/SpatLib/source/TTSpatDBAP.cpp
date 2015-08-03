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


TTObjectBasePtr TTSpatDBAP::instantiate(TTSymbol name, TTValue arguments)
{
	return (TTObjectBasePtr) new thisTTClass(arguments);
}

extern "C" void thisTTClass :: registerClass ()
{
	TTClassRegister( thisTTClassName, thisTTClassTags, thisTTClass :: instantiate );
}


TTSpatDBAP::TTSpatDBAP(const TTValue& arguments) : TTSpat(arguments)
{
}

TTSpatDBAP::~TTSpatDBAP()
{
}


// TODO : This is duplicating the TTSpatBaseRenderer method
/*
TTErr TTSpatDBAP::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTSampleValuePtr	inSample;
	TTSampleValuePtr	outSample;
	TTChannelCount		numInputChannels = in.getNumChannelsAsInt();
	TTChannelCount		numOutputChannels = out.getNumChannelsAsInt();
	TTChannelCount		outChannel;
	TTChannelCount		inChannel;
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

*/



void TTSpatDBAPRenderer::recalculateMatrixCoefficients(TTSpatSourceVector& aSources, TTSpatSinkVector& aSinks)
{
	/*
	 double k;											// Scaling coefficient
	 double k2inv;										// Inverse square of the scaling constant k
	 double dx, dy, dz;									// Distance vector
	 double r2;											// Bluriness ratio
	 double dia[MAX_NUM_DESTINATIONS];					// Distance to ith speaker to the power of x->a.
	 t_atom a[3];										// Output array of atoms
	 
	 long i;
	 
	 r2 = x->blur[n] * x->variance;
	 r2 = r2*r2;
	 k2inv = 0;
	 for (i=0; i<x->attr_num_destinations; i++) {
		dx = x->src_position[n].x - x->dst_position[i].x;
		dy = x->src_position[n].y - x->dst_position[i].y;
		dz = x->src_position[n].z - x->dst_position[i].z;
		dia[i] = pow(double(dx*dx + dy*dy + dz*dz + r2), double(0.5*x->a));
		k2inv = k2inv + (x->src_weight[n][i]*x->src_weight[n][i])/(dia[i]*dia[i]);
	 }
	 k = sqrt(1./k2inv);
	 k = k*x->master_gain*x->src_gain[n]*x->src_not_muted[n];
	 
	 atom_setlong(&a[0], n);
	 
	 for (i=0; i<x->attr_num_destinations; i++) {
		atom_setlong(&a[1], i);
		atom_setfloat(&a[2], x->src_weight[n][i]*k/dia[i]);
		outlet_anything(x->outlet[0], _sym_list, 3, a);
	 }
	 */
	
	TTFloat64 sourceX, sourceY, sourceZ;
	TTFloat64 sourceWidth;
	TTFloat64 sinkX, sinkY, sinkZ;
	TTFloat64 dx, dy, dz;
	
	TTFloat64 sqrDistance;
	TTFloat64 r2;										// Bluriness ratio
	
	TTFloat64 k;										// Scaling coefficient
	TTFloat64 k2inv;									// Inverse square of the scaling constant k
	
	// TODO only resize if needed, check first!
	mMixerMatrixCoefficients->setRowCount(TTUInt32(aSources.size()));
	mMixerMatrixCoefficients->setColumnCount(TTUInt32(aSinks.size()));
	
	std::vector<TTFloat64> dia;
	dia.resize(aSinks.size());
	
	TTFloat64 rolloffPowerFactor = log(pow(10., (mRolloff / 20.)))/log(2.);
	
	
	for (TTInt32 source=0; source < (TTInt32) aSources.size(); source++) {
		
		TTSpatDBAPSource* dbapSource = getDBAPSource(aSources, source);
		aSources[source].getPosition(sourceX, sourceY, sourceZ);
		
		dbapSource->getWidth(sourceWidth);
		r2 = sourceWidth * sourceWidth;		// TODO:  should be normalised with respect to x->variance
		
		// Iterate over sinks to calculate non-normalised gains for this source
		k2inv = 0;
		for (TTInt32 sink=0; sink < (TTInt32) aSinks.size(); sink++) {
			
			aSinks[sink].getPosition(sinkX, sinkY, sinkZ);
			dx = sourceX-sinkX;
			dy = sourceY-sinkY;
			dz = sourceZ-sinkZ;
			sqrDistance = (dx*dx + dy*dy + dz*dz + r2);
			dia[sink] = pow((dx*dx + dy*dy + dz*dz + r2), double(0.5*rolloffPowerFactor));
			// TODO: Introduce weight in equation below
			k2inv = k2inv + 1/(dia[sink]*dia[sink]);
		}
		
		// Calculate normalising factor
		k = sqrt(1./k2inv); // TODO: This should also cater for gain and muting of source
		
		// Iterate over sinks again and normalise gains
		for (TTInt32 sink=0; sink < (TTInt32) aSinks.size(); sink++) {
			mMixerMatrixCoefficients->set2d(source, sink, k/dia[sink]);
		}
	}
}

//TODO what to do with this?

// A little helper method to get pointer to a DBAP source from the vector of standard spat sources
//TTSpatDBAPSource* getDBAPSource(TTSpatSourceVector& aVector, int aSourceNumber)
//{
//	return (TTSpatDBAPSource*)&aVector[aSourceNumber];
//}
//


