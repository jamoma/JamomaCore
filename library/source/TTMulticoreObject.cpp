/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMulticoreObject.h"
#include "TTMulticoreInlet.h"
#include "TTMulticoreOutlet.h"

#define thisTTClass			TTMulticoreObject
#define thisTTClassName		"multicore.object"
#define thisTTClassTags		"audio, multicore, wrapper"


//	Arguments
//	1. (required) The name of the Jamoma DSP object you want to wrap
//	2. (optional) Number of inlets, default = 1 */
//	3. (optional) Number of outlets, default = 1 */

TT_OBJECT_CONSTRUCTOR,
	mFlags(kTTMulticoreProcessor), 
	mInputSignals(NULL), 
	mOutputSignals(NULL), 
	mUnitGenerator(NULL)
{
	TTErr		err = kTTErrNone;
	TTSymbolPtr	wrappedObjectName = NULL;
	TTUInt16	initialNumChannels = 1;
	TTUInt16	numInlets = 1;
	TTUInt16	numOutlets = 1;
	
	TT_ASSERT(multicore_correct_instantiation_args, arguments.getSize() > 0);
	
	arguments.get(0, &wrappedObjectName);
	if (arguments.getSize() > 1)
		arguments.get(1, numInlets);
	if (arguments.getSize() > 2)
		arguments.get(2, numOutlets);
	
	err = TTObjectInstantiate(wrappedObjectName, &mUnitGenerator, initialNumChannels);
	err = TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&mInputSignals, initialNumChannels);
	err = TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&mOutputSignals, initialNumChannels);
	
	mInlets.resize(numInlets);
	mOutlets.resize(numOutlets);
	
	// Graph Configuration
	// addMessage(reset);						// zero the state of the graph, forget all connections
	// addMessage(setup);						// send 'connect' messages to any objects below us in the graph
	// addMessageWithArgument(connect);		// add a connection from a source provided in the argument
	// addMessage(init);						// knowing the graph, do preparations
	addMessageWithArgument(objectFreeing);	// called when one of our input source objects is deleted
	
	// Graph Processing
	// addMessage(preprocess);
	// addMessage(process);
}


TTMulticoreObject::~TTMulticoreObject()
{
//	for (TTUInt16 i=0; i<numSources; i++) {
//		if (audioSources[i]->valid)
//			audioSources[i]->unregisterObserverForNotifications(*this);
//	}
	TTObjectRelease(&mUnitGenerator);
	TTObjectRelease((TTObjectPtr*)&mInputSignals);
	TTObjectRelease((TTObjectPtr*)&mOutputSignals);
}


TTErr TTMulticoreObject::objectFreeing(const TTValue& theObjectBeingDeleted)
{
	TTObjectPtr o = theObjectBeingDeleted;
	TTBoolean	found = NO;
	TTBoolean	oldValid = valid;
	// This is an ugly operation
	// the problem is that we don't want to traverse a linked-list in the processing chain
	
	valid = false;
	while(getlock())
		;

// TODO: come back to this...
//	for (TTUInt16 i=0; i<(numSources-1); i++) {
//		if (audioSources[i] == o)
//			found = YES;
//		if (found)
//			audioSources[i] = audioSources[i+1];
//	}
//	
//	audioSources[numSources-1] = 0;
//	numSources--;
	
	valid = oldValid;
	return kTTErrNone;
}


TTErr TTMulticoreObject::setAudioOutputPtr(TTAudioSignalPtr newOutputPtr)
{
	TTObjectPtr oldAudioOutput = mOutputSignal;
	
	mOutputSignal = (TTAudioSignalPtr)TTObjectReference(newOutputPtr);

	if (oldAudioOutput)
		TTObjectRelease(&oldAudioOutput);
	return kTTErrNone;
}


TTErr TTMulticoreObject::reset()
{
	for_each(mInlets.begin(), mInlets.end(), mem_fun(&TTMulticoreInlet::reset));
		
	// Generators will not receive an 'addSource' call, 
	// so we set them with the 'default' vector size provided by the global reset/	// if (mFlags & kTTMulticoreGenerator)
	//	audioOutput->allocWithVectorSize(vs);
	
	return kTTErrNone;
}


// was TTErr TTMulticoreObject::addSource(TTMulticoreObjectPtr anObject, TTUInt16 sourceOutletNumber, TTUInt16 anInletNumber)
TTErr TTMulticoreObject::connect(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{	
	return mInlets[toInletNumber].connect(anObject, fromOutletNumber);	
}


TTErr TTMulticoreObject::init()
{
//	TTUInt16	sourceProducesNumChannels;
//	TTUInt16	weDeliverNumChannels;
	
	lock();
	
	// init objects higher up in the chain first
	for_each(mInlets.begin(), mInlets.end(), mem_fun(&TTMulticoreInlet::init));
	
	
	// What follows is a bit ugly (including code duplication) and should be reviewed:
	// The sidechain situation makes this even more complex...
	// For now we make the dubious assumption that sidechains are going to follow along
	// and be set up just like the normal audio inputs.
	
//	if (numSources && audioSources) {
		// match our source's vector size and number of channels
//		sourceProducesNumChannels = initAudioSignal(mInputSignal, audioSources[0]);
		
		// while it make sense to always match the input of this object to the output of the previous object (as above)
		// we might want to have a different number of outputs here -- how should we handle that?
		// for now we are just matching them more or less...		
//		weDeliverNumChannels = sourceProducesNumChannels * TTLimitMin<TTFloat32>(inChansToOutChansRatio[1] / inChansToOutChansRatio[0], 1);
//		mOutputSignal->setmaxNumChannels(weDeliverNumChannels);
//		mOutputSignal->setnumChannels(weDeliverNumChannels);

		// for generators, these are already alloc'd in the reset method
//		mInputSignal->allocWithVectorSize(audioSources[0]->audioOutput->getVectorSize());
//		mOutputSignal->allocWithVectorSize(audioSources[0]->audioOutput->getVectorSize());		
//	}
//	else {
//		sourceProducesNumChannels = 0;
//		weDeliverNumChannels = getNumOutputChannels();
//	}
	
	// Even more ambiguous, what do we do for the acual audio object?  
	// For now we are setting it to the higher of the two options to be safe.
	// (and we are not taking sidechains into account at all
//	if (weDeliverNumChannels > sourceProducesNumChannels)
//		mUnitGenerator->setMaxNumChannels(weDeliverNumChannels);
//	else
//		mUnitGenerator->setMaxNumChannels(sourceProducesNumChannels);

	unlock();
	return kTTErrNone;
}


// was TTErr TTMulticoreObject::prepareToProcess()
TTErr TTMulticoreObject::preprocess()
{
	lock();
	if (valid) {
		mStatus = kTTMulticoreProcessNotStarted;		
		for_each(mInlets.begin(), mInlets.end(), mem_fun(&TTMulticoreInlet::preprocess));

		// TODO: Critical -- come back to this!
		//		for (TTUInt16 i=0; i<numSources; i++)
		//			audioSources[i]->prepareToProcess();
		//		for (TTUInt16 i=0; i<numSidechainSources; i++)
		//			sidechainSources[i]->prepareToProcess();
		
	}
	unlock();
	return kTTErrNone;
}


// was TTErr TTMulticoreObject::getAudioOutput(TTAudioSignalPtr& returnedSignal, TTBoolean getSidechain)
TTErr TTMulticoreObject::process(TTAudioSignalPtr& returnedSignal, TTBoolean getSidechain)
{
//	TTAudioSignalPtr	pulledInput = NULL;
//	TTErr				err;
	
	lock();
	switch (mStatus) {
		
		// we have not processed anything yet, so let's get started
		case kTTMulticoreProcessNotStarted:
			mStatus = kTTMulticoreProcessingCurrently;
			
			// zero the samples
			mInputSignals->clear();

			// sum the sources
			for_each(mInlets.begin(), mInlets.end(), mem_fun(&TTMulticoreInlet::process));
						
//			for (TTUInt16 i=0; i<numSources; i++) {
//				// if there is a non-zero source outlet index, that means we are supposed to request the sidechain signal
//				err = audioSources[i]->getAudioOutput(pulledInput, audioSourceOutletIndices[i]);
//				if(!err)
//					(*audioInput) += (*pulledInput);
//			}			
			
			if (mFlags & kTTMulticoreGenerator)
				mUnitGenerator->process(mOutputSignals);					// a generator (or no input)
			else
				mUnitGenerator->process(mInputSignals, mOutputSignals);	// a processor
			
			returnedSignal = mOutputSignal;
			mStatus = kTTMulticoreProcessComplete;
			break;
		
		
		// we already processed everything that needs to be processed, so just set the pointer
		case kTTMulticoreProcessComplete:
			returnedSignal = mOutputSignal;
			break;
			
		
		// to prevent feedback / infinite loops, we just hand back the last calculated output here
		case kTTMulticoreProcessingCurrently:
			returnedSignal = mOutputSignal;
			break;
			
		
		// we should never get here
		default:
			unlock();
			return kTTErrGeneric;
	}
	unlock();
	return kTTErrNone;
}

