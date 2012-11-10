/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief AudioGraph Audio Graph Layer for Jamoma DSP
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTAUDIOGRAPH_OBJECT_H__
#define __TTAUDIOGRAPH_OBJECT_H__

#include "TTAudioGraph.h"
#include "TTGraphObject.h"
#include "TTAudioGraphOutlet.h"
#include "TTAudioGraphDescription.h"


/******************************************************************************************/

/**
	The TTAudioGraphObject wraps a TTDSP object such that it is possible to 
	build a dynamic graph of audio processing units.
 
	It is implemented as a TTObject so that it can receive dynamically bound messages, 
	incliding notifications from other objects.
*/
class TTAUDIOGRAPH_EXPORT TTAudioGraphObject : public TTGraphObject {	
	TTCLASS_SETUP(TTAudioGraphObject)
	
protected:

	TTAudioGraphProcessStatus	mStatus;			///< Used to enable correct processing of feedback loops, multiple destinations, etc.
	TTAudioGraphDescription		mAudioDescription;	///< Used to prevent feedback loops etc. when describing a graph.
	TTUInt32					mAudioFlags;		///< A bitmask of values defined in #TTAudioGraphFlags.
	TTAudioGraphInletVector		mAudioInlets;		///< The inlets through which we pull audio from sources.
	TTAudioGraphOutletVector	mAudioOutlets;		///< The outlets that processed audio sampled will be passed to.
	TTUInt32					mNumAudioInlets;	///< Attribute: The number of inputs for this object.
	TTUInt32					mNumAudioOutlets;	///< Attribute: The number of outlets for this object.
	TTAudioSignalArrayPtr		mInputSignals;		///< The buffered input for processing audio with our object.
	TTAudioSignalArrayPtr		mOutputSignals;		///< The results of processing audio with our object, buffered for objects requesting it.
	TTUInt16					mVectorSize;		///< The most recent vector size info passed from the terminal object during a preprocess.
	static TTMutexPtr			sSharedMutex;		///< A critical region shared by all TTAudioGraphObjects to prevent changes to the graph while processing.

	
	// Attribute Setters
	TTErr setNumAudioInlets(const TTValue& newNumInlets);
	TTErr setNumAudioOutlets(const TTValue& newNumOutlets);	
	
	
public:

	TTAudioObjectPtr getUnitGenerator()
	{
		return TTAudioObjectPtr(mKernel);
	}
	

	void addAudioFlag(TTAudioGraphFlags flag)
	{
		mAudioFlags |= flag;
	}
	
	void removeAudioFlag(TTAudioGraphFlags flag)
	{
		mAudioFlags = mAudioFlags & ~flag;
	}
	
	/** Get the number of channels for an outlet.
	 @param forOutletNumber		The outlet that we want to retrieve informaiton about.
	 */
	TTUInt16 getOutputNumChannels(TTUInt16 forOutletNumber)
	{
		if (forOutletNumber < mAudioOutlets.size())
			return mAudioOutlets[forOutletNumber].mBufferedOutput->getNumChannelsAsInt();
		else
			return 0;
	}
	
	/** Set the number of channels for an outlet.
	 @param forOutletNumber		The outlet that we want to retrieve information about.
	 @param numChannels			The number of channels that the audio signal from this outlet is to have.
	 */
	void setOutputNumChannels(TTUInt16 forOutletNumber, TTUInt16 numChannels)
	{
		sSharedMutex->lock();

		if (forOutletNumber < mAudioOutlets.size()) {
			TTValue	v(numChannels);
			
			// TODO: should not update MaxNumChannels unless we are growing it larger...
			mAudioOutlets[forOutletNumber].mBufferedOutput->setMaxNumChannels(v);
			mAudioOutlets[forOutletNumber].mBufferedOutput->setNumChannels(v);
		}
		sSharedMutex->unlock();
	}
	
	/** Get the vector size for an outlet.
	 @param forOutletNumber		The outlet that we want to retrieve information about.
	 */
	TTUInt16 getOutputVectorSize(TTUInt16 forOutletNumber)
	{
		if (forOutletNumber < mAudioOutlets.size())
			return mAudioOutlets[forOutletNumber].mBufferedOutput->getVectorSizeAsInt();
		else
			return 0;
	}
	
	/** Get the sample rate of the audio passed from one of the outlets.
	 @param forOutletNumber		The outlet that we want to retrieve information about.
	 */
	TTUInt32 getOutputSampleRate(TTUInt16 forOutletNumber)
	{
		if (forOutletNumber < mAudioOutlets.size())
			return mAudioOutlets[forOutletNumber].mBufferedOutput->getSampleRate();
		else
			return 0;
	}
	
	/** Get the sample rate htta this object use when processing audio.
	 */
	TTUInt32 getSampleRate()
	{
		TTUInt32 sr;
		mKernel->getAttributeValue(kTTSym_sampleRate, sr);
		return sr;
	}
	
	/** Prepare for a request to descibe all of the graph.
	 */
	void prepareAudioDescription();
	
	/** The node is requested to declare itself as part of an action to describe all of the audio graph.
	 As part of this action the request is also propagated to its upstream neighboors, and retrieved information on the graph is passed back down again to the sink(s) of the graph.
	 @param descs		Pointer to the graph description vector used by the downstream neighboor(s) to retrieve information on this node and its upstesream connections.
	 */
	void getAudioDescription(TTAudioGraphDescription& desc);
	
	
	/**	
     Clear the list of source objects from which this object will try to pull audio.	
     */
	TTErr resetAudio();
	
	
	/**	Add a source to the list of objects from which to request audio.
		@param	anObject		The lydbaer object which is supplying us with input.
		@param	anInletNumber	If this object has a second input mechanism (e.g. a sidechain input), then that is indicated here.
								Typically the value passed here will be 0, indicating the normal audio input.
		@return					An error code.	*/
	TTErr connectAudio(TTAudioGraphObjectPtr anObject, TTUInt16 fromOutletNumber=0, TTUInt16 toInletNumber=0);
	
	
	/**	Drop a source from the list of objects from which to request audio.  In other words, disconnect.
		@param	anObject		The lydbaer object which is supplying us with input.
		@param	anInletNumber	If this object has a second input mechanism (e.g. a sidechain input), then that is indicated here.
								Typically the value passed here will be 0, indicating the normal audio input.
		@return					An error code.	*/
	TTErr dropAudio(TTAudioGraphObjectPtr anObject, TTUInt16 fromOutletNumber=0, TTUInt16 toInletNumber=0);

	
	/**	The thread protection for processing is important: we cannot have the graph nodes being deleted or re-arranged while we are pulling. 
		Further more, this is true for the entire process cycle: preprocess, process, and postprocess.
		Thus, this lock must be thrown by the code the is calling the methods from outside of this class. */
	void lockProcessing()
	{
		sSharedMutex->lock();
	}
	
	/**	The thread protection for processing is important: we cannot have the graph nodes being deleted or re-arranged while we are pulling. 
	 Further more, this is true for the entire process cycle: preprocess, process, and postprocess.
	 Thus, this lock must be thrown by the code the is calling the methods from outside of this class. */
	void unlockProcessing()
	{
		sSharedMutex->unlock();
	}
	
	/**	This method is called by an object about to process audio, prior to calling getAudioOutput().
		As with the getAudioOutput() method, this is driven by the destination object and working up through the chains.
		@param	initData		Data provided by the terminal object so that the graph will be able to adapt to it.
		@return					An error code.		*/
	virtual TTErr preprocess(const TTAudioGraphPreprocessData& initData);
	
	
	/**	This method is required to be implemented by all objects except for those existing solely as a destination.
		@param	audioOutput		This method is passed a reference to an audio signal pointer.
								We then set this audio signal pointer to point to the TTAudioSignal containing our calculated samples.
	 	@return					An error code.	*/
	virtual TTErr process(TTAudioSignalPtr& returnedSignal, TTUInt16 forOutletNumber=0);
	
};


#endif // __TTAUDIOGRAPH_OBJECT_H__
