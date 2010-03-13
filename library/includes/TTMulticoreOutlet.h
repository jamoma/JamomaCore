/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_OUTLET_H__
#define __TTMULTICORE_OUTLET_H__

#include "TTMulticore.h"


/******************************************************************************************/

/**	This object represents a single 'outlet' from a TTMulticoreObject.
	TTMulticoreObject maintains a vector of these outlets.
*/
class TTMulticoreOutlet {
	friend class TTMulticoreObject;
	TTAudioSignalPtr		mBufferedOutput;	
	
public:
	TTMulticoreOutlet() : 
		mBufferedOutput(NULL)
	{
		TTObjectInstantiate(kTTSym_audiosignal, &mBufferedOutput, 1);
	}
	
	~TTMulticoreOutlet()
	{
		TTObjectRelease(&mBufferedOutput);
	}
	
	
	// Copying Functions are critical due to use by std::vector 
	
	TTMulticoreOutlet(const TTMulticoreOutlet& original) : 
		mBufferedOutput(NULL)
	{
//		mBufferedOutput = TTObjectReference(original.mBufferedOutput);
		TTObjectInstantiate(kTTSym_audiosignal, &mBufferedOutput, 1);
	}
	
	TTMulticoreOutlet& operator=(const TTMulticoreOutlet& source)
	{
		TTObjectRelease(&mBufferedOutput);
		mBufferedOutput = TTObjectReference(source.mBufferedOutput);
		return *this;
	}
	

	// Audio Signal Access Methods

	TTUInt16 getNumOutputChannels()
	{
		return mBufferedOutput->getNumChannelsAsInt();
	}
	
	
	TTUInt16 getOutputVectorSize()
	{
		return mBufferedOutput->getVectorSizeAsInt();
	}

	
	TTAudioSignalPtr getBuffer()
	{
		return mBufferedOutput;
	}
	
};




#endif // __TTMULTICORE_OUTLET_H__
