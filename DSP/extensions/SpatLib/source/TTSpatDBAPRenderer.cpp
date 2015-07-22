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
#include "TTSpatDBAPSource.h"


/// Methods DBAPor TTSpatDBAPRenderer: //////////////////////

TTSpatDBAPRenderer::TTSpatDBAPRenderer():
	mRolloff(6.0)
{
	;
}


TTSpatDBAPRenderer::~TTSpatDBAPRenderer()
{
	;
}


// A little helper method to get pointer to a DBAP source from the vector of standard spat sources
TTSpatDBAPSource* getDBAPSource(TTSpatSourceVector& aVector, int aSourceNumber)
{
	return (TTSpatDBAPSource*)&aVector[aSourceNumber];
}


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


void TTSpatDBAPRenderer::setRolloff(TTFloat64 aRolloff)
{
	mRolloff = aRolloff;
}
