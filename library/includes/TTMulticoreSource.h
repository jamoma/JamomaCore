/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_SOURCE_H__
#define __TTMULTICORE_SOURCE_H__

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
	
	// This one is called, for example, on the Mac when dropping a source and the vector has to be re-arranged.	
	TTMulticoreSource& operator=(const TTMulticoreSource& original)
	{
		mSourceObject = original.mSourceObject;
		mOutletNumber = original.mOutletNumber;
		mCallbackHandler = original.mCallbackHandler;
		mOwner = original.mOwner;
		
		// TODO: evaluate if this is doing the correct thing -- we can copy the owner ptr for sure, but the callback might now point to a bogus object
		
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
		
	void preprocess(const TTMulticorePreprocessData& initData)
	{
		mSourceObject->preprocess(initData);
	}
	
	TTErr process(TTAudioSignalPtr& returnedSignal) 
	{
		return mSourceObject->process(returnedSignal, mOutletNumber);
	}
	
};

typedef TTMulticoreSource*					TTMulticoreSourcePtr;
typedef vector<TTMulticoreSource>			TTMulticoreSourceVector;
typedef TTMulticoreSourceVector::iterator	TTMulticoreSourceIter;


#endif // __TTMULTICORE_SOURCE_H__
