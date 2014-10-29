/** @file
 *
 * @ingroup graphLibrary
 *
 * @brief Jamoma Asynchronous Object Graph Layer
 *
 * @details Creates a wrapper for TTObjectBases that can be used to build a control graph for asynchronous message passing
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTGRAPH_SOURCE_H__
#define __TTGRAPH_SOURCE_H__

#include "TTGraph.h"
//#include "TTGraphObjectBase.h"

class TTGraphInlet;
typedef TTGraphInlet*					TTGraphInletPtr;
class TTGraphDescription;

/******************************************************************************************/

// NOTE: we don't need to keep a buffer of our own, be we just mirror the buffer of mSourceObject

class TTGRAPH_EXPORT TTGraphSource {
	friend void TTGraphSourceObserverCallback(TTGraphSource* self, TTValue& arg);
	
protected:

	TTGraphObjectBasePtr	mSourceObject;		///< The object from which we pull samples
	TTUInt16			    mOutletNumber;		///< Number of the outlet (zero-based)
	TTObject				mCallbackHandler;
	TTGraphInletPtr		    mOwner;				///< The owning inlet
	
public:

	TTGraphSource();	
	~TTGraphSource();			

	/** Internal method shared/called by constructors. */
	void create();
	
	TTBoolean match(TTGraphObjectBasePtr anObject, TTUInt16 anOutletNumber)
	{
		if (anObject == mSourceObject && anOutletNumber == mOutletNumber)
			return YES;
		else
			return NO;
	}
	
	void setOwner(TTGraphInletPtr theOwningInlet)
	{
		mOwner = theOwningInlet;
	}
	
	// Copying Functions -- critical due to use by std::vector 
	
	TTGraphSource(const TTGraphSource& original) :
		mSourceObject(NULL),
		mOutletNumber(0),
		mCallbackHandler("callback"),
		mOwner(NULL)
	{
		create();
		mOwner = original.mOwner;
		
		// NOTE: See notes below in TTGraphInlet copy constructor...
		// NOTE: When vector of sources is resized, it is possible for an object to be created and immediately copied -- prior to a 'connect' method call
		// NOTE: Are we ever called after connecting?  If so, then we need to set up the connection...
		
		if (original.mSourceObject)
			connect(original.mSourceObject, original.mOutletNumber);
	}
	
	// This one is called, for example, on the Mac when dropping a source and the vector has to be re-arranged.	
	TTGraphSource& operator=(const TTGraphSource& original)
	{
		if (mSourceObject && mCallbackHandler.valid())
			((TTObjectBasePtr)mSourceObject)->unregisterObserverForNotifications(mCallbackHandler);

		mCallbackHandler = original.mCallbackHandler;
		mOwner = original.mOwner;

		// TODO: evaluate if this is doing the correct thing:
		// - we can copy the owner ptr for sure
		// - we definitely can not copy the mCallbackHandler pointer
		// - not certain about the mSourceObject

		if (original.mSourceObject)
			connect(original.mSourceObject, original.mOutletNumber);
		
		return *this;
	}
	
	/** Compare two sources for equality. */
	inline friend bool operator == (const TTGraphSource& source1, const TTGraphSource& source2)
	{
		if (source1.mSourceObject == source2.mSourceObject && source1.mOutletNumber == source2.mOutletNumber)
			return true;
		else
			return false;
	}
	
	
	// Info Methods
	
	void prepareDescription();
	void getDescription(TTGraphDescription& desc);
	
	// Graph Methods
	
	void connect(TTGraphObjectBasePtr anObject, TTUInt16 fromOutletNumber);
			
};

typedef TTGraphSource*					TTGraphSourcePtr;
typedef std::vector<TTGraphSource>		TTGraphSourceVector;
typedef TTGraphSourceVector::iterator	TTGraphSourceIter;


#endif // __TTGRAPH_SOURCE_H__
