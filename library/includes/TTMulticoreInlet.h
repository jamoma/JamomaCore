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


/******************************************************************************************/

// NOTE: we don't need to keep a buffer of our own, be we just mirror the buffer of mSourceObject

class TTMulticoreSource {
	TTMulticoreObjectPtr	mSourceObject;	// the object from which we pull samples
	TTUInt16				mOutletNumber;	// zero-based
	
public:
	inline TTErr pull(TTAudioSignalPtr& returnedSignal);
	
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

	// TODO: on preprocess, clear mBufferedInput
	// TODO: on process, pull from, and sum, all of the sources	
	
public:
	TTMulticoreInlet();
	~TTMulticoreInlet();
	
//	void setOwner(MCoreObjectPtr newOwner, TTAudioSignalArray* newInputs, TTUInt16 newIndex);
	
	// reset
//	void reset();
	
	// init the chain from which we will pull
//	void init();
	
	// when we receive a notification than an object is going away...
//	void drop(TTObjectPtr theObjectBeingDeleted);
	
//	TTErr addSource(TTObjectPtr anObject, TTUInt16 sourceOutletNumber);

//	TTUInt16 getMaxNumSourceChannels(TTUInt16 weDeliverNumChannels);
	
//private:
//	TTUInt16 initAudioSignal(TTAudioSignalPtr aSignal, MCoreObjectPtr aSource);

	
	void prepareToProcess()
	{
		mBufferedInput->clear();
	}
	
	
	
	
	/*
	class TTAudioSignalSum : public binary_function< ? > {
	
	private:
		TTAudioSignalPtr	mAudioSignal;
		
		
	public:
		TTAudioSignalSum()
		{}
		
		const TTAudioSignalPtr operator()( ? )
		{
			;
		}
		
	}
	*/
	
		
	// collect and sum the sources
	TTErr process(TTAudioSignalPtr& returnedSummedSignal)
	{
		int					err;
		TTAudioSignalPtr	foo;
		
		for (TTMulticoreSourceIter i = mSourceObjects.begin(); i != mSourceObjects.end(); i++) {
			err |= (*i).pull(foo);
			(*mBufferedInput) += (*foo);
		}

		returnedSummedSignal = mBufferedInput;
		return (TTErr)err;
	}
	
};


typedef TTMulticoreInlet*					TTMulticoreInletPtr;
typedef vector<TTMulticoreInlet>			TTMulticoreInletVector;		// TODO: should this be a vector of pointers?
typedef TTMulticoreInletVector::iterator	TTMulticoreInletIter;



#endif // __TTMULTICORE_INLET_H__
