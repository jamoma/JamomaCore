/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Host a SpatLib object
 *
 * @details
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSpat.h"

#define thisTTClass			TTSpat
#define thisTTClassName		"spat"
#define thisTTClassTags		"audio, spatialization"



TT_AUDIO_CONSTRUCTOR,
mSpatFunctionObject(NULL),
mSourceCount(0),
mDestinationCount(0)
{
	//TTValue v;
	
	addAttributeWithSetter(SpatFunction,					kTypeSymbol);
	addAttributeWithSetter(SourceCount,						kTypeUInt16);
	addAttributeWithSetter(DestinationCount,				kTypeUInt16);
	addAttributeWithGetterAndSetter(SourcePositions,		kTypeFloat64);
	addAttributeWithGetterAndSetter(DestinationPositions,	kTypeFloat64);
	

	addMessageWithArguments(getSpatFunctions);
	addMessageWithArguments(getFunctionParameters);
	addMessageWithArguments(getFunctionParameter);
	addMessageWithArguments(setFunctionParameter);
	
	//addUpdate(MaxNumChannels);
	
	setAttributeValue(TT("spatFunction"), TT("spat.thru"));
	setAttributeValue(TT("sourceCount"), 2);
	setAttributeValue(TT("destinationCount"), 8);
	setProcessMethod(process);
}

TTSpat::~TTSpat()
{
	delete mSpatFunctionObject;
}


TTErr TTSpat::setSpatFunction(const TTValue& aSpatFunction)
{
	TTErr				err;
	TTSymbol			spatFunctionName;
	TTAudioObjectPtr	spatFunction = NULL;
	
	aSpatFunction.get(0, spatFunctionName);
	
	// if the function didn't change, then don't change the function
	if (spatFunctionName == mSpatFunction)
		return kTTErrNone;	
	
	// TTObjectInstantiate will automatically free the object passed into it
	err = TTObjectInstantiate(spatFunctionName, &spatFunction, kTTValNONE);
	if (!err && spatFunction) {
		// Now set the state of the object to the state we have stored
		spatFunction->setAttributeValue(TT("sourceCount"), mSourceCount);
		spatFunction->setAttributeValue(TT("destinationCount"), mDestinationCount);
		spatFunction->setAttributeValue(TT("sourcePositions"), mSourcePositions);
		spatFunction->setAttributeValue(TT("destinationPositions"), mDestinationPositions);
		
		mSpatFunction = spatFunctionName;
		mSpatFunctionObject = spatFunction;
		
		// FIXME: This is not thread safe if the audio is running
		// We need to queue this switch to occur at a time when it is safe 
		// (when audio is not processed by the old object any longer)
		// Redmine #994
		//
		// ACTUALLY: it should be okay because of the locks in the TTObjectInstantiate spinlocking to wait
		// for any process calls.
		// However, maybe those need some improvements like using volatile or atomic types
	}
	else {
		// some problems have occurred, not yet sure how we should handle this...
	}
	
	
	return err;
}



TTErr TTSpat::getSpatFunctions(const TTValue&, TTValue& listOfSpatFunctionsToReturn)
{
	TTValue v;
	
	v.setSize(2);
	v.set(0, TT("spatialization"));
	v.set(1, TT("processing")); // more efficent than append
	return TTGetRegisteredClassNamesForTags(listOfSpatFunctionsToReturn, v);
}		   


TTErr TTSpat::getFunctionParameters(const TTValue&, TTValue& aListOfParameterNamesToReturn)
{
	mSpatFunctionObject->getAttributeNames(aListOfParameterNamesToReturn);
	return kTTErrNone;
}


TTErr TTSpat::getFunctionParameter(const TTValue& aParameterNameIn, TTValue& aValueOut)
{
	TTSymbol parameterName;
	
	aParameterNameIn.get(0, parameterName);
	return mSpatFunctionObject->getAttributeValue(parameterName, aValueOut);
}


TTErr TTSpat::setFunctionParameter(const TTValue& aParameterNameAndValue, TTValue&)
{
	TTSymbol	parameterName;
	TTValue		parameterValue;
	
	aParameterNameAndValue.get(0, parameterName);
	parameterValue.copyFrom(aParameterNameAndValue, 1); //TODO: maybe there are more arguments ? 
	//aParameterNameAndValue.clear(); // only needed so that we don't return a value
	return mSpatFunctionObject->setAttributeValue(parameterName, parameterValue);
}



TTErr TTSpat::setSourceCount(const TTValue& aSourceCount)
{
	mSourceCount = aSourceCount;
	return mSpatFunctionObject->setAttributeValue(TT("sourceCount"), (TTValue&)aSourceCount);
}


TTErr TTSpat::setDestinationCount(const TTValue& aDestinationCount)
{
	mDestinationCount = aDestinationCount;
	return mSpatFunctionObject->setAttributeValue(TT("destinationCount"), (TTValue&)aDestinationCount);
}


TTErr TTSpat::setSourcePositions(const TTValue& newSourcePositions)
{
	// newSourcePositions is an array of 3N values specified in x/y/z triplets
	mSourcePositions = newSourcePositions;
	return mSpatFunctionObject->setAttributeValue(TT("sourcePositions"), (TTValue&)newSourcePositions);
}


TTErr TTSpat::getSourcePositions(TTValue& returnedSourcePositions)
{
	// newSourcePositions is an array of 3N values specified in x/y/z triplets
	returnedSourcePositions = mSourcePositions;
	return kTTErrNone;
}



TTErr TTSpat::setDestinationPositions(const TTValue& newDestinationPositions)
{
	mDestinationPositions = newDestinationPositions;
	return mSpatFunctionObject->setAttributeValue(TT("destinationPositions"), (TTValue&)newDestinationPositions);
}


TTErr TTSpat::getDestinationPositions(TTValue& returnedDestinationPositions)
{
	returnedDestinationPositions = mDestinationPositions;
	return kTTErrNone;
}


#if 0
#pragma mark -
#pragma mark Process Routines
#endif


TTErr TTSpat::process(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mSpatFunctionObject->process(inputs, outputs);
}

