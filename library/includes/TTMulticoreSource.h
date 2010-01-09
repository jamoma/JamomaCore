/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_SOURCE_H__
#define __TTMULTICORE_SOURCE_H__

#include "TTMulticore.h"


/******************************************************************************************/

/**	TTMulticoreSource is a very simple audio object that holds a signal from TTBlue
 that can be used by a TTMulticore graph.		*/
class TTMULTICORE_EXPORT TTMulticoreSource : public TTAudioObject
{
	TTCLASS_SETUP(TTMulticoreSource)

public:
	TTAudioSignalPtr	buffer;		///< storage for the audioSignal that we provide
	
	
	/**	A standard audio processing method as used by TTBlue objects.
		@param	inputs	unused.				*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
};

typedef TTMulticoreSource* TTMulticoreSourcePtr;


#endif // __TTMULTICORE_SOURCE_H__
