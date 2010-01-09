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
	TTAudioSignalPtr		mBufferedOutput;	
	
public:
	TTMulticoreOutlet()
	{;}
	
	~TTMulticoreOutlet()
	{;}
	

	TTUInt16 getNumOutputChannels()
	{
		return mBufferedOutput->getNumChannels();
	}
	
	
	TTUInt16 getOutputVectorSize()
	{
		return mBufferedOutput->getVectorSize();
	}
	
};




#endif // __TTMULTICORE_OUTLET_H__
