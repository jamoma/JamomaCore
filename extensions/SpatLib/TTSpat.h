/* 
 * Host a SpatLib object
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPAT_H__
#define __SPAT_H__

#include "TTDSP.h"


class TTSpat : TTAudioObject {
	TTCLASS_SETUP(TTSpat)

	TTAudioObjectPtr	mSpatFunctionObject;
	TTSymbolPtr			mSpatFunction;	
	TTUInt16			mSourceCount;	
	TTUInt16			mDestinationCount;
	TTValue				mSourcePositions;		
	TTValue				mDestinationPositions;		
		
	/**	choose the window function */
	TTErr setSpatFunction(const TTValue& function);
	
	/**	set position size */
	TTErr getSourcePositions(TTValue& aPosition);
	TTErr setSourcePositions(const TTValue& aPosition);
	
	/**	set position size */
	TTErr getDestinationPositions(TTValue& aPosition);
	TTErr setDestinationPositions(const TTValue& aPosition);
	
	/**	set process method */
	TTErr setSourceCount(const TTValue& mode);
	
	/**	set process method */
	TTErr setDestinationCount(const TTValue& mode);
		
	/**	return a list of all the available window shapes	*/
	TTErr getSpatFunctions(TTValue& listOfSpatFunctionsToReturn);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.*/
	TTErr process(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __SPAT_H__
