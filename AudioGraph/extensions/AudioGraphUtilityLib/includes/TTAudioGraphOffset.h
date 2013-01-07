/* 
 * TTAudioGraphOffset Object
 * Copyright © 2011, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_OFFSET_H__
#define __TT_OFFSET_H__

#include "TTDSP.h"


class TTAudioGraphOffset : public TTAudioObjectBase {
	TTCLASS_SETUP(TTAudioGraphOffset)
	
protected:
	
	TTInt16			mOffset; ///< how much we want to offset our channels, can be also negative  
	
	TTErr setOffset(const TTValue& value);

	TTErr processAudioNegativeOffset(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioPositiveOffset(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioBypass		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);


};



#endif // __TT_OFFSET_H__
