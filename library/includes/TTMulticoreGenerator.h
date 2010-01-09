/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_GENERATOR_H__
#define __TTMULTICORE_GENERATOR_H__

#include "TTMulticore.h"


/******************************************************************************************/

/**	TTMulticoreSource is a very simple audio object that holds a signal from TTBlue
 that can be used by a TTMulticore graph.		*/
class TTMULTICORE_EXPORT TTMulticoreGenerator : public TTAudioObject
{
	TTCLASS_SETUP(TTMulticoreGenerator)

public:
	TTAudioSignalPtr	buffer;		///< storage for the audioSignal that we provide
	
	
	/**	A standard audio processing method as used by TTBlue objects.
		@param	inputs	unused.				*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
};

typedef TTMulticoreGenerator*TTMulticoreGeneratorPtr;


#endif // __TTMULTICORE_GENERATOR_H__
