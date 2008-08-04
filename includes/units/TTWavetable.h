/* 
 * TTBlue Wavetable Oscillator
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_WAVETABLE_H__
#define __TT_WAVETABLE_H__


#include "TTAudioObject.h"
#include "TTBuffer.h"

/**	TTWavetable is a table-lookup oscillator.
	The wavetable is implemented as a TTBuffer.
 */ 
class TTEXPORT TTWavetable : public TTAudioObject {
private:
	TTSymbol*			attrMode;
	TTFloat64			attrFrequency;
	TTFloat64			attrGain;
	TTFloat64			linearGain;
	TTSymbol*			attrInterpolation;	///< should be none, linear, or eventually something better...
	TTUInt64			attrSize;			///< how many samples in the wave table
	TTFloat64			index;
	TTFloat64			indexDelta;
	TTBuffer*			wavetable;
	
	/**	This method gets called when the inherited sample-rate attribute is changed. */
	TTErr updateSr();
	
	/**	Process method 	*/
	TTErr processWithNoInterpolation(TTAudioSignal& in, TTAudioSignal& out);

	/**	Process method 	*/
	TTErr processWithLinearInterpolation(TTAudioSignal& in, TTAudioSignal& out);

public:
	/**	Constructor. */
	TTWavetable(TTUInt16 maxNumChannels);

	/**	Destructor. */
	virtual ~TTWavetable();
	
	
	/**	Setter for the mode attribute. 
	 This is a symbol that names the waveform that fills the buffer.
	 If the symbol is the string "externalBuffer", then a second symbol names the buffer to use in the buffer hash.  */
	TTErr setMode(const TTValue& value);
	
	/**	Setter for the frequency attribute in Hz. */
	TTErr setFrequency(const TTValue& value);
	
	/**	Setter for the gain attribute in dB. */
	TTErr setGain(const TTValue& value);
	
	/**	Setter for the interpolation attribute. 
		This determines the process method that is used.  */
	TTErr setInterpolation(const TTValue& value);
	
	/**	Setter for the size attribute.  Size is set as the number of samples in the table.  */
	TTErr setSize(const TTValue& newSize);
};


#endif // __TT_WAVETABLE_H__
