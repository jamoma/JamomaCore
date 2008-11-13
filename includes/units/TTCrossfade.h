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
protected:
	TTFloat64		position;	///< Use a range of 0.0 to 1.0 to specify a ratio of the B source to the A source.
	TTSymbol*		shape;		///< The shape attribute is set with a TTSymbol that is either "equalPower" (the default) or "linear"
	TTSymbol*		mode;		///< The mode attribute is set with a TTSymbol that is either "lookup" (the default) or "calculate"

	/** Utility used by the setters for setting up the process routine. */
	TTErr setProcessPointers();

	/**	The process method used when the shape attribute is set to "linear"	
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processLinear(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/** The process method used when the shape attribute is set to "equalPower" and the mode is set to "lookup"
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/** The process method used when the shape attribute is set to "equalPower" and the mode is set to "calculate"
	 *	This method will return an error if the input and output channels are not matched properly.		*/
	TTErr processCalc(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:

	/**	Constructor. */
	TTCrossfade(TTUInt16 newMaxNumChannels);

	/**	Destructor. */
	virtual ~TTCrossfade();
	
	/**	Setter for the shape attribute. */
	TTErr setshape(const TTValue& value);
	
	/**	Setter for the mode attribute. */
	TTErr setmode(const TTValue& value);
};


#endif // __TT_CROSSFADE_H__
