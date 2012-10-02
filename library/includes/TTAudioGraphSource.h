/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTAUDIOGRAPH_SOURCE_H__
#define __TTAUDIOGRAPH_SOURCE_H__

#include "TTAudioGraph.h"
#include "TTAudioGraphObject.h"


/******************************************************************************************/

// NOTE: we don't need to keep a buffer of our own, be we just mirror the buffer of mSourceObject

class TTAudioGraphSource {
	friend void TTAudioGraphSourceObserverCallback(TTAudioGraphSource* self, TTValue& arg);
	
protected:	
	
	TTAudioGraphObjectPtr	mSourceObject;		///< The object from which we pull samples
	TTUInt16				mOutletNumber;		///< Zero-based
	TTObjectPtr				mCallbackHandler;
	TTAudioGraphInletPtr	mOwner;				///< The owning inlet
	
public:

	TTAudioGraphSource();	
	~TTAudioGraphSource();			

	// Internal method shared/called by constructors.
	void create();
	
	TTBoolean match(TTAudioGraphObjectPtr anObject, TTUInt16 anOutletNumber)
	{
		if (anObject == mSourceObject && anOutletNumber == mOutletNumber)
			return YES;
		else
			return NO;
	}
	
	void setOwner(TTAudioGraphInletPtr theOwningInlet)
	{
		mOwner = theOwningInlet;
	}
	
	// Copying Functions -- critical due to use by std::vector 
	
	TTAudioGraphSource(const TTAudioGraphSource& original) :
		mSourceObject(NULL),
		mOutletNumber(0),
		mCallbackHandler(NULL),
		mOwner(NULL)
	{
		create();
		mOwner = original.mOwner;
		
		// NOTE: See notes below in TTAudioGraphInlet copy constructor...
		// NOTE: When vector of sources is resized, it is possible for an object to be created and immediately copied -- prior to a 'connect' method call
		// NOTE: Are we ever called after connecting?  If so, then we need to set up the connection...
		
		if (original.mSourceObject)
			connect(original.mSourceObject, original.mOutletNumber);
	}
	
	// This one is called, for example, on the Mac when dropping a source and the vector has to be re-arranged.	
	TTAudioGraphSource& operator=(const TTAudioGraphSource& original)
	{
		mSourceObject = NULL;
		mOutletNumber = 0;
		mCallbackHandler = NULL;
		mOwner = NULL;
	
		// TODO: We're probably leaking memory here, because mCallbackHandler is potentially never freed...
		// However, if we don't NULL the mCallbackHandler 
		// then we end up with crashes when we do something like close a Max patcher after editing connections while running. 
		
		create();
		mOwner = original.mOwner;

		// TODO: evaluate if this is doing the correct thing:
		// - we can copy the owner ptr for sure
		// - we definitely can not copy the mCallbackHandler pointer
		// - not certain about the mSourceObject

		if (original.mSourceObject && original.mSourceObject->valid)
			connect(original.mSourceObject, original.mOutletNumber);
		
		return *this;
	}
	
	/** Compare two sources for equality. */
	inline friend bool operator == (const TTAudioGraphSource& source1, const TTAudioGraphSource& source2)
	{
		if (source1.mSourceObject == source2.mSourceObject && source1.mOutletNumber == source2.mOutletNumber)
			return true;
		else
			return false;
	}
	
	
	// Info Methods
	
	void prepareDescription()
	{
		mSourceObject->prepareAudioDescription();
	}
	
	void getDescription(TTAudioGraphDescription& desc)
	{
		mSourceObject->getAudioDescription(desc);
		desc.mOutletNumber = this->mOutletNumber;
	}
	
	// Graph Methods
	
	void connect(TTAudioGraphObjectPtr anObject, TTUInt16 fromOutletNumber);
		
	void preprocess(const TTAudioGraphPreprocessData& initData)
	{
		mSourceObject->preprocess(initData);
	}
	
	TTErr process(TTAudioSignalPtr& returnedSignal) 
	{
		return mSourceObject->process(returnedSignal, mOutletNumber);
	}
	
};

typedef TTAudioGraphSource*					TTAudioGraphSourcePtr;
typedef vector<TTAudioGraphSource>			TTAudioGraphSourceVector;
typedef TTAudioGraphSourceVector::iterator	TTAudioGraphSourceIter;


#endif // __TTAUDIOGRAPH_SOURCE_H__
