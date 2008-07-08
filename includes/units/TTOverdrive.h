/* 
 * TTBlue Overdrive / Soft Saturation Effect 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_OVERDRIVE_H__
#define __TT_OVERDRIVE_H__


#include "TTAudioObject.h"
#include "TTDCBlock.h"

/**	TTOverdrive is an audio processor that provides a soft saturation
 *	or overdrive effect to "warm" a sound up.
 */ 
class TTEXPORT TTOverdrive : public TTAudioObject {
private:
	TTFloat64			drive;			///< Attribute:
	TTBoolean			dcBlocker;		///< Attribute:
	TTUInt8				mode;			///< Attribute:
	TTFloat64			preamp;			///< Attribute: linear gain for preamp (attr setter sets it in dB)
	TTFloat64			s, 
						b, 
						nb, 
						z, 
						scale;
	TTDCBlock*			dcBlockerUnit;

	/**	This method gets called when the inherited maxNumChannels attribute is changed. */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);
	
	/**	Process method when mode == 0	*/
	TTErr processMode0(TTAudioSignal& in, TTAudioSignal& out);

	/**	Process method when mode == 1	*/
	TTErr processMode1(TTAudioSignal& in, TTAudioSignal& out);

public:
	/**	Constructor. */
	TTOverdrive(TTUInt16 maxNumChannels);

	/**	Destructor. */
	~TTOverdrive();
	
	
	/**	Setter for the mode attribute. */
	TTErr setdrive(const TTValue& value);
	
	/**	Setter for the mode attribute. */
	TTErr setdcBlocker(const TTValue& value);
	
	/**	Setter for the mode attribute. */
	TTErr setmode(const TTValue& value);
	
	/**	Getter for the mode attribute. */
	TTErr getpreamp(TTValue& value);
	/**	Setter for the mode attribute. */
	TTErr setpreamp(const TTValue& value);
	
	/**	Reset the DC Blocker.			*/
	TTErr clear();
	
};


#endif // __TT_OVERDRIVE_H__
