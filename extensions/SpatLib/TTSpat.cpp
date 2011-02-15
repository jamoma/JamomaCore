/* 
 * Host a SpatLib object
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSpat.h"

#define thisTTClass			TTSpat
#define thisTTClassName		"spat"
#define thisTTClassTags		"audio, spatialization"


TT_AUDIO_CONSTRUCTOR,
	mSpatFunctionObject(NULL)
{
	TTValue v;
	
	addAttributeWithSetter(SpatFunction,					kTypeSymbol);
	addAttributeWithSetter(SourceCount,						kTypeUInt16);
	addAttributeWithSetter(DestinationCount,				kTypeUInt16);
	addAttributeWithGetterAndSetter(SourcePositions,		kTypeFloat64);
	addAttributeWithGetterAndSetter(DestinationPositions,	kTypeFloat64);
	
	addMessageWithArgument(getSpatFunctions);
	
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
	TTErr err;
	
	mSpatFunction = aSpatFunction;
	
	// TTObjectInstantiate will automatically free the object passed into it
	err = TTObjectInstantiate(mSpatFunction, &mSpatFunctionObject, kTTValNONE);
	if (!err) {
		// Now set the state of the object to the state we have stored
		mSpatFunctionObject->setAttributeValue(TT("sourceCount"), mSourceCount);
		mSpatFunctionObject->setAttributeValue(TT("destinationCount"), mDestinationCount);
		mSpatFunctionObject->setAttributeValue(TT("sourcePositions"), mSourcePositions);
		mSpatFunctionObject->setAttributeValue(TT("destinationPositions"), mDestinationPositions);
	}
	return err;
}


TTErr TTSpat::getSpatFunctions(TTValue& listOfSpatFunctionsToReturn)
{
	TTValue v;
	
	v.setSize(2);
	v.set(0, TT("spatialization"));
	v.set(1, TT("processing")); // more efficent than append
	return TTGetRegisteredClassNamesForTags(listOfSpatFunctionsToReturn, v);
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

