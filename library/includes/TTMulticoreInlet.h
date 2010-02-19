/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2010, Timothy Place
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
	friend void TTMulticoreSourceObserverCallback(TTMulticoreSource* self, TTValue& arg);
	
	TTMulticoreObjectPtr	mSourceObject;		// the object from which we pull samples
	TTUInt16				mOutletNumber;		// zero-based
	TTObjectPtr				mCallbackHandler;
	TTMulticoreInletPtr		mOwner;				// the owning inlet
	
public:
	TTMulticoreSource();	
	~TTMulticoreSource();			

	// Internal method shared/called by constructors.
	void create();
	
	void setOwner(TTMulticoreInletPtr theOwningInlet)
	{
		mOwner = theOwningInlet;
	}
	
	// Copying Functions -- critical due to use by std::vector 
	
	TTMulticoreSource(const TTMulticoreSource& original) :
		mSourceObject(NULL),
		mOutletNumber(0),
		mCallbackHandler(NULL),
		mOwner(NULL)
	{
		create();
		mOwner = original.mOwner;
		
		// NOTE: See notes below in TTMulticoreInlet copy constructor...
		// NOTE: When vector of sources is resized, it is possible for an object to be created and immediately copied -- prior to a 'connect' method call
		// NOTE: Are we ever called after connecting?  If so, then we need to set up the connection...
		
		if (original.mSourceObject)
			connect(original.mSourceObject, original.mOutletNumber);
	}
	
	TTMulticoreSource& operator=(const TTMulticoreSource& source)
	{
		// Not expecting to call this method...
		TT_ASSERT("we shouldn't be here", false);				
		return *this;
	}
	
	/** Compare two sources for equality. */
	inline friend bool operator == (const TTMulticoreSource& source1, const TTMulticoreSource& source2)
	{
		if (source1.mSourceObject == source2.mSourceObject && source1.mOutletNumber == source2.mOutletNumber)
			return true;
		else
			return false;
	}
	
	
	// Info Methods
	
	void getDescription(TTMulticoreDescription& desc)
	{
		mSourceObject->getDescription(desc);
	}
	
	// Graph Methods
	
	void connect(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber);
	
	void init(const TTMulticoreInitData& initData)
	{
		mSourceObject->init(initData);
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
typedef vector<TTMulticoreSource>			TTMulticoreSourceVector;
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
	TTMulticoreSourceVector	mSourceObjects;		///< A vector of object pointers from which we pull our source samples using the ::getAudioOutput() method.
	TTAudioSignalPtr		mBufferedInput;		///< summed samples from all sources
	TTBoolean				mClean;
	
public:
	TTMulticoreInlet() : 
		mBufferedInput(NULL),
		mClean(NO)
	{
		createBuffer();
	}

	~TTMulticoreInlet()
	{
		TTObjectRelease(&mBufferedInput);
	}
	
	
	// Copying Functions are critical due to use by std::vector 
	// At least on the Mac, a call to std::vector::resize() does not simply construct N objects.
	// For example, mInlets.resize(2) in TTMulticoreObject() will construct 1 object, 
	// and then copy it to get the second object rather than constructing the second object!
	// Because of that, we have to be super careful!
	//
	// If an object were to be copied, you'd think that you'd want to keep a reference to the audio signal.
	// But when are constructing initially (e.g. by the resize) we actually want a whole new audio signal!
	//
	// We need to be on the alert for strange behaviors caused by this situation.
	// At some point perhaps we should switch to just using a vector of pointers, though there are sensitive issues there too...
	
	TTMulticoreInlet(const TTMulticoreInlet& original) : 
		mBufferedInput(NULL),
		mClean(NO)
	{
		createBuffer();
		mSourceObjects	= original.mSourceObjects;
		//mBufferedInput	= TTObjectReference(original.mBufferedInput);
		(*mBufferedInput) = (*original.mBufferedInput);
		mClean			= original.mClean;
	}
	
	// The copy assignment constructor doesn't appear to be involved, at least with resizes, on the Mac...
	TTMulticoreInlet& operator=(const TTMulticoreInlet& source)
	{
		TTObjectRelease(&mBufferedInput);
		
		mSourceObjects	= source.mSourceObjects;
		mBufferedInput	= TTObjectReference(source.mBufferedInput);
		mClean			= source.mClean;
		
		return *this;
	}
	
	
	void createBuffer()
	{
		TTObjectInstantiate(kTTSym_audiosignal, &mBufferedInput, 1);
		// alloc to set up a default buffer
		mBufferedInput->setAttributeValue(kTTSym_maxNumChannels, 1);
		mBufferedInput->setAttributeValue(kTTSym_numChannels, 1);
		mBufferedInput->allocWithVectorSize(64);		
	}
	
	
	// Graph Methods
	
	// reset
	void reset()
	{
		mSourceObjects.clear();
	}
		
	// init the chain from which we will pull
	void init(const TTMulticoreInitData& initData)
	{
		// for_each(mSourceObjects.begin(), mSourceObjects.end(), bind2nd(mem_fun_ref(&TTMulticoreSource::init), initData));
		// CHANGED: don't know how to make for_each work with an argument like this...
		for (TTMulticoreSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++)
			source->init(initData);
	}
	
	
	TTErr connect(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber)
	{
		TTUInt16 size = mSourceObjects.size();
		
		mSourceObjects.resize(size+1);
		mSourceObjects[size].connect(anObject, fromOutletNumber);
		mSourceObjects[size].setOwner(this);
		return kTTErrNone;
	}
	
	void drop(TTMulticoreSource& aSource)
	{
		TTMulticoreSourceIter iter = find(mSourceObjects.begin(), mSourceObjects.end(), aSource);
		
		if (iter != mSourceObjects.end())
			mSourceObjects.erase(iter);
	}
	

	void preprocess()
	{
		mBufferedInput->clear();
		for_each(mSourceObjects.begin(), mSourceObjects.end(), mem_fun_ref(&TTMulticoreSource::preprocess));
		mClean = YES;
	}

		
	// collect and sum the sources
	TTErr process()
	{
		int					err;
		TTAudioSignalPtr	foo;
		
		for (TTMulticoreSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
			err |= (*source).process(foo);
			if (mClean) {
				(*mBufferedInput) = (*foo);
				mClean = NO;
			}
			else
				(*mBufferedInput) += (*foo);
		}
		return (TTErr)err;
	}
	
	
	TTAudioSignalPtr getBuffer()
	{
		return mBufferedInput;
	}
	
	
	void getDescriptions(TTMulticoreDescriptionVector& descs)
	{
		for (TTMulticoreSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
			TTMulticoreDescription	desc;
			
			source->getDescription(desc);
			descs.push_back(desc);
		}
	}
	
};


#endif // __TTMULTICORE_INLET_H__
