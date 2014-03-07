/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Defines a single 'inlet' from an individual AudioGraph object
 *
 * @details TTAudioGraphObject maintains a vector of these inlets.
 * The relationship of an inlet to other parts of the audio graph hierarchy is as follows:
 * 
 * - A graph may have many objects.
 * - An object may have many inlets.
 * - An inlet may have many signals (sources) connected.
 * - A signal may have many channels.
 *
 * @authors Timothy Place, Trond Lossius, Nathan Wolek
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTAUDIOGRAPH_INLET_H__
#define __TTAUDIOGRAPH_INLET_H__

#include "TTAudioGraph.h"
#include "TTAudioGraphObject.h"
#include "TTAudioGraphSource.h"


/******************************************************************************************/

/**	This object represents a single 'inlet' to a TTAudioGraphObject.
 *	TTAudioGraphObject maintains a vector of these inlets.
 *
 *	The relationship of an inlet to other parts of the audio graph hierarchy is as follows:
 *
 *	- A graph may have many objects.
 *	- An object may have many inlets.
 *	- An inlet may have many signals connected.
 *	- A signal may have many channels.
 *
*/
class TTAudioGraphInlet {

protected:

	TTAudioGraphSourceVector	mSourceObjects;		///< A vector of object pointers from which we pull our source samples using the ::getAudioOutput() method.
	TTAudioSignalPtr			mBufferedInput;		///< Summed samples from all sources.
	TTAudioSignalPtr			mDirectInput;		///< Pointer to the (non-buffered) input samples if there was no requirement to sum them.
	TTBoolean					mClean;				///<
	
public:

	TTAudioGraphInlet() :
		mBufferedInput(NULL),
		mDirectInput(NULL),
		mClean(NO)
	{
		createBuffer();
	}

	/** Object destructor.
	 */
	~TTAudioGraphInlet()
	{
		TTObjectBaseRelease(&mBufferedInput);
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
		//mBufferedInput	= TTObjectBaseReference(original.mBufferedInput);
		(*mBufferedInput) = (*original.mBufferedInput);
		mClean			= original.mClean;
	}
	
	
	/** The copy assignment constructor doesn't appear to be involved, at least with resizes, on the Mac...
	 */
	TTAudioGraphInlet& operator=(const TTAudioGraphInlet& source)
	{
		TTObjectBaseRelease(&mBufferedInput);
		
		mSourceObjects	= source.mSourceObjects;
		mBufferedInput	= TTObjectBaseReference(source.mBufferedInput);
		mClean			= source.mClean;
		
		return *this;
	}
	
	
	/* Create a buffer that will be used to sum samples from all sources arriving at this inlet.
	 */
	void createBuffer()
	{
		TTObjectBaseInstantiate(kTTSym_audiosignal, &mBufferedInput, 1);
		// alloc to set up a default buffer
		mBufferedInput->setAttributeValue(TT("maxNumChannels"), 1);
		mBufferedInput->setAttributeValue(TT("numChannels"), 1);
		mBufferedInput->allocWithVectorSize(64);		
	}
	
	
	// Graph Methods
	
	/** Reset the graph by dropping all connections to all sources in preparation of a rebuilding of all of the graph.
	 */
	void reset()
	{
		mSourceObjects.clear();
	}
	
	/** Establish a connection from an output of an upstream node to one of the inlets of this node so that processing might occur.
	 @param anObject			Reference to an upstream node.
	 @param fromOutletNumber	The outlet of the upstrem node that the connection is being made from.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr connect(TTAudioGraphObjectBasePtr anObject, TTUInt16 fromOutletNumber)
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
	
	
	/** Drop a connection from an upstream node.
	 @param anObject			Reference to an upstream node.
	 @param fromOutletNumber	The outlet of the upstrem node that the connection for which the connection will be dropped.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr drop(TTAudioGraphObjectBasePtr anObject, TTUInt16 fromOutletNumber)
	{
		for (TTAudioGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
			if (source->match(anObject, fromOutletNumber)) {
				drop(*source);
				break;
			}
		}
		return kTTErrNone;
	}
	
	
	/** Drop a connection (if any) to an upstream source.
	 This method is called if a node is being destroyed to ensure that no stray connections from it are left behind.
	 @param	aSource				The potential upstream node (source) for which all connections are to be dropped.
	 */
	void drop(TTAudioGraphSource& aSource)
	{
		TTAudioGraphSourceIter iter = find(mSourceObjects.begin(), mSourceObjects.end(), aSource);
		
		if (iter != mSourceObjects.end())
			mSourceObjects.erase(iter);
	}
	
	
	/** Just before audio processing, a preprocess() method is propagated up the audio graph chain from the terminal object.
	 This can be used to zero buffers and also sets flags that indicate each object’s processing state.
	 It is of no consequence if an object receives multiple preprocess calls, such as would happen if there are multiple terminal nodes.
	 @param initData
	 */
	void preprocess(const TTAudioGraphPreprocessData& initData)
	{
		mBufferedInput->clear();
		for (TTAudioGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++)
			source->preprocess(initData);
		mClean = YES;
	}

		
	/** With the objects in the graph prepared by the preprocess() call, the audio can be pulled from nodes connected upstream using the process() call on each source.
	 When asked for a vector of audio by the unit generator, the inlets each request audio from each of their sources (other objects’ outlets). 
	 If an inlet has multiple sources, those sources are summed. 
	 When all of the inlets have performed this operation, then the unit generator proceeds to process the audio buffered in the inlets and fills the buffers in the outlets.
	 Sources manage a one-to-one connection between an inlet and an upstream object's outlet; inlets may have zero or more sources.
	 
	 @param		sampleStamp		(Trond will document this)
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr process(TTUInt64 sampleStamp)
	{
		int					err = kTTErrNone;
		TTAudioSignalPtr	sourceAudioOutput;
		
		if (mSourceObjects.size() == 1) {
			// here we optimize the operation:
			// if there is only one connection to the inlet, then we don't need to copy the samples in the buffer
			// instead we just reference the pointer to the beginning of the buffer
			err = mSourceObjects[0].process(mDirectInput, sampleStamp);
		}
		else {
			for (TTAudioGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++) {
				err |= (*source).process(sourceAudioOutput, sampleStamp);
				// Buffering sample values from the first connection
				if (mClean) {
					(*mBufferedInput) = (*sourceAudioOutput);
					mClean = NO;
				}
				// Adding sample values from the remaining connections
				else
					(*mBufferedInput) += (*sourceAudioOutput);
				mDirectInput = NULL;
			}
		}
		return (TTErr)err;
	}
	
	
	/** Get the most recently processed audio for this inlet as summerized from all connected upstream nodes.
	 @return					Pointer to the audio buffer used for summerizing signals from connected upstream nodes.
	 */
	TTAudioSignalPtr getBuffer()
	{
		if (mDirectInput)
			return mDirectInput;
		else
			return mBufferedInput;
	}
	
	
	/** Prepare for a request that wants to descibe all of the graph.
	 The request for preparing to describe the graph is propagated to all nodes that are connected upstream.
	 */
	void prepareDescriptions()
	{
		// Currently this method is doing nothing put propagating the request to the upstream neighboors of the node.
		for (TTAudioGraphSourceIter source = mSourceObjects.begin(); source != mSourceObjects.end(); source++)
			source->prepareDescription();
	}
	
	
	/** The node is requested to declare itself as part of an action to describe all of the audio graph.
	 As part of this action the request is also propagated to its upstream neighboors, and retrieved information on the graph is passed back down again to the sink(s) of the graph.
	 @param descs		Pointer to the graph description vector used by the downstream neighboor(s) to retrieve information on this node and its upstesream connections.
	 */
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
