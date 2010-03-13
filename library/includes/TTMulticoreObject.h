/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_OBJECT_H__
#define __TTMULTICORE_OBJECT_H__

#include "TTMulticore.h"
#include "TTGraphObject.h"
#include "TTMulticoreOutlet.h"
#include "TTMulticoreDescription.h"


/******************************************************************************************/

/**
	The TTMulticoreObject wraps a TTDSP object such that it is possible to 
	build a dynamic graph of audio processing units.
 
	It is implemented as a TTObject so that it can receive dynamically bound messages, 
	incliding notifications from other objects.
*/
class TTMULTICORE_EXPORT TTMulticoreObject : public TTGraphObject {	
	TTCLASS_SETUP(TTMulticoreObject)
	
protected:
	TTMulticoreProcessStatus	mStatus;			///< Used to enable correct processing of feedback loops, multiple destinations, etc.
	TTUInt32					mAudioFlags;		///< A bitmask of values defined in #TTMulticoreFlags
	TTMulticoreInletVector		mAudioInlets;			///< The inlets through which we pull audio from sources
	TTMulticoreOutletVector		mAudioOutlets;			///< The inlets through which we pull audio from sources
	TTAudioSignalArrayPtr		mInputSignals;		///< The buffered input for processing audio with our object.
	TTAudioSignalArrayPtr		mOutputSignals;		///< The results of processing audio with our object, buffered for objects requesting it
	TTUInt16					mVectorSize;		///< The most recent vector size info passed from the terminal object during a preprocess
	static TTMutexPtr			sSharedMutex;		///< A critical region shared by all TTMulticoreObjects to prevent changes to the graph while processing.

public:

	TTAudioObjectPtr getUnitGenerator()
	{
		return TTAudioObjectPtr(mKernel);
	}
	

	void addAudioFlag(TTMulticoreFlags flag)
	{
		mAudioFlags |= flag;
	}
	
	
	TTUInt16 getOutputNumChannels(TTUInt16 forOutletNumber)
	{
		if (forOutletNumber < mAudioOutlets.size())
			return mAudioOutlets[forOutletNumber].mBufferedOutput->getNumChannelsAsInt();
		else
			return 0;
	}
	
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
	
	
	TTUInt16 getOutputVectorSize(TTUInt16 forOutletNumber)
	{
		if (forOutletNumber < mAudioOutlets.size())
			return mAudioOutlets[forOutletNumber].mBufferedOutput->getVectorSizeAsInt();
		else
			return 0;
	}
	
	TTUInt16 getSampleRate()
	{
		TTUInt16 sr;
		mKernel->getAttributeValue(kTTSym_sr, sr);
		return sr;
	}
	
	
	void getAudioDescription(TTMulticoreDescription& desc);
	
	
	/**	Clear the list of source objects from which this object will try to pull audio.	*/
	TTErr resetAudio();
	
	
	/**	Add a source to the list of objects from which to request audio.
		@param	anObject		The lydbaer object which is supplying us with input.
		@param	anInletNumber	If this object has a second input mechanism (e.g. a sidechain input), then that is indicated here.
								Typically the value passed here will be 0, indicating the normal audio input.
		@return					An error code.	*/
	TTErr connectAudio(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber=0, TTUInt16 toInletNumber=0);
	
	
	/**	Drop a source from the list of objects from which to request audio.  In other words, disconnect.
		@param	anObject		The lydbaer object which is supplying us with input.
		@param	anInletNumber	If this object has a second input mechanism (e.g. a sidechain input), then that is indicated here.
								Typically the value passed here will be 0, indicating the normal audio input.
		@return					An error code.	*/
	TTErr dropAudio(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber=0, TTUInt16 toInletNumber=0);

	
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
	virtual TTErr preprocess(const TTMulticorePreprocessData& initData);
	
	
	/**	This method is required to be implemented by all objects except for those existing solely as a destination.
		@param	audioOutput		This method is passed a reference to an audio signal pointer.
								We then set this audio signal pointer to point to the TTAudioSignal containing our calculated samples.
	 	@return					An error code.	*/
	virtual TTErr process(TTAudioSignalPtr& returnedSignal, TTUInt16 forOutletNumber=0);
	
};


#endif // __TTMULTICORE_OBJECT_H__
