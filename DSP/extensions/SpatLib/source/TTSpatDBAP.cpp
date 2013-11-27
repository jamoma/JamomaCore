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


TTSpatDBAP::TTSpatDBAP(const TTValue& arguments) : TTSpatBase(arguments)
{
	mRenderer = new TTSpatDBAPRenderer;
		
	addAttributeWithGetterAndSetter(Rolloff, kTypeFloat64);
	
	addMessageWithArguments(getSourceWidth);
	addMessageWithArguments(setSourceWidth);
}


TTSpatDBAP::~TTSpatDBAP()
{
	delete mRenderer;
}


TTErr TTSpatDBAP::getRolloff(TTValue& aValue)
{
	aValue = getRenderer()->getRolloff();
	return kTTErrNone;
}


TTErr TTSpatDBAP::setRolloff(const TTValue& aValue)
{
	TTFloat64 rolloff = aValue;
	
	getRenderer()->setRolloff(rolloff);
	getRenderer()->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


// TODO: Problem -- when initializing the matrix will be calculated many many times


TTErr TTSpatDBAP::setSourceWidth(const TTValue& aWidth, TTValue& anUnused)
{
	TTInt32 sourceNumber;
	TTFloat64 width;
	
	// TODO: We need to think of what to do if there are not two arguments...
	
	aWidth.get(0, sourceNumber);
	aWidth.get(1, width);
	
	sourceNumber = sourceNumber - 1;
	sourceNumber = TTClip<TTInt32>(sourceNumber, 0, mSources.size()-1);
	getSource(sourceNumber)->setWidth(width);
	mRenderer->recalculateMatrixCoefficients(mSources, mSinks);
	
	return kTTErrNone; // Return something else if we don't have four arguments
}


TTErr TTSpatDBAP::getSourceWidth(const TTValue& aRequestedChannel, TTValue& aWidth)
{
	TTInt16 sourceNumber;
	TTFloat64 width;
	
	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	aRequestedChannel.get(0, sourceNumber);
	
	sourceNumber = sourceNumber - 1;
	sourceNumber = TTClip<TTInt32>(sourceNumber, 0, mSources.size()-1);
	getSource(sourceNumber)->getWidth(width);
	
	aWidth.resize(2);
	aWidth.set(0, sourceNumber);
	aWidth.set(1, width);
	
	return kTTErrNone;
}


