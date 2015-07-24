/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Jamoma DSP SpatLib unit based on Distance-based amplitude panning (Ambipanning)
 *
 * @details Ambipanning permits sinks (speakers) to be positioned any way you want.
 * Speaker configurations are not limited to circles/spheres surrounding a sweet spot, but can be used e.g. to locate speakers in several adjecent spaces.
 * Ambipanning is matrix-based and ensures equal intensity while adjusting gains to each of the sinks in such a way that relative gain diminish with increasing distance from source to sink.
 * The exact rolloff rate (in dB) can be controlled with the rolloff attribute of the #TTSpatAmbipanningRenderer class.
 *
 * @todo: Extend with a solution for interpolating to new matrix coefficients
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSpatAmbipanning.h"

#define thisTTClass			TTSpatAmbipanning
#define thisTTClassName		"spat.ambipanning"
#define thisTTClassTags		"audio, spatialization, processing, dbap"


TTObjectBasePtr TTSpatAmbipanning::instantiate(TTSymbol name, TTValue arguments)
{
	return (TTObjectBasePtr) new thisTTClass(arguments);
}


extern "C" void thisTTClass :: registerClass ()
{
	TTClassRegister( thisTTClassName, thisTTClassTags, thisTTClass :: instantiate );
}


TTSpatAmbipanning::TTSpatAmbipanning(const TTValue& arguments) : TTSpatBase(arguments)
{
	mRenderer = new TTSpatAmbipanningRenderer;
		
	addAttributeWithGetterAndSetter(DistanceMode, kTypeInt32);
	addAttributeWithGetterAndSetter(DbUnit, kTypeFloat64);
	addAttributeWithGetterAndSetter(DistAtt, kTypeFloat64);
	addAttributeWithGetterAndSetter(XyzScale, kTypeFloat64);
	addAttributeWithGetterAndSetter(AedScale, kTypeFloat64);
	addAttributeWithGetterAndSetter(CenterCurve, kTypeFloat64);
	addAttributeWithGetterAndSetter(CenterAttDb, kTypeFloat64);
	addAttributeWithGetterAndSetter(CenterAtt, kTypeFloat64);
	addAttributeWithGetterAndSetter(CenterAtt2, kTypeFloat64);
	addAttributeWithGetterAndSetter(CenterSize, kTypeFloat64);
	addAttributeWithGetterAndSetter(CenterSize2, kTypeFloat64);
	addAttributeWithGetterAndSetter(CenterSize3, kTypeFloat64);
}


TTSpatAmbipanning::~TTSpatAmbipanning()
{
	delete mRenderer;
}


TTErr TTSpatAmbipanning::getDistanceMode(TTValue& aValue)
{
	aValue = getRenderer()->getDistanceMode();
	return kTTErrNone;
}


TTErr TTSpatAmbipanning::setDistanceMode(const TTValue& aValue)
{
	TTFloat64 distanceMode = aValue;
	
	getRenderer()->setDistanceMode(distanceMode);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


TTErr TTSpatAmbipanning::getDbUnit(TTValue& aValue)
{
	aValue = getRenderer()->getDbUnit();
	return kTTErrNone;
}


TTErr TTSpatAmbipanning::setDbUnit(const TTValue& aValue)
{
	TTFloat64 mDbUnit = aValue;
	
	getRenderer()->setDbUnit(mDbUnit);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


TTErr TTSpatAmbipanning::getDistAtt(TTValue& aValue)
{
	aValue = getRenderer()->getDistAtt();
	return kTTErrNone;
}


TTErr TTSpatAmbipanning::setDistAtt(const TTValue& aValue)
{
	TTFloat64 distAtt = aValue;
	
	getRenderer()->setDistAtt(distAtt);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


TTErr TTSpatAmbipanning::getXyzScale(TTValue& aValue)
{
	aValue = getRenderer()->getXyzScale();
	return kTTErrNone;
}


TTErr TTSpatAmbipanning::setXyzScale(const TTValue& aValue)
{
	TTFloat64 xyzScale = aValue;
	
	getRenderer()->setXyzScale(xyzScale);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


TTErr TTSpatAmbipanning::getAedScale(TTValue& aValue)
{
	aValue = getRenderer()->getAedScale();
	return kTTErrNone;
}


TTErr TTSpatAmbipanning::setAedScale(const TTValue& aValue)
{
	TTFloat64 aedScale = aValue;
	
	getRenderer()->setAedScale(aedScale);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


TTErr TTSpatAmbipanning::getCenterCurve(TTValue& aValue)
{
	aValue = getRenderer()->getCenterCurve();
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::setCenterCurve(const TTValue& aValue)
{
	TTFloat64 aCenterCurve = aValue;
	
	getRenderer()->setCenterCurve(aCenterCurve);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::setCenterAttDb(const TTValue& aValue)
{
	TTFloat64 aCenterAttDb = aValue;
	
	getRenderer()->setCenterAttDb(aCenterAttDb);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::getCenterAttDb(TTValue& aValue)
{
	aValue = getRenderer()->getCenterAttDb();
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::setCenterAtt(const TTValue& aValue)
{
	TTFloat64 aCenterAtt = aValue;
	
	getRenderer()->setCenterAtt(aCenterAtt);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::getCenterAtt(TTValue& aValue)
{
	aValue = getRenderer()->getCenterAtt();
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::setCenterAtt2(const TTValue& aValue)
{
	TTFloat64 aCenterAtt2 = aValue;
	
	getRenderer()->setCenterAtt2(aCenterAtt2);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::getCenterAtt2(TTValue& aValue)
{
	aValue = getRenderer()->getCenterAtt2();
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::setCenterSize(const TTValue& aValue)
{
	TTFloat64 aCenterSize = aValue;
	
	getRenderer()->setCenterSize(aCenterSize);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::getCenterSize(TTValue& aValue)
{
	aValue = getRenderer()->getCenterSize();
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::setCenterSize2(const TTValue& aValue)
{
	TTFloat64 aCenterSize2 = aValue;
	
	getRenderer()->setCenterSize2(aCenterSize2);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::getCenterSize2(TTValue& aValue)
{
	aValue = getRenderer()->getCenterSize2();
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::setCenterSize3(const TTValue& aValue)
{
	TTFloat64 aCenterSize3 = aValue;
	
	getRenderer()->setCenterSize3(aCenterSize3);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::getCenterSize3(TTValue& aValue)
{
	aValue = getRenderer()->getCenterSize3();
	return kTTErrNone;
}

TTErr TTSpatAmbipanning::setOrder(const TTValue& aValue)
{
	TTFloat64 aOrder = aValue;
	
	getRenderer()->setOrder(aOrder);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;}


TTErr TTSpatAmbipanning::getOrder(TTValue& aValue)
{
	aValue = getRenderer()->getOrder();
	return kTTErrNone;}


