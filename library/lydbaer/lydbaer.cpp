/* 
 * Lydbaer Extensions for TTBlue
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "lydbaer.h"


LydbaerObject::LydbaerObject(TTSymbolPtr objectName, TTUInt16 initialNumChannels)
	:flags(kLydbaerProcessor), audioSources(NULL), sidechainSources(NULL), numSources(0), numSidechainSources(0), 
	audioInput(NULL), sidechainInput(NULL), audioOutput(NULL), audioObject(NULL)
{
	TTErr err;
	
	err = TTObjectInstantiate(objectName, &audioObject, initialNumChannels);
	err = TTObjectInstantiate(kTTSym_audiosignal, &audioInput, initialNumChannels);
	err = TTObjectInstantiate(kTTSym_audiosignal, &audioOutput, initialNumChannels);
}


LydbaerObject::~LydbaerObject()
{
	TTObjectRelease(audioObject);
	TTObjectRelease(audioInput);
	TTObjectRelease(sidechainInput);
	TTObjectRelease(audioOutput);
}


TTErr LydbaerObject::setAudioOutputPtr(TTAudioSignalPtr newOutputPtr)
{
	if(audioOutput)
		TTObjectRelease(audioOutput);

	audioOutput = (TTAudioSignalPtr)TTObjectReference(newOutputPtr);
	return kTTErrNone;
}


TTErr LydbaerObject::prepareToProcess()
{
	processStatus = kProcessNotStarted;

	for(TTUInt16 i=0; i<numSources; i++)
		audioSources[i]->prepareToProcess();
	for(TTUInt16 i=0; i<numSidechainSources; i++)
		sidechainSources[i]->prepareToProcess();
	return kTTErrNone;
}


TTErr LydbaerObject::resetSources(TTUInt16 vs)
{
	if(audioSources && numSources)
		free(audioSources);
	audioSources = NULL;
	numSources = 0;
	
	if(sidechainSources && numSidechainSources)
		free(sidechainSources);
	sidechainSources = NULL;
	numSidechainSources = 0;
	
	// Generators will not receive an 'addSource' call, 
	// so we set them with the 'default' vector size provided by the global reset
	if(flags & kLydbaerGenerator){
		audioOutput->allocWithVectorSize(vs);
	}
	
	return kTTErrNone;
}


TTErr LydbaerObject::addSource(LydbaerObjectPtr anObject, TTUInt8 anInletNumber)
{	
	if(anInletNumber){		// A sidechain source
		numSidechainSources++;
		if(numSidechainSources == 1)
			sidechainSources = (LydbaerObjectPtr*)malloc(sizeof(LydbaerObjectPtr) * numSidechainSources);
		else
			sidechainSources = (LydbaerObjectPtr*)realloc(sidechainSources, sizeof(LydbaerObjectPtr) * numSidechainSources);
		sidechainSources[numSidechainSources-1] = anObject;
	}
	else{					// A normal audio source
		numSources++;
		if(numSources == 1)
			audioSources = (LydbaerObjectPtr*)malloc(sizeof(LydbaerObjectPtr) * numSources);
		else
			audioSources = (LydbaerObjectPtr*)realloc(audioSources, sizeof(LydbaerObjectPtr) * numSources);
		audioSources[numSources-1] = anObject;
	}
	return kTTErrNone;
}


TTUInt16 LydbaerObject::initAudioSignal(TTAudioSignalPtr aSignal, LydbaerObjectPtr aSource)
{
	TTUInt16	numChannels;
	TTUInt16	sourceProducesNumChannels;
	
	numChannels = aSignal->getNumChannels();
	sourceProducesNumChannels = aSource->audioOutput->getNumChannels();
	if(sourceProducesNumChannels > numChannels){
		aSignal->setmaxNumChannels(sourceProducesNumChannels);
		aSignal->setnumChannels(sourceProducesNumChannels);
	}
	else
		sourceProducesNumChannels = numChannels;
	
	return sourceProducesNumChannels;
}


TTErr LydbaerObject::init()
{
	TTUInt16	sourceProducesNumChannels;
	TTUInt16	sidechainSourceProducesNumChannels;
	TTUInt16	weDeliverNumChannels;
		
	// init objects higher up in the chain first
	for(TTUInt16 i=0; i<numSources; i++)
		audioSources[i]->init();
	for(TTUInt16 i=0; i<numSidechainSources; i++)
		sidechainSources[i]->init();
	
	// What follows is a bit ugly (including code duplication) and should be reviewed:
	// The sidechain situation makes this even more complex...
	// For now we make the dubious assumption that sidechains are going to follow along
	// and be set up just like the normal audio inputs.
	
	if(numSources && audioSources){
		// match our source's vector size and number of channels
		sourceProducesNumChannels = initAudioSignal(audioInput, audioSources[0]);
//		numChannels = audioInput->getNumChannels();
//		sourceProducesNumChannels = audioSources[0]->audioOutput->getNumChannels();
//		if(sourceProducesNumChannels > numChannels){
//			audioInput->setmaxNumChannels(sourceProducesNumChannels);
//			audioInput->setnumChannels(sourceProducesNumChannels);
//		}
//		else
//			sourceProducesNumChannels = numChannels;
		
		// while it make sense to always match the input of this object to the output of the previous object (as above)
		// we might want to have a different number of outputs here -- how should we handle that?
		// for now we are just matching them...
		
		weDeliverNumChannels = initAudioSignal(audioOutput, audioSources[0]);
//		numChannels = audioOutput->getNumChannels();
//		weDeliverNumChannels = audioSources[0]->audioOutput->getNumChannels();
//		if(weDeliverNumChannels > numChannels){
//			audioOutput->setmaxNumChannels(weDeliverNumChannels);
//			audioOutput->setnumChannels(weDeliverNumChannels);
//		}
//		else
//			weDeliverNumChannels = numChannels;

		// for generators, these are already alloc'd in the reset method
		audioInput->allocWithVectorSize(audioSources[0]->audioOutput->getVectorSize());
		audioOutput->allocWithVectorSize(audioSources[0]->audioOutput->getVectorSize());
		
		if(numSidechainSources){
			sidechainSourceProducesNumChannels = initAudioSignal(sidechainInput, sidechainSources[0]);
			sidechainInput->allocWithVectorSize(sidechainSources[0]->audioOutput->getVectorSize());
		}
	}
	else{
		sourceProducesNumChannels = 0;
		weDeliverNumChannels = getNumOutputChannels();
	}
	
	// Even more ambiguous, what do we do for the acual audio object?  
	// For now we are setting it to the higher of the two options to be safe.
	// (and we are not taking sidechains into account at all
	if(weDeliverNumChannels > sourceProducesNumChannels)
		audioObject->setMaxNumChannels(weDeliverNumChannels);
	else
		audioObject->setMaxNumChannels(sourceProducesNumChannels);

	return kTTErrNone;
}


TTErr LydbaerObject::getAudioOutput(TTAudioSignalPtr& returnedSignal)
{
	TTAudioSignalPtr	pulledInput = NULL;
	TTAudioSignalPtr	pulledSidechainInput = NULL;
	TTErr				err;
	
	switch(processStatus){
		
		// we have not processed anything yet, so let's get started
		case kProcessNotStarted:
					
			if(numSidechainSources){
				audioInput->clear();		// zero the samples
				sidechainInput->clear();	// zero the samples
				
				// sum the sources
				for(TTUInt16 i=0; i<numSources; i++){
					err = audioSources[i]->getAudioOutput(pulledInput);
					if(!err)
						(*audioInput) += (*pulledInput);
				}
				
				// sum the sidechain sources
				for(TTUInt16 i=0; i<numSidechainSources; i++){
					err = sidechainSources[i]->getAudioOutput(pulledSidechainInput);
					if(!err)
						(*sidechainInput) += (*pulledSidechainInput);
				}
				
				audioObject->process(audioInput, sidechainInput, audioOutput);		// a processor with sidechain input
			}
			if(numSources){
				// zero the samples
				audioInput->clear();
				
				// sum the sources
				for(TTUInt16 i=0; i<numSources; i++){
					err = audioSources[i]->getAudioOutput(pulledInput);
					if(!err)
						(*audioInput) += (*pulledInput);
				}

				audioObject->process(audioInput, audioOutput);		// a processor
			}
			else{
				audioObject->process(audioOutput);					// a generator (or no input)
			}
			
			// return
			returnedSignal = audioOutput;
			break;
			
			
		// we already processed everything that needs to be processed, so just set the pointer
		case kProcessComplete:
			returnedSignal = audioOutput;
			
			
		// to prevent feedback / infinite loops, we just hand back the last calculated output here
		case kProcessingCurrently:
			returnedSignal = audioOutput;
			break;
		
		
		// we should never get here
		default:
			return kTTErrGeneric;
	}
	return kTTErrNone;
}

