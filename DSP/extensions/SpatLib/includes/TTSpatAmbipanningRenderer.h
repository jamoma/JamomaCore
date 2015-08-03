/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief A basic proof-of-concept spatial renderer where the audio of a source will snap to the nearest sink.
 *
 * @details
 *
 * @todo: Extend with a solution for interpolating to new matrix coefficients
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place, Jan Schacher
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __SPATAmbipanningRENDERER_H__
#define __SPATAmbipanningRENDERER_H__

#include "TTDSP.h"
#include "TTSampleMatrix.h"
#include "TTSpatEntity.h"
#include "TTSpatBaseRenderer.h"


/** TTSpatAmbipanningRenderer contains attributes and methods that are specific to this particular spatialisation renderer.
 */
class TTSpatAmbipanningRenderer : public TTSpatBaseRenderer {
	
public:
	
//	TTSampleMatrixPtr	mMixerMatrixCoefficients;	///< A matrix holding all coefficient for matrix-based mixing of sources to sinks.
	TTInt32				mDistanceMode;				///< global
	TTFloat64			mDbUnit;					///< global
	TTFloat64			mDistAtt;					///< global
	TTFloat64			mXyzScale;					///< global
	TTFloat64			mAedScale;					///< global
	TTFloat64			mCenterCurve;				///< global
	TTFloat64			mCenterAttDb;				///< global
	TTFloat64			mCenterAtt;					///< global
	TTFloat64			mCenterAtt2;				///< global //	1/center_att
	TTFloat64			mCenterSize;				///< global
	TTFloat64			mCenterSize2;				///< global //	1/center_size
	TTFloat64			mCenterSize3;				///< global
	TTFloat64			mOrder;						///< global
	
	/** Constructor
	 */
	TTSpatAmbipanningRenderer();
	
	/** Destructor
	 */
	~TTSpatAmbipanningRenderer();
	
	/** This method is called whenever matrix coefficients need to be updated.
	 @details This method also takes care of matrix resizing if the number of sources or sinks change.
	 @param sources						A vector of sources
	 @param sinks						A vector of sinks
	 */
	void recalculateMatrixCoefficients(TTSpatSourceVector& aSources, TTSpatSinkVector& aSinks);
		
	TTInt32 getDistanceMode()
	{
		return mDistanceMode;
	}
	void setDistanceMode(TTInt32 aDistanceMode);
	
	TTFloat64 getDbUnit()
	{
		return mDbUnit;
	}
	void setDbUnit(TTFloat64 aDbUnit);
	
	TTFloat64 getDistAtt()
	{
		return mDistAtt;
	}
	void setDistAtt(TTFloat64 aDistAtt);
	
	TTFloat64 getXyzScale()
	{
		return mXyzScale;
	}
	void setXyzScale(TTFloat64 aXyzScale);
	
	TTFloat64 getAedScale()
	{
		return mAedScale;
	}
	void setAedScale(TTFloat64 aAedScale);
	
	TTFloat64 getCenterCurve()
	{
		return mCenterCurve;
	}
	void setCenterCurve(TTFloat64 aCenterCurve);
	
	TTFloat64 getCenterAttDb()
	{
		return mCenterAttDb;
	}
	void setCenterAttDb(TTFloat64 aCenterAttDb);
	
	TTFloat64 getCenterAtt()
	{
		return mCenterAtt;
	}
	void setCenterAtt(TTFloat64 aCenterAtt);
	
	TTFloat64 getCenterAtt2()
	{
		return mCenterAtt2;
	}
	void setCenterAtt2(TTFloat64 aCenterAtt2);
	
	TTFloat64 getCenterSize()
	{
		return mCenterSize;
	}
	void setCenterSize(TTFloat64 aCenterSize);
	
	TTFloat64 getCenterSize2()
	{
		return mCenterSize2;
	}
	void setCenterSize2(TTFloat64 aCenterSize2);
	
	TTFloat64 getCenterSize3()
	{
		return mCenterSize3;
	}
	void setCenterSize3(TTFloat64 aCenterSize3);
	
	TTFloat64 getOrder()
	{
		return mOrder;
	}
	void setOrder(TTFloat64 aOrder);
		
	
};


#endif // __SPATAmbipanningRENDERER_H__
