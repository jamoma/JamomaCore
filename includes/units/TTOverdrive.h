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
TTCLASS TTOverdrive : public TTAudioObject {
private:
	TTFloat64			attrDrive;		///< 
	TTBoolean			attrDCBlocker;	///< 
	TTUInt8				attrMode;		///< 
	TTFloat64			attrPreamp;		///< linear gain for preamp (attr setter sets it in dB)
	TTFloat64			s, 
						b, 
						nb, 
						z, 
						scale;
	TTDCBlock*			dcBlocker;

	/**	This method gets called when the inherited maxNumChannels attribute is changed. */
	TTErr updateMaxNumChannels();

	/**	Setter for the mode attribute. */
	TTErr setDrive(const TTValue& value);

	/**	Setter for the mode attribute. */
	TTErr setDCBlocker(const TTValue& value);

	/**	Setter for the mode attribute. */
	TTErr setMode(const TTValue& value);

	/**	Getter for the mode attribute. */
	TTErr getPreamp(TTValue& value);
	/**	Setter for the mode attribute. */
	TTErr setPreamp(const TTValue& value);

	/**	Reset the DC Blocker.			*/
	TTErr clear();
	
	/**	Process method when mode == 0	*/
	TTErr processMode0(TTAudioSignal& in, TTAudioSignal& out);

	/**	Process method when mode == 1	*/
	TTErr processMode1(TTAudioSignal& in, TTAudioSignal& out);

public:
	/**	Constructor. */
	TTOverdrive(TTUInt8 maxNumChannels);

	/**	Destructor. */
	~TTOverdrive();
};


#endif // __TT_OVERDRIVE_H__
