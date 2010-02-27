/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPH_OBJECT_H__
#define __TTGRAPH_OBJECT_H__

#include "TTGraph.h"
#include "TTGraphOutlet.h"
#include "TTGraphDescription.h"


/******************************************************************************************/

/**
	The TTGraphObject wraps a TTDSP object such that it is possible to 
	build a dynamic graph of audio processing units.
 
	It is implemented as a TTObject so that it can receive dynamically bound messages, 
	incliding notifications from other objects.
*/
class TTGRAPH_EXPORT TTGraphObject : public TTObject {	
	TTCLASS_SETUP(TTGraphObject)
	
protected:
	TTGraphProcessStatus	mStatus;			///< Used to enable correct processing of feedback loops, multiple destinations, etc.
	TTUInt32					mFlags;				///< A bitmask of values defined in #TTGraphFlags
	TTGraphInletVector		mInlets;			///< The inlets through which we pull audio from sources
	TTGraphOutletVector		mOutlets;			///< The inlets through which we pull audio from sources
	TTAudioSignalArrayPtr		mInputSignals;		///< The buffered input for processing audio with our object.
	TTAudioSignalArrayPtr		mOutputSignals;		///< The results of processing audio with our object, buffered for objects requesting it
public:	
	TTAudioObjectPtr			mUnitGenerator;		///< The actual Jamoma DSP object doing the processing.
	
	
	/**	A notification that the specified object is being deleted -- so we should drop it from our list of input sources.  */
	TTErr objectFreeing(const TTValue& theObjectBeingDeleted);


	void addFlag(TTGraphFlags flag)
	{
		mFlags |= flag;
	}
		
	
	TTErr push(const TTDictionary& aDictionary)
	{
		; // TODO: implement!
		return kTTErrNone;
	}
	
	
	void getDescription(TTGraphDescription& desc);
	
	
	/**	Clear the list of source objects from which this object will try to pull audio.	*/
	TTErr reset();
	
	
	/**	Add a source to the list of objects from which to request audio.
		@param	anObject		The lydbaer object which is supplying us with input.
		@param	anInletNumber	If this object has a second input mechanism (e.g. a sidechain input), then that is indicated here.
								Typically the value passed here will be 0, indicating the normal audio input.
		@return					An error code.	*/
	TTErr connect(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber=0, TTUInt16 toInletNumber=0);

};


#endif // __TTGRAPH_OBJECT_H__
