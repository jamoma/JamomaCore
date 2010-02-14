/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_INPUT_H__
#define __TTMULTICORE_INPUT_H__

#include "TTMulticore.h"


/******************************************************************************************/

/**	TTMulticoreOutput is an audio object that serves as the destination and master for a TTMulticore graph.		*/
class TTMULTICORE_EXPORT TTMulticoreInput : public TTAudioObject
{
	TTCLASS_SETUP(TTMulticoreInput)

public:
	TTObjectPtr				mAudioEngine;
	TTAudioSignalPtr		mBuffer;			///< an unused audio signal that we pass
	//TTMulticoreObjectPtr	owner;			///< the owning lydbaer instance
	//TTValuePtr			me;
	
	TTErr start();
	TTErr stop();
	
	/** Called by the audio engine every time a new vector of output is required. */
	//TTErr audioEngineWillProcess();
	//TTErr setOwner(TTValue& newOwner);
	
	// Attribute Accessors
	TTErr setSampleRate(const TTValue& newValue);
	TTErr getSampleRate(TTValue& returnedValue);
	TTErr setVectorSize(const TTValue& newValue);
	TTErr getVectorSize(TTValue& returnedValue);
	
	
	/**	A standard audio processing method as used by TTBlue objects.
		@param	outputs	unused.		*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
};

typedef TTMulticoreInput* TTMulticoreInputPtr;


#endif // __TTMULTICORE_INPUT_H__
