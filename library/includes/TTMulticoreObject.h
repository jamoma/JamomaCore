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


/******************************************************************************************/

/**
	The TTMulticoreObject wraps a TTDSP object such that it is possible to 
	build a dynamic graph of audio processing units.
 
	It is implemented as a TTObject so that it can receive dynamically bound messages, 
	incliding notifications from other objects.
*/
class TTMULTICORE_EXPORT TTMulticoreObject : public TTObject {	
	TTCLASS_SETUP(TTMulticoreObject)
	
protected:
	TTMulticoreProcessStatus	mStatus;			///< Used to enable correct processing of feedback loops, multiple destinations, etc.
	TTUInt32					mFlags;				///< A bitmask of values defined in #TTMulticoreFlags
	TTMulticoreInletVector		mInlets;			///< The inlets through which we pull audio from sources
	TTMulticoreOutletVector		mOutlets;			///< The inlets through which we pull audio from sources
	TTAudioSignalArrayPtr		mInputSignals;		///< The buffered input for processing audio with our object.
	TTAudioSignalArrayPtr		mOutputSignals;		///< The results of processing audio with our object, buffered for objects requesting it
public:	
	TTAudioObjectPtr			mUnitGenerator;		///< The actual Jamoma DSP object doing the processing.
	
	
	/**	A notification that the specified object is being deleted -- so we should drop it from our list of input sources.  */
	TTErr objectFreeing(const TTValue& theObjectBeingDeleted);

	/**	Rather than use the internal audio output signal, it is possible to set your own.
		One example for why you might want this is for creating generator objects.	*/
	TTErr setAudioOutputPtr(TTAudioSignalArrayPtr newOutputPtr);

	
//	void setMaxNumChannels(TTUInt16 maxNumChannels)
//	{
//		mInputSignals->setAllMaxNumChannels(maxNumChannels);
//		mOutputSignals->setAllMaxNumChannels(maxNumChannels);
//	}
	
	
	void addFlag(TTMulticoreFlags flag)
	{
		mFlags |= flag;
	}
	
	
	TTUInt16 getSampleRate()
	{
		TTUInt16 sr;
		mUnitGenerator->getAttributeValue(kTTSym_sr, sr);
		return sr;
	}
	
	
	/**	Clear the list of source objects from which this object will try to pull audio.	*/
	TTErr reset();
	
	
	/**	Add a source to the list of objects from which to request audio.
		@param	anObject		The lydbaer object which is supplying us with input.
		@param	anInletNumber	If this object has a second input mechanism (e.g. a sidechain input), then that is indicated here.
								Typically the value passed here will be 0, indicating the normal audio input.
		@return					An error code.	*/
	TTErr connect(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber=0, TTUInt16 toInletNumber=0);

private:
	TTUInt16 initAudioSignal(TTAudioSignalPtr aSignal, TTMulticoreObjectPtr aSource);
public:
	
	/**	Allocate buffers and prepare for processing.	*/
	TTErr init();
	
	
	/**	This method is called by an object about to process audio, prior to calling getAudioOutput().
		As with the getAudioOutput() method, this is driven by the destination object and working up through the chains.
		@return 		An error code.		*/
	virtual TTErr preprocess();
	
	
	/**	This method is required to be implemented by all objects except for those existing solely as a destination.
		@param	audioOutput		This method is passed a reference to an audio signal pointer.
								We then set this audio signal pointer to point to the TTAudioSignal containing our calculated samples.
	 	@return					An error code.	*/
	virtual TTErr process(TTAudioSignalPtr& returnedSignal, TTUInt16 forOutletNumber=0);
	
};


#endif // __TTMULTICORE_OBJECT_H__
