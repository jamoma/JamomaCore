/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPH_INLET_H__
#define __TTGRAPH_INLET_H__

#include "TTGraph.h"
#include "TTGraphObject.h"
#include "TTGraphSource.h"


/******************************************************************************************/

/**	This object represents a single 'inlet' to a TTGraphObject.
	TTGraphObject maintains a vector of these inlets.
	
	The relationship of an inlet to other parts of the multicore heirarchy is as follows:

		A graph may have many objects.
		An object may have many inlets.	
		An inlet may have many signals connected.
		A signal may have many channels.
*/
class TTGraphInlet {
	TTGraphSourceVector		mSourceObjects;		///< A vector of object pointers from which we pull our source samples using the ::getAudioOutput() method.
	TTAudioSignalPtr		mBufferedInput;		///< summed samples from all sources
	TTBoolean				mClean;
	
public:
	TTGraphInlet() : 
		mBufferedInput(NULL),
		mClean(NO)
	{
		createBuffer();
	}

	~TTGraphInlet()
	{
		TTObjectRelease(&mBufferedInput);
	}
	
	
	// Copying Functions are critical due to use by std::vector 
	// At least on the Mac, a call to std::vector::resize() does not simply construct N objects.
	// For example, mInlets.resize(2) in TTGraphObject() will construct 1 object, 
	// and then copy it to get the second object rather than constructing the second object!
	// Because of that, we have to be super careful!
	//
	// If an object were to be copied, you'd think that you'd want to keep a reference to the audio signal.
	// But when are constructing initially (e.g. by the resize) we actually want a whole new audio signal!
	//
	// We need to be on the alert for strange behaviors caused by this situation.
	// At some point perhaps we should switch to just using a vector of pointers, though there are sensitive issues there too...
	
	TTGraphInlet(const TTGraphInlet& original) : 
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
	TTGraphInlet& operator=(const TTGraphInlet& source)
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
		
	
	TTErr connect(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber)
	{
		TTUInt16 size = mSourceObjects.size();
		
		// make sure the connection doesn't already exist
		for (TTGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
			if (source->match(anObject, fromOutletNumber))
				return kTTErrNone;
		}
		
		// create the connection
		mSourceObjects.resize(size+1);
		mSourceObjects[size].connect(anObject, fromOutletNumber);
		mSourceObjects[size].setOwner(this);
		return kTTErrNone;
	}
	
	
	TTErr drop(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber)
	{
		for (TTGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
			if (source->match(anObject, fromOutletNumber)) {
				drop(*source);
				break;
			}
		}
		return kTTErrNone;
	}
	
	
	void drop(TTGraphSource& aSource)
	{
		TTGraphSourceIter iter = find(mSourceObjects.begin(), mSourceObjects.end(), aSource);
		
		if (iter != mSourceObjects.end())
			mSourceObjects.erase(iter);
	}
		
	
	void getDescriptions(TTGraphDescriptionVector& descs)
	{
		for (TTGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
			TTGraphDescription	desc;
			
			source->getDescription(desc);
			descs.push_back(desc);
		}
	}
	
};


#endif // __TTGRAPH_INLET_H__
