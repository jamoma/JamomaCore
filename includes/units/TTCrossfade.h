/* 
 * TTBlue Signal Crossfader Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_CROSSFADE_H__
#define __TT_CROSSFADE_H__


#include "TTAudioObject.h"

/**	TTCrossfade in an audio processor that crossfades between two input signals.	
 *	
 *	In fact, this processor can work on a number of channels, provided that the number of input
 *	channels is twice the number of output channels.  In this case the first N/2 input channels are
 *	considered as the A source and the last N/2 input channels are considered the B source.
 */
class TTEXPORT TTCrossfade : public TTAudioObject {
private:
	TTFloat64		attrPosition;	///< Use a range of 0.0 to 1.0 to specify a ratio of the B source to the A source.
	TTSymbol		attrShape;		///< The shape attribute is set with a TTSymbol that is either "equalPower" (the default) or "linear"
	TTSymbol		attrMode;		///< The mode attribute is set with a TTSymbol that is either "lookup" (the default) or "calculate"

	/**	Setter for the shape attribute. */
	TTErr setShape(const TTValue& value);
	
	/**	Setter for the mode attribute. */
	TTErr setMode(const TTValue& value);
	
	/** Utility used by the setters for setting up the process routine. */
	TTErr setProcessPointers();

	/**	The process method used when the shape attribute is set to "linear"	
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processLinear(TTAudioSignal& in, TTAudioSignal& out);
	
	/** The process method used when the shape attribute is set to "equalPower" and the mode is set to "lookup"
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processLookup(TTAudioSignal& in, TTAudioSignal& out);
	
	/** The process method used when the shape attribute is set to "equalPower" and the mode is set to "calculate"
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processCalc(TTAudioSignal& in, TTAudioSignal& out);


	TTErr processLinearUsingSidechain(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out, TTAudioSignal&);
	TTErr processLookupUsingSidechain(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out, TTAudioSignal&);
	TTErr processCalcUsingSidechain(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out, TTAudioSignal&);


public:

	/**	Constructor. */
	TTCrossfade(TTUInt8 newMaxNumChannels);

	/**	Destructor. */
	~TTCrossfade();
};


#endif // __TT_CROSSFADE_H__
