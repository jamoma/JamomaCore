/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Audio buffer that manages multiple SampleMatrices.
 * 
 * @see TTSampleMatrix, TTMatrix, TTAudioSignal
 *  
 * @authors Timothy Place & Nathan Wolek
 *
 * @copyright Copyright © 2012, Timothy Place & Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBuffer.h"
#include "TTSampleMatrix.h"

#define thisTTClass			TTBuffer
#define thisTTClassName		"buffer"
#define thisTTClassTags		"audio, buffer"


TTHashPtr gTTBufferNameMap = NULL;
// TODO: we likely need second hash table to track all SampleMatrices for status and destructor

TTObjectPtr TTBuffer::instantiate(TTSymbol& name, TTValue& arguments)
{
	return new TTBuffer(arguments);
}


extern "C" void TTBuffer::registerClass() 
{
	TTClassRegister("buffer", thisTTClassTags, TTBuffer::instantiate);
}


TTBuffer::TTBuffer(TTValue& arguments) : 
	TTAudioObject(arguments)
{
	// By convention, the first argument for a TTAudioObject is the number of channels
	// So we'll maintain that here, and then use the second argument for the name of the buffer
	
	TTUInt16	channelCount = 1;
	TTSymbol	name = kTTSymEmpty;
	
	if (arguments.getSize() > 0) {
		arguments.get(0, channelCount);	// TODO: should we limit range? what should zero mean?
		if (arguments.getSize() > 1)
			arguments.get(1, name);
	}
	
	addMessageWithArguments(getNames);
	addAttributeWithSetter(Name, kTypeSymbol);
	
	addAttributeWithGetterAndSetter(NumChannels,		kTypeUInt16);
	addAttributeWithGetterAndSetter(Length,				kTypeFloat64);
	addAttributeWithGetterAndSetter(LengthInSamples,	kTypeUInt64);
//	addAttribute(SampleRate,							kTypeFloat64);
	
	addMessage(normalize);
	addMessageWithArguments(fill);
	
	// initialize
	init(channelCount, name);
		
}


TTBuffer::~TTBuffer()
{
	chuckMatrix(mActiveMatrix);
	if (mBecomingActiveMatrix) chuckMatrix(mBecomingActiveMatrix);
	// TODO: what happens to matrices that are checked out, but no longer active?
}


// internal method used for initializing the TTBuffer and mActiveMatrix for use
TTErr TTBuffer::init(TTUInt16 channelCount, TTSymbol name)
{
	TTErr err = kTTErrNone;
	
	if (!gTTBufferNameMap)
		gTTBufferNameMap = new TTHash;
		
	setAttributeValue("name", name);
		
	err = TTObjectInstantiate("samplematrix", (TTObjectPtr*)&mActiveMatrix, kTTValNONE);
	if (!err)
	{
		mActiveMatrix->setAttributeValue("numChannels", channelCount);
		mActiveMatrix->setBufferPoolStage(kSM_Active);
	}
	
	mBecomingActiveMatrix = NULL;
	
	return err;
}

// internal method used for disposing of a no-longer used matrix
TTErr TTBuffer::chuckMatrix(TTSampleMatrixPtr oldMatrix)
{
	if (oldMatrix->getUserCount() < 1)
	{
		return TTObjectRelease(TTObjectHandle(&oldMatrix));
	} else {
		return kTTErrFreeFailed;
	}
		
}


// internal methods used for prepping mBecomingActiveMatrix, then swapping it out with mActiveMatrix
TTErr TTBuffer::prepareBecomingActiveMatrix()
{
	// set to generic error first
	TTErr err = kTTErrGeneric;
	
	// check that there isn't already another mBecomingActiveMatrix in progress
	if (mBecomingActiveMatrix == NULL)
	{
		// if so, then we first we try to instatiate a new TTSampleMatrix
		// and if it succeeds, it will override the generic error above
		err = TTObjectInstantiate("samplematrix", (TTObjectPtr*)&mBecomingActiveMatrix, kTTValNONE);
	}
	
	// only if there is still no error at this point, we set up this other stuff
	if (!err)
	{
		mBecomingActiveMatrix->adaptTo(mActiveMatrix);		// start with something like the mActiveMatrix
		mBecomingActiveMatrix->setBufferPoolStage(kSM_BecomingActive);
	} else {
		// if there is an error, send a log message
		TTLogError("TTBuffer failed to prepare new SampleMatrix");
	}
	
	// report if everything worked
	return err;
}

TTErr TTBuffer::promoteBecomingActiveMatrix()
{
	// TODO: i think there is a real need for mutex locking here
	
	// tell the mActiveMatrix it is on the way out
	mActiveMatrix->setBufferPoolStage(kSM_BecomingIdle);
	
	// attempt to chuckMatrix, because if the mUserCount is 0 it will NEVER call checkInMatrix
	if (mActiveMatrix->getUserCount() < 1) chuckMatrix(mActiveMatrix);
	
	// tell the mBecomingActiveMatrix it is on the way in
	mBecomingActiveMatrix->setBufferPoolStage(kSM_Active);
	
	// update the mActiveMatrix pointer
	mActiveMatrix = mBecomingActiveMatrix;
	
	// set to NULL for the next time prepareBecomingActiveMatrix() is called
	mBecomingActiveMatrix = NULL;
	
	// no real chance of an error, yet
	return kTTErrNone;
}
	

TTErr TTBuffer::checkOutMatrix(TTSampleMatrixPtr& startUsingThisMatrix)
{
	// add one to the tally of users
	mActiveMatrix->incrementUserCount();
	
	// then give out the pointer to the current mActiveMatrix 
	startUsingThisMatrix = mActiveMatrix;
	
	// no real chance of an error, yet
	return kTTErrNone;
}

TTErr TTBuffer::checkInMatrix(TTSampleMatrixPtr& doneUsingThisMatrix)
{
	// sub one from the tally of users
	doneUsingThisMatrix->decrementUserCount();
	
	// if this is no longer the current mActiveMatrix, then...
	if(doneUsingThisMatrix->isBufferPoolStage(kSM_BecomingIdle))
	{
		// the next method checks the user count, so we don't have to 
		// but maybe we should so that meaningful errors can be reported?
		chuckMatrix(doneUsingThisMatrix);
	}
	
	// we set the pointer to NULL so that users have to check it out again
	doneUsingThisMatrix = NULL;
	
	// no real chance of an error, yet
	return kTTErrNone;
}

