/* 
 * Host a SpatLib object
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SPAT_H__
#define __TT_SPAT_H__

#include "TTDSP.h"


class TTSpat : TTAudioObject {
	TTCLASS_SETUP(TTSpat)

	TTAudioObjectPtr	mSpatFunctionObject;
	TTSymbolPtr			mSpatFunction;	
	TTUInt16			mSourceCount;	
	TTUInt16			mDestinationCount;
	TTValue				mSourcePositions;		
	TTValue				mDestinationPositions;		
		
	/**	choose the spatialisation function */
	TTErr setSpatFunction(const TTValue& aSpatFunction);
		
	/**	get source positions */
	TTErr getSourcePositions(TTValue& aPosition);
	
	/**	set source positions */
	TTErr setSourcePositions(const TTValue& aPosition);
	
	/**	get destination positions */
	TTErr getDestinationPositions(TTValue& aPosition);
	
	/**	set destination positions */
	TTErr setDestinationPositions(const TTValue& aPosition);
	
	/**	set number of sources */
	TTErr setSourceCount(const TTValue& mode);
	
	/**	set number of destinations */
	TTErr setDestinationCount(const TTValue& mode);
		

	/**	return a list of all the available spatialisation methods	*/
	TTErr getSpatFunctions(const TTValue&, TTValue& listOfSpatFunctionsToReturn);
	
	TTErr getFunctionParameters(const TTValue&, TTValue& listOfParameterNamesToReturn);
	TTErr getFunctionParameter(const TTValue& aParameterNameIn, TTValue& aValueOut);
	TTErr setFunctionParameter(const TTValue& aParameterNameAndValue, TTValue&);
	
	
	/**	A standard audio processing method as used by Jamoma DSP objects.*/
	TTErr process(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __TT_SPAT_H__
