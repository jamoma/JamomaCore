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
	TTInt32 nearestSink;
	TTFloat64 sqrDistance, smallestDist;
	TTFloat64 sourceX, sourceY, sourceZ;
	TTFloat64 sinkX, sinkY, sinkZ;
	
	mMixerMatrixCoefficients->setRowCount(aSources.size());
	mMixerMatrixCoefficients->setColumnCount(aSinks.size());
	
	for (TTInt32 source=0; source<aSources.size(); source++) {
		TTSpatDBAPSource* dbapSource = getDBAPSource(aSources, source);
		
		// The source that we want to locate the nearest sink DBAPor:
		dbapSource->getPosition(sourceX, sourceY, sourceZ);
		
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


void TTSpatDBAPRenderer::setRolloff(TTFloat64 aRolloff)
{
	mRolloff = aRolloff;
}
