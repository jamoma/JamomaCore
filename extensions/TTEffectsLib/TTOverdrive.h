/* 
 * TTBlue Overdrive / Soft Saturation Effect 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_OVERDRIVE_H__
#define __TT_OVERDRIVE_H__

#include "TTBlueAPI.h"

// silly stuff to get symbols exported so we can subclass this class in external code
#ifdef TT_PLATFORM_MAC
#define TT_OVERDRIVE_EXPORT TTEXPORT
#else
#ifdef TT_EFFECTS_LIB
#define TT_OVERDRIVE_EXPORT __declspec(dllexport)
#else
#define TT_OVERDRIVE_EXPORT __declspec(dllimport)
#endif
#endif


/**	TTOverdrive is an audio processor that provides a soft saturation or overdrive effect to "warm" a sound up. */ 
class TT_OVERDRIVE_EXPORT TTOverdrive : public TTAudioObject {
	TTCLASS_SETUP(TTOverdrive)

	TTFloat64			drive;			///< Attribute:
	TTBoolean			dcBlocker;		///< Attribute:
	TTUInt8				mode;			///< Attribute:
	TTFloat64			preamp;			///< Attribute: linear gain for preamp (attr setter sets it in dB)
	TTFloat64			s, 
						b, 
						nb, 
						z, 
						scale;
	TTAudioObjectPtr	dcBlockerUnit;	///< A TTDCBlock object

	/**	This method gets called when the inherited maxNumChannels attribute is changed. */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);
	
	/**	Process method when mode == 0	*/
	TTErr processMode0(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Process method when mode == 1	*/
	TTErr processMode1(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:

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
