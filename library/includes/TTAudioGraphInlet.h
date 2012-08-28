/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTAUDIOGRAPH_INLET_H__
#define __TTAUDIOGRAPH_INLET_H__

#include "TTAudioGraph.h"
#include "TTAudioGraphObject.h"
#include "TTAudioGraphSource.h"


/******************************************************************************************/

/**	This object represents a single 'inlet' to a TTAudioGraphObject.
	TTAudioGraphObject maintains a vector of these inlets.
	
	The relationship of an inlet to other parts of the audio graph heirarchy is as follows:

		A graph may have many objects.
		An object may have many inlets.	
		An inlet may have many signals connected.
		A signal may have many channels.
*/
class TTAudioGraphInlet {

protected:

	TTAudioGraphSourceVector	mSourceObjects;		///< A vector of object pointers from which we pull our source samples using the ::getAudioOutput() method.
	TTAudioSignalPtr		mBufferedInput;		///< summed samples from all sources
	TTAudioSignalPtr		mDirectInput;		///< pointer to the (non-buffered) input samples if there was no requirement to sum them
	TTBoolean				mClean;
	
public:

	TTAudioGraphInlet() : 
		mBufferedInput(NULL),
		mDirectInput(NULL),
		mClean(NO)
	{
		createBuffer();
	}

	~TTAudioGraphInlet()
	{
		TTObjectRelease(&mBufferedInput);
	}
	
	
	// Copying Functions are critical due to use by std::vector 
	// At least on the Mac, a call to std::vector::resize() does not simply construct N objects.
	// For example, mInlets.resize(2) in TTAudioGraphObject() will construct 1 object, 
	// and then copy it to get the second object rather than constructing the second object!
	// Because of that, we have to be super careful!
	//
	// If an object were to be copied, you'd think that you'd want to keep a reference to the audio signal.
	// But when are constructing initially (e.g. by the resize) we actually want a whole new audio signal!
	//
	// We need to be on the alert for strange behaviors caused by this situation.
	// At some point perhaps we should switch to just using a vector of pointers, though there are sensitive issues there too...
	
	TTAudioGraphInlet(const TTAudioGraphInlet& original) : 
		mBufferedInput(NULL),
		mDirectInput(NULL),
		mClean(NO)
	{
		createBuffer();
		mSourceObjects	= original.mSourceObjects;
		//mBufferedInput	= TTObjectReference(original.mBufferedInput);
		(*mBufferedInput) = (*original.mBufferedInput);
		mClean			= original.mClean;
	}
	
	// The copy assignment constructor doesn't appear to be involved, at least with resizes, on the Mac...
	TTAudioGraphInlet& operator=(const TTAudioGraphInlet& source)
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
		mBufferedInput->setAttributeValue(TT("maxNumChannels"), 1);
		mBufferedInput->setAttributeValue(TT("numChannels"), 1);
		mBufferedInput->allocWithVectorSize(64);		
	}
	
	
	// Graph Methods
	
	// reset
	void reset()
	{
		mSourceObjects.clear();
	}
		
	TTErr connect(TTAudioGraphObjectPtr anObject, TTUInt16 fromOutletNumber)
	{
		TTUInt16 size = mSourceObjects.size();

		// make sure the connection doesn't already exist
		for (TTAudioGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
			if (source->match(anObject, fromOutletNumber))
				return kTTErrNone;
		}
		
		// create the connection
		mSourceObjects.resize(size+1);
		mSourceObjects[size].connect(anObject, fromOutletNumber);
		mSourceObjects[size].setOwner(this);
		return kTTErrNone;
	}
	
	TTErr drop(TTAudioGraphObjectPtr anObject, TTUInt16 fromOutletNumber)
	{
		for (TTAudioGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
			if (source->match(anObject, fromOutletNumber)) {
				drop(*source);
				break;
			}
		}
		return kTTErrNone;
	}
	
	void drop(TTAudioGraphSource& aSource)
	{
		TTAudioGraphSourceIter iter = find(mSourceObjects.begin(), mSourceObjects.end(), aSource);
		
		if (iter != mSourceObjects.end())
			mSourceObjects.erase(iter);
	}
	

	void preprocess(const TTAudioGraphPreprocessData& initData)
	{
		mBufferedInput->clear();
		for (TTAudioGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++)
			source->preprocess(initData);
		mClean = YES;
	}

		
	// collect and sum the sources
	TTErr process()
	{
		int					err = kTTErrNone;
		TTAudioSignalPtr	foo;
		
		if (mSourceObjects.size() == 1) {
			// here we optimize the operation:
			// if there is only one connection to the inlet, then we don't need to copy the samples in the buffer
			// instead we just reference the pointer to the beginning of the buffer
			err = mSourceObjects[0].process(mDirectInput);
		}
		else {
			for (TTAudioGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
				err |= (*source).process(foo);
				if (mClean) {
					(*mBufferedInput) = (*foo);
					mClean = NO;
				}
				else
					(*mBufferedInput) += (*foo);
				mDirectInput = NULL;
			}
		}
		
		return (TTErr)err;
	}
	
	
	TTAudioSignalPtr getBuffer()
	{
		if (mDirectInput)
			return mDirectInput;
		else
			return mBufferedInput;
	}
	
	
	void prepareDescriptions()
	{
		for (TTAudioGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++)
			source->prepareDescription();
	}

	
	void getDescriptions(TTAudioGraphDescriptionVector& descs)
	{
		for (TTAudioGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
			TTAudioGraphDescription	desc;
			
			source->getDescription(desc);
			descs.push_back(desc);
		}
	}
	
};


#endif // __TTAUDIOGRAPH_INLET_H__
