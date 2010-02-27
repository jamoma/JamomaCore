/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTGraphObject.h"
#include "TTGraphInlet.h"
#include "TTGraphOutlet.h"

#define thisTTClass			TTGraphObject
#define thisTTClassName		"multicore.object"
#define thisTTClassTags		"audio, multicore, wrapper"


//	Arguments
//	1. (required) The name of the Jamoma DSP object you want to wrap
//	2. (optional) Number of inlets, default = 1
//	3. (optional) Number of outlets, default = 1

TT_OBJECT_CONSTRUCTOR,
	mFlags(kTTGraphProcessor), 
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


TTGraphObject::~TTGraphObject()
{
	TTObjectRelease(&mUnitGenerator);
	TTObjectRelease((TTObjectPtr*)&mInputSignals);
	TTObjectRelease((TTObjectPtr*)&mOutputSignals);
}


#ifdef OLD_AND_UNUSED
TTErr TTGraphObject::objectFreeing(const TTValue& theObjectBeingDeleted)
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


void TTGraphObject::getDescription(TTGraphDescription& desc)
{
	desc.mClassName = mUnitGenerator->getName();
	desc.mInputDescriptions.clear();
	for (TTGraphInletIter inlet = mInlets.begin(); inlet != mInlets.end(); inlet++)
		inlet->getDescriptions(desc.mInputDescriptions);
}


TTErr TTGraphObject::reset()
{
	for_each(mInlets.begin(), mInlets.end(), mem_fun_ref(&TTGraphInlet::reset));		
	return kTTErrNone;
}


TTErr TTGraphObject::connect(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{	
	return mInlets[toInletNumber].connect(anObject, fromOutletNumber);	
}

