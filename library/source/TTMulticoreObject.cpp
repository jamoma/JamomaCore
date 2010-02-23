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
//	2. (optional) Number of inlets, default = 1
//	3. (optional) Number of outlets, default = 1

TT_OBJECT_CONSTRUCTOR,
	mFlags(kTTMulticoreProcessor), 
	mInputSignals(NULL), 
	mOutputSignals(NULL), 
	mVectorSize(0),
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
	err = TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&mInputSignals, numInlets);
	err = TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&mOutputSignals, numOutlets);
	
	mInlets.resize(numInlets);
	mInputSignals->setMaxNumAudioSignals(numInlets);
	mInputSignals->numAudioSignals = numInlets;			// TODO: this array num signals access is kind of clumsy and inconsistent [tap]

	mOutlets.resize(numOutlets);
	mOutputSignals->setMaxNumAudioSignals(numOutlets);
	mOutputSignals->numAudioSignals = numOutlets;

	// if an object supports the 'setOwner' message, then we tell it that we want to become the owner
	// this is particularly important for the multicore.output object
	TTValue v = TTPtr(this);
	mUnitGenerator->sendMessage(TT("setOwner"), v);
}


TTMulticoreObject::~TTMulticoreObject()
{
	TTObjectRelease(&mUnitGenerator);
	TTObjectRelease((TTObjectPtr*)&mInputSignals);
	TTObjectRelease((TTObjectPtr*)&mOutputSignals);
}


#ifdef OLD_AND_UNUSED
TTErr TTMulticoreObject::objectFreeing(const TTValue& theObjectBeingDeleted)
{
	//TTObjectPtr o = theObjectBeingDeleted;
	//TTBoolean	found = NO;
	TTBoolean	oldValid = valid;
	
	// This is an ugly operation
	// the problem is that we don't want to traverse a linked-list in the processing chain
	
	valid = false;
	while(getlock())
		;

	// TODO: handle the graph update/change here...
	
	valid = oldValid;
	return kTTErrNone;
}
#endif


void TTMulticoreObject::getDescription(TTMulticoreDescription& desc)
{
	desc.mClassName = mUnitGenerator->getName();
	desc.mInputDescriptions.clear();
	for (TTMulticoreInletIter inlet = mInlets.begin(); inlet != mInlets.end(); inlet++)
		inlet->getDescriptions(desc.mInputDescriptions);
}


TTErr TTMulticoreObject::reset()
{
	for_each(mInlets.begin(), mInlets.end(), mem_fun_ref(&TTMulticoreInlet::reset));		
	return kTTErrNone;
}


TTErr TTMulticoreObject::connect(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{	
	return mInlets[toInletNumber].connect(anObject, fromOutletNumber);	
}


TTErr TTMulticoreObject::drop(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{
	return mInlets[toInletNumber].drop(anObject, fromOutletNumber);	
}


TTErr TTMulticoreObject::preprocess(const TTMulticorePreprocessData& initData)
{
	lock();
	if (valid) {
		TTAudioSignalPtr	audioSignal;
		TTUInt16			index = 0;
		
		mStatus = kTTMulticoreProcessNotStarted;		

		for (TTMulticoreInletIter inlet = mInlets.begin(); inlet != mInlets.end(); inlet++) {
			inlet->preprocess(initData);
			audioSignal = inlet->getBuffer(); // TODO: It seems like we can just cache this once when we init the graph, because the number of inlets cannot change on-the-fly
			mInputSignals->setSignal(index, audioSignal);
			index++;
		}
		
		index = 0;
		for (TTMulticoreOutletIter outlet = mOutlets.begin(); outlet != mOutlets.end(); outlet++) {
			audioSignal = outlet->getBuffer();
			mOutputSignals->setSignal(index, audioSignal);
			index++;
		}

		if (mFlags & kTTMulticoreGenerator) {
			if (mVectorSize != initData.vectorSize) {
				mVectorSize = initData.vectorSize;					
				mOutputSignals->allocAllWithVectorSize(initData.vectorSize);
			}			
		}
	}
	unlock();
	return kTTErrNone;
}


TTErr TTMulticoreObject::process(TTAudioSignalPtr& returnedSignal, TTUInt16 forOutletNumber)
{
	lock();
	switch (mStatus) {		

		// we have not processed anything yet, so let's get started
		case kTTMulticoreProcessNotStarted:
			mStatus = kTTMulticoreProcessingCurrently;
			
			if (mFlags & kTTMulticoreGenerator) {			// a generator (or no input)
				mUnitGenerator->process(mInputSignals, mOutputSignals);
			}
			else {											// a processor
				// zero our collected input samples
				mInputSignals->clearAll();

				// pull (process, sum, and collect) all of our source audio
				for_each(mInlets.begin(), mInlets.end(), mem_fun_ref(&TTMulticoreInlet::process));

				// TODO: evaluate this -- we are setting output vector size and num channels in process -- this is a potential performance bottle-neck...
				mOutputSignals->matchNumChannels(mInputSignals);
				// TODO: the above is a problem -- for example, consider the join≈ object.  How do we avoid this unnesseccary junk from occurring?
				
				mOutputSignals->allocAllWithVectorSize(mInputSignals->getVectorSize());
				mUnitGenerator->process(mInputSignals, mOutputSignals);
			}
			// TODO: we're doing a copy below -- is that what we really want?  Or can we just return the pointer?
			returnedSignal = mOutlets[forOutletNumber].mBufferedOutput;
			mStatus = kTTMulticoreProcessComplete;
			break;
		
		// we already processed everything that needs to be processed, so just set the pointer
		case kTTMulticoreProcessComplete:
			returnedSignal = mOutlets[forOutletNumber].mBufferedOutput;
			break;
		
		// to prevent feedback / infinite loops, we just hand back the last calculated output here
		case kTTMulticoreProcessingCurrently:
			returnedSignal = mOutlets[forOutletNumber].mBufferedOutput;
			break;
		
		// we should never get here
		default:
			unlock();
			return kTTErrGeneric;
	}
	unlock();
	return kTTErrNone;
}
