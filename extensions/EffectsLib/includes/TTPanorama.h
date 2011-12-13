/* 
 * Panorama Object
 * Copyright © 2008-11, Timothy Place, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTPANORAMA_H__
#define __TTPANORAMA_H__

#include "TTDSP.h"

class TTPanorama : public TTAudioObject {
	TTCLASS_SETUP(TTPanorama)
	
	TTFloat64		mPosition;	///< Use a range of -1.0 to 1.0 to specify the panning position
	TTFloat64		mScaledPosition;///< rescaled value of mPosition between 0 and 1.
	TTSymbol*		mShape;		///< The shape attribute is set with a TTSymbol that is either "equalPower" (the default) or "linear"
	TTSymbol*		mMode;		///< The mode attribute is set with a TTSymbol that is either "lookup" (the default) or "calculate"
	
	/** Utility used by the setters for setting up the process routine. */
	TTErr setProcessPointers();
	
	/**	The process method used when the shape attribute is set to "linear"	
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processLinear(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/** The process method used when the shape attribute is set to "equalPower" and the mode is set to "lookup"
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processEqualPowerLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processEqualPowerCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs); // calculate
	
	/** The process method used when the shape attribute is set to "squareRoot""
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processSquareRootCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processSquareRootLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Setter for the shape attribute. */
	TTErr setShape(const TTValue& value);
	
	/**	Setter for the mode attribute. */
	TTErr setMode(const TTValue& value);
	
	/**	Setter for the mode attribute. */
	TTErr setPosition(const TTValue& value);

};



#endif // __TTPANORAMA_H__