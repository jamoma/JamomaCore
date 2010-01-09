/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_INLET_H__
#define __TTMULTICORE_INLET_H__

#include "TTMulticore.h"
#include "TTMulticoreObject.h"


/******************************************************************************************/

// NOTE: we don't need to keep a buffer of our own, be we just mirror the buffer of mSourceObject

class TTMulticoreSource {
	TTMulticoreObjectPtr	mSourceObject;	// the object from which we pull samples
	TTUInt16				mOutletNumber;	// zero-based
	
public:
	
	
	TTMulticoreSource()
	{;}
	
	~TTMulticoreSource()
	{
		// TODO: inorder to listen for notifications, I have to be a real object!
		mSourceObject->unregisterObserverForNotifications(*this);
	}

	void connect(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber)
	{
		mSourceObject = anObject;
		mOutletNumber = fromOutletNumber;
		
		// tell the source that is passed in that we want to watch it
		mSourceObject->registerObserverForNotifications(*this);
	}	
	
	void init()
	{
		mSourceObject->init();
	}
	
	void preprocess()
	{
		mSourceObject->preprocess();
	}
	
	TTErr process(TTAudioSignalPtr& returnedSignal) 
	{
		return mSourceObject->process(returnedSignal, mOutletNumber);
	}
	
};

typedef TTMulticoreSource*					TTMulticoreSourcePtr;
typedef vector<TTMulticoreSource>			TTMulticoreSourceVector;		// TODO: should this be a vector of pointers?
typedef TTMulticoreSourceVector::iterator	TTMulticoreSourceIter;



/******************************************************************************************/

/**	This object represents a single 'inlet' to a TTMulticoreObject.
	TTMulticoreObject maintains a vector of these inlets.
	
	The relationship of an inlet to other parts of the multicore heirarchy is as follows:

		A graph may have many objects.
		An object may have many inlets.	
		An inlet may have many signals connected.
		A signal may have many channels.
*/
class TTMulticoreInlet {
	//TTMulticoreObjectPtr		mOwner;
	TTMulticoreSourceVector		mSourceObjects;		///< A vector of object pointers from which we pull our source samples using the ::getAudioOutput() method.
	TTAudioSignalPtr			mBufferedInput;		///< summed samples from all sources
	
public:
	TTMulticoreInlet()
	{;}
	
	~TTMulticoreInlet()
	{;}
	
//	void setOwner(MCoreObjectPtr newOwner, TTAudioSignalArray* newInputs, TTUInt16 newIndex);
	
	// reset
	void reset()
	{
		mSourceObjects.resize(0);
	}
		
	// init the chain from which we will pull
	void init()
	{
		for_each(mSourceObjects.begin(), mSourceObjects.end(), mem_fun(&TTMulticoreSource::init));
		// TODO: we need to allocate memory for our audio signal here!
		// mUnitGenerator->setMaxNumChannels(weDeliverNumChannels);

		/*
		 TTUInt16 TTMulticoreObject::initAudioSignal(TTAudioSignalPtr aSignal, TTMulticoreObjectPtr aSource)
		 {
		 TTUInt16	numChannels;
		 TTUInt16	sourceProducesNumChannels;
		 
		 numChannels = aSignal->getNumChannels();
		 sourceProducesNumChannels = aSource->audioOutput->getNumChannels();
		 
		 // currently we only up-size a signal, but perhaps we should also down-size them as appropriate?
		 if (sourceProducesNumChannels > numChannels)
		 aSignal->setmaxNumChannels(sourceProducesNumChannels);
		 
		 aSignal->setnumChannels(sourceProducesNumChannels);
		 return sourceProducesNumChannels;
		 }
		*/
	}
	
	// when we receive a notification than an object is going away...
//	void drop(TTObjectPtr theObjectBeingDeleted);
	
	TTErr connect(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber)
	{
		mSourceObjects.resize(mSourceObjects.size()+1);
		mSourceObjects[mSourceObjects.size()-1].connect(anObject, fromOutletNumber);
		return kTTErrNone;
	}

//	TTUInt16 getMaxNumSourceChannels(TTUInt16 weDeliverNumChannels);
	
//private:
//	TTUInt16 initAudioSignal(TTAudioSignalPtr aSignal, MCoreObjectPtr aSource);

	
	void preprocess()
	{
		mBufferedInput->clear();
		for_each(mSourceObjects.begin(), mSourceObjects.end(), mem_fun(&TTMulticoreSource::preprocess));
	}

		
	// collect and sum the sources
	TTErr process(TTAudioSignalPtr& returnedSummedSignal)
	{
		int					err;
		TTAudioSignalPtr	foo;
		
		for (TTMulticoreSourceIter i = mSourceObjects.begin(); i != mSourceObjects.end(); i++) {
			err |= (*i).process(foo);
			(*mBufferedInput) += (*foo);
		}

		returnedSummedSignal = mBufferedInput;
		return (TTErr)err;
	}
	
};


#endif // __TTMULTICORE_INLET_H__
