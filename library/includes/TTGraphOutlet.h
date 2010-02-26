/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPH_OUTLET_H__
#define __TTGRAPH_OUTLET_H__

#include "TTGraph.h"


/******************************************************************************************/

/**	This object represents a single 'outlet' from a TTGraphObject.
	TTGraphObject maintains a vector of these outlets.
*/
class TTGraphOutlet {
	friend class TTGraphObject;
	TTAudioSignalPtr		mBufferedOutput;	
	
public:
	TTGraphOutlet() : 
		mBufferedOutput(NULL)
	{
		TTObjectInstantiate(kTTSym_audiosignal, &mBufferedOutput, 1);
	}
	
	~TTGraphOutlet()
	{
		TTObjectRelease(&mBufferedOutput);
	}
	
	
	// Copying Functions are critical due to use by std::vector 
	
	TTGraphOutlet(const TTGraphOutlet& original) : 
		mBufferedOutput(NULL)
	{
//		mBufferedOutput = TTObjectReference(original.mBufferedOutput);
		TTObjectInstantiate(kTTSym_audiosignal, &mBufferedOutput, 1);
	}
	
	TTGraphOutlet& operator=(const TTGraphOutlet& source)
	{
		TTObjectRelease(&mBufferedOutput);
		mBufferedOutput = TTObjectReference(source.mBufferedOutput);
		return *this;
	}
	

	// Audio Signal Access Methods

	TTUInt16 getNumOutputChannels()
	{
		return mBufferedOutput->getNumChannels();
	}
	
	
	TTUInt16 getOutputVectorSize()
	{
		return mBufferedOutput->getVectorSize();
	}

	
	TTAudioSignalPtr getBuffer()
	{
		return mBufferedOutput;
	}
	
};




#endif // __TTGRAPH_OUTLET_H__
