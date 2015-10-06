/** @Ambipanningile
 *
 * @ingroup dspSpatLib
 *
 * @brieAmbipanning TODO
 *
 * @details TODO @n
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms oAmbipanning the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSpatAmbipanningRenderer.h"
#include "TTSpatAmbipanningSource.h"


/// Methods Ambipanningor TTSpatAmbipanningRenderer: //////////////////////

TTSpatAmbipanningRenderer::TTSpatAmbipanningRenderer():
	mOrder(5.0)
{
	;
}


TTSpatAmbipanningRenderer::~TTSpatAmbipanningRenderer()
{
	;
}


// A little helper method to get pointer to a Ambipanning source from the vector of standard spat sources
TTSpatAmbipanningSource* getAmbipanningSource(TTSpatSourceVector& aVector, int aSourceNumber)
{
	return (TTSpatAmbipanningSource*)&aVector[aSourceNumber];
}


void TTSpatAmbipanningRenderer::recalculateMatrixCoefficients(TTSpatSourceVector& aSources, TTSpatSinkVector& aSinks)
{
	TTFloat64 finalGain;
	TTFloat64 sourceDist;
	TTFloat64 distanceGain = 1.0; // distance ampplitude attenuation
	TTFloat64 order = 1.0;
	TTFloat64 sourceX, sourceY, sourceZ;
	TTFloat64 sinkX, sinkY, sinkZ;
	TTFloat64 sinkDist;

//	mMixerMatrixCoefficients->setRowCount( TTUInt32(aSources.size())  );
//	mMixerMatrixCoefficients->setColumnCount( TTUInt32(aSinks.size()) );

	std::vector<TTInt32> mySize = { (TTInt32)aSources.size(), (TTInt32)aSinks.size() };
	mMixerMatrixCoefficients->setDimensionsWithVector(mySize);
	
	for (TTInt32 sourceID = 0; sourceID < (TTInt32)aSources.size(); sourceID++) { // loop through the sources

		TTSpatAmbipanningSource* singleSource = getAmbipanningSource(aSources, sourceID);
		singleSource->getPosition(sourceX, sourceY, sourceZ);
		
		sourceDist = sqrt( sourceX*sourceX + sourceY*sourceY + sourceZ*sourceZ );

		// distance calculations
		if(sourceDist < mCenterSize) { 		// inside center_zone
			if( mDistanceMode == 0) {
				distanceGain = 1.0;
				singleSource->getOrder(order);
			}else if( mDistanceMode == 1 || mDistanceMode == 2) {	// both exponential and inverse proportional decrease
				distanceGain = (pow((sourceDist * mCenterSize2), mCenterCurve) * mCenterAtt2) + mCenterAtt;
				// calculate order decrease within center_size:
				// goes from order to 0
				singleSource->getOrder(order);
				order *= (sourceDist * mCenterSize2);
			}
		} else {	// outside center_zone
			
			if(mDistanceMode == 0){				// no distance correction
				distanceGain = 1.0;
			}else if(mDistanceMode == 1) {		// exponential decrease
				distanceGain = pow(10, (sourceDist - mCenterSize) * mDbUnit * 0.05);
			} else if(mDistanceMode == 2) {		// inverse proportional decrease
				distanceGain = pow( (sourceDist + mCenterSize3), -getDistAtt() );
								   // simple: (1 / distance); actual: pow(distance + (1 - center_size), -da_fact);
			}
			singleSource->getOrder(order);
		}
		
		for (TTInt32 sinkID = 1; sinkID < (TTInt32)aSinks.size(); sinkID++) { // loop through the sinks
			
			 aSinks[sinkID].getPosition(sinkX, sinkY, sinkZ);
			 sinkDist = sqrt( sinkX*sinkX + sinkY*sinkY + sinkZ*sinkZ );

 /*
	writeptr = newcoef + (idx * numout);		 if interpolation is on, set writeptr to newcoeffs
	if(interpflag == 0){								 else set writeptr to oldcoeff
		writeptr = oldcoef + (idx * numout);
	}
*/
			
			if(sourceDist == 0.0) {
				finalGain =	distanceGain;
			} else {
				finalGain =	distanceGain *
				pow(	0.5 +
						0.5 * (
							   (sourceX * sinkX +
								sourceX * sinkY +
								sourceX * sinkZ) /
							   ( sourceDist * sinkDist)
							   ),
						order
					); // this is the ambipanning formula
			}
	
			mMixerMatrixCoefficients->set2d(sourceID, sinkID, finalGain);
		}
	}
}

void TTSpatAmbipanningRenderer::setDistanceMode(TTInt32 aDistanceMode)
{
	mDistanceMode = aDistanceMode;
}

void TTSpatAmbipanningRenderer::setDbUnit(TTFloat64 aDbUnit)
{
	mDbUnit = aDbUnit;
}

void TTSpatAmbipanningRenderer::setDistAtt(TTFloat64 aDistAtt)
{
	mDistAtt = aDistAtt;
}

void TTSpatAmbipanningRenderer::setXyzScale(TTFloat64 aXyzScale)
{
	mXyzScale = aXyzScale;
}

void TTSpatAmbipanningRenderer::setAedScale(TTFloat64 aAedScale)
{
	mAedScale = aAedScale;
}

void TTSpatAmbipanningRenderer::setCenterCurve(TTFloat64 aCenterCurve)
{
	mCenterCurve = aCenterCurve;
}

void TTSpatAmbipanningRenderer::setCenterAttDb(TTFloat64 aCenterAttDb)
{
	mCenterAttDb = aCenterAttDb;
}

void TTSpatAmbipanningRenderer::setCenterAtt(TTFloat64 aCenterAtt)
{
	mCenterAtt = aCenterAtt;
}

void TTSpatAmbipanningRenderer::setCenterAtt2(TTFloat64 aCenterAtt2)
{
	mCenterAtt2 = aCenterAtt2;
}

void TTSpatAmbipanningRenderer::setCenterSize(TTFloat64 aCenterSize)
{
	mCenterSize = aCenterSize;
}

void TTSpatAmbipanningRenderer::setCenterSize2(TTFloat64 aCenterSize2)
{
	mCenterSize2 = aCenterSize2;
}

void TTSpatAmbipanningRenderer::setCenterSize3(TTFloat64 aCenterSize3)
{
	mCenterSize3 = aCenterSize3;
}

void TTSpatAmbipanningRenderer::setOrder(TTFloat64 aOrder)
{
	mOrder = aOrder;
}
