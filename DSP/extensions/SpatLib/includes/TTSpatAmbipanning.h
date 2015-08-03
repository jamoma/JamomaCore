/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Jamoma DSP SpatLib unit based on Distance-based amplitude panning (Ambipanning)
 *
 * @details Ambipanning permits sinks (speakers) to be positioned any way you want. 
 * Speaker configurations are not limited to circles/spheres surrounding a sweet spot, but can be used e.g. to locate speakers in several adjecent spaces.
 * Ambipanning is matrix-based.
 *
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place, Jan Schacher
 *
 * @copyright Copyright © 2015 by Jan Schacher, Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __SPATAmbipanning_H__
#define __SPATAmbipanning_H__

#include "TTDSP.h"
#include "TTSampleMatrix.h"
#include "TTSpat.h"
#include "TTSpatAmbipanningRenderer.h"


/**	Jamoma DSP SpatLib unit based on Distance-based amplitude panning (Ambipanning)
 *
 * @details Ambipanning permits sinks (speakers) to be positioned any way you want.
 * Speaker configurations are not limited to circles/spheres surrounding a sweet spot, but can be used e.g. to locate speakers in several adjecent spaces.
 * Ambipanning is matrix-based and ensures equal intensity while adjusting gains to each of the sinks in such a way that relative gain diminish with increasing distance from source to sink.
 * The exact rolloff rate (in dB) can be controlled with the rolloff attribute of the #TTSpatAmbipanningRenderer class.
 */
class TTSpatAmbipanning : public TTSpatBaseRenderer {
	TTCLASS_SETUP(TTSpatAmbipanning)
	
	TTSpatAmbipanningRenderer* getRenderer()
	{
		return (TTSpatAmbipanningRenderer*)mRenderer;
	}
	
	TTSpatAmbipanningSource* getSource(int aSourceNumber)
	{
		return (TTSpatAmbipanningSource*)&mSources[aSourceNumber];
	}
	
public:
	
	
	/** 
	 @param aValue						Used to return the distance Mode.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getDistanceMode(TTValue& aValue);
	
	/** 
	 @param aValue						sets the distance Mode.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setDistanceMode(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the db Unit.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getDbUnit(TTValue& aValue);
	
	/** 
	 @param aValue						sets the db Unit.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setDbUnit(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the dist Att.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getDistAtt(TTValue& aValue);
	
	/** 
	 @param aValue						sets the dist Att.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setDistAtt(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the Xyz Scale.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getXyzScale(TTValue& aValue);
	
	/** 
	 @param aValue						sets the get Xyz Scale.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setXyzScale(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the AED Scale.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getAedScale(TTValue& aValue);
	
	/** 
	 @param aValue						sets the AED Scale.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setAedScale(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the center curve.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCenterCurve(TTValue& aValue);
	
	/** 
	 @param aValue						sets the center curve.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setCenterCurve(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the center attenuation in db.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCenterAttDb(TTValue& aValue);
	
	/** 
	 @param aValue						sets the center attenuation in db.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setCenterAttDb(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the center attenuation
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCenterAtt(TTValue& aValue);
	
	/** 
	 @param aValue						sets the center attenuation
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setCenterAtt(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the center attenuation 2
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCenterAtt2(TTValue& aValue);
	
	/** 
	 @param aValue						sets the center attenuation 2
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setCenterAtt2(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the center size
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCenterSize(TTValue& aValue);
	
	/** 
	 @param aValue						sets the center size
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setCenterSize(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the center size 2
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCenterSize2(TTValue& aValue);
	
	/** 
	 @param aValue						sets the center size 2
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setCenterSize2(const TTValue& aValue);
	
	/** 
	 @param aValue						Used to return the center size 3
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCenterSize3(TTValue& aValue);
	
	/** 
	 @param aValue						sets the center size 3
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setCenterSize3(const TTValue& aValue);
	
	/**
	 @param aValue						Used to return the order
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getOrder(TTValue& aValue);
	
	/**
	 @param aValue						sets the order
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setOrder(const TTValue& aValue);
	
//	/**	Unit Tests.
//	 @param aReturnedTestInfo			Information on the outcome of the tests.
//	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
//	 */
//	virtual TTErr test(TTValue& aReturnedTestInfo);
	
};



#endif // __SPATAmbipanning_H__
