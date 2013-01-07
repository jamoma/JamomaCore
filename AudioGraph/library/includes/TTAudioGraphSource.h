/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief TTAudioGraphSource represents one link or connection between two AudioGraph objects.
 *
 * @details TTAudioGraphSource is an upstream connection from a #TTAudioGraphInlet of a #TTAudioGraphObject to a "TTAudioGraphOutlet of an upstream #TTAudioGraphObject.
 * The relationship of a source to other parts of the audio graph hierarchy is as follows:
 *
 * - A graph may have many objects.
 * - An object may have many inlets.
 * - An inlet may have many signals (sources) connected.
 * - A signal may have many channels.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTAUDIOGRAPH_SOURCE_H__
#define __TTAUDIOGRAPH_SOURCE_H__

#include "TTAudioGraph.h"
#include "TTAudioGraphObject.h"


/******************************************************************************************/

// NOTE: we don't need to keep a buffer of our own, be we just mirror the buffer of mSourceObject

/** TTAudioGraphSource represents one link from a #TTAudioGraphInlet of a #TTAudioGraphObject to a #TTAudioGraphOutlet of an upstream #TTAudioGraphObject.
 */
class TTAudioGraphSource {
	friend void TTAudioGraphSourceObserverCallback(TTAudioGraphSource* self, TTValue& arg);
	
protected:	
	
	TTAudioGraphObjectPtr	mSourceObject;		///< The object from which we pull samples
	TTUInt16				mOutletNumber;		///< The outlet of the upstream object that we pull samples from. This is zero-based.
	TTObjectBasePtr				mCallbackHandler;	///< TODO
	TTAudioGraphInletPtr	mOwner;				///< The owning inlet
	
public:

	/** Constructor
	 */
	TTAudioGraphSource();
	
	
	/** Destructor
	 */
	~TTAudioGraphSource();
	
	
	// Internal method shared/called by constructors.
	
	/** Create a link to a source. This establish a link between a #TTAudioGraphInlet and a #TTAudioGraphOutlet of an upstream #TTAudioGraphObject.
	 */
	void create();
	
	
	/** Check to see if this source (link) is connected to the requested outlet of the requested upstream object.
	 @param anObject			The upstream object that we want to check if match this source.
	 @param anOutletNumber		The object outlet that we want to check if match this source.
	 @return					TRUE if we have a match, else FALSE.
	 */
	TTBoolean match(TTAudioGraphObjectPtr anObject, TTUInt16 anOutletNumber)
	{
		if (anObject == mSourceObject && anOutletNumber == mOutletNumber)
			return YES;
		else
			return NO;
	}
	
	
	/** Set the owning inlet of this source.
	 @param theOwningInlet		The inlet that will be owning this source (link).
	 */
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
	
	
	/** This operator is called, for example, on the Mac when dropping a source and the vector has to be re-arranged.
	 */
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
	
	
	/** Compare two sources for equality, that is: It they are representing a connection between the same inlet/outlet pair of the same objects.
	 @param source1		The first source to be compared.
	 @param source2		The second source to be compared.
	 @return			TRUE if the two sources (links or connections) are the same, else FALSE.
	 */
	inline friend bool operator == (const TTAudioGraphSource& source1, const TTAudioGraphSource& source2)
	{
		if (source1.mSourceObject == source2.mSourceObject && source1.mOutletNumber == source2.mOutletNumber)
			return true;
		else
			return false;
	}
	
	
	// Info Methods
	
	/** Prepare to describe this source (link or connection).
	 */
	void prepareDescription()
	{
		mSourceObject->prepareAudioDescription();
	}
	
	
	/** Describe this source.
	 @param desc		Pointer to #TTAudioGraphDescription used for returning the description.
	 */
	void getDescription(TTAudioGraphDescription& desc)
	{
		mSourceObject->getAudioDescription(desc);
		desc.mOutletNumber = this->mOutletNumber;
	}
	
	// Graph Methods
	
	
	/** Create a source (a connection or a link) to an outlet of an upstream object.
	 @param anObject			The upstream object that we want to connect to.
	 @param fromOutletNumber	The outlet of the upstream object that we want to connect to.
	 */
	void connect(TTAudioGraphObjectPtr anObject, TTUInt16 fromOutletNumber);
	
	
	/** Prepare for audio processing.
	 */
	void preprocess(const TTAudioGraphPreprocessData& initData)
	{
		mSourceObject->preprocess(initData);
	}
	
	
	/** Perform audio processing.
	 @details					This pass a request for a buffer of processed audio to the upstream associated source.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr process(TTAudioSignalPtr& returnedSignal, TTUInt64 sampleStamp)
	{
		return mSourceObject->process(returnedSignal, sampleStamp, mOutletNumber);
	}
	
};


/** Pointer to a #TTAudioGraphSource.
 @ingroup typedefs
 */
typedef TTAudioGraphSource*					TTAudioGraphSourcePtr;


/** A vector of #TTAudioGraphSources
 @ingroup typedefs
 */
typedef std::vector<TTAudioGraphSource>		TTAudioGraphSourceVector;


/** An iterator on TTAudioGraphSourceVector
 @ingroup typedefs
 */
typedef TTAudioGraphSourceVector::iterator	TTAudioGraphSourceIter;


#endif // __TTAUDIOGRAPH_SOURCE_H__
