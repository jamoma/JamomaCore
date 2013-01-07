/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjectBases that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTGRAPH_OBJECT_H__
#define __TTGRAPH_OBJECT_H__

#include "TTGraph.h"
#include "TTGraphInlet.h"
#include "TTGraphOutlet.h"
#include "TTGraphDescription.h"


/******************************************************************************************/

/**
	The TTGraphObject wraps a TTDSP object such that it is possible to 
	build a dynamic graph of audio processing units.
 
	It is implemented as a TTObjectBase so that it can receive dynamically bound messages, 
	incliding notifications from other objects.
*/
class TTGRAPH_EXPORT TTGraphObject : public TTDataObjectBase {
	TTCLASS_SETUP(TTGraphObject)
	
protected:
	TTGraphInletVector		mInlets;		///< The inlets through which we pull audio from sources
	TTGraphOutletVector		mOutlets;		///< The inlets through which we pull audio from sources
	TTDictionaryPtr			mDictionary;	/// our copy of the data, from which we pass out references to the outlets 
	TTGraphDescription		mDescription;	///< Used to pr	event feedback loops etc. when describing a graph

public:	
	TTObjectBasePtr				mKernel;		///< The actual TT object doing the processing.
			
	
	TTErr push(const TTDictionary& aDictionary);
	
	
	void prepareDescription();
	void getDescription(TTGraphDescription& desc);
	
	
	/**	Clear the lists of connected objects.	*/
	TTErr reset();
	
	
	// Magic sauce used by the connect method to setup outlets
private:
	TTErr handshake(TTGraphObjectPtr objectWhichIsBeingConnected, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber);
public:
	
	/**	Add a source to the list of objects from which to request audio.
	 @param	anObject		The lydbaer object which is supplying us with input.
	 @param	anInletNumber	If this object has a second input mechanism (e.g. a sidechain input), then that is indicated here.
	 Typically the value passed here will be 0, indicating the normal audio input.
	 @return					An error code.	*/
	TTErr connect(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber=0, TTUInt16 toInletNumber=0);
	
	
	/**	Drop a source from the list of objects from which to request audio.  In other words, disconnect.
	 @param	anObject		The lydbaer object which is supplying us with input.
	 @param	anInletNumber	If this object has a second input mechanism (e.g. a sidechain input), then that is indicated here.
	 Typically the value passed here will be 0, indicating the normal audio input.
	 @return					An error code.	*/
	TTErr drop(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber=0, TTUInt16 toInletNumber=0);
	
	
	// TODO: Need unit tests
};


#endif // __TTGRAPH_OBJECT_H__
