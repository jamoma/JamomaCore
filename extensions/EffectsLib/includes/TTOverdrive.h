/*
 * Overdrive / Soft Saturation Effect
 * Copyright © 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#ifndef __TT_OVERDRIVE_H__
#define __TT_OVERDRIVE_H__

#include "TTDSP.h"

// silly stuff to get symbols exported so we can subclass this class in external code
#ifdef TT_PLATFORM_WIN
	#ifdef TT_EFFECTS_LIB
		#define TT_OVERDRIVE_EXPORT __declspec(dllexport)
	#else
		#define TT_OVERDRIVE_EXPORT __declspec(dllimport)
	#endif
#else
	#ifdef TT_EFFECTS_LIB
		#define TT_OVERDRIVE_EXPORT TTDSP_EXPORT
	#else
		#define TT_OVERDRIVE_EXPORT
	#endif
#endif


/**	TTOverdrive is an audio processor that provides a soft saturation or overdrive effect to "warm" a sound up. */
class TT_OVERDRIVE_EXPORT TTOverdrive : public TTAudioObject {
	TTCLASS_SETUP(TTOverdrive)

	TTFloat64			mDrive;			///< Attribute: The amount of saturation to apply
	TTBoolean			mDcBlocker;		///< Attribute: Pass processed signal through a DC blocking filter?
	TTBoolean			mMode;			///< Attribute: What distortion function to use
	TTFloat64			mPreamp;		///< Attribute: linear gain for preamp (attr setter sets it in dB)
	TTFloat64			s,
						b,
						nb,
						z,
						scale;
	TTAudioObjectPtr	dcBlockerUnit;	///< A TTDCBlock object

	/**	This method gets called when the inherited maxNumChannels attribute is changed. */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	/**	Process method when mode == 0	*/
	TTErr processMode0(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Process method when mode == 1	*/
	TTErr processMode1(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:

	/**	Setter for the mode attribute. */
	TTErr setDrive(const TTValue& value);

	/**	Setter for the mode attribute. */
	TTErr setDcBlocker(const TTValue& value);

	/**	Setter for the mode attribute. */
	TTErr setMode(const TTValue& value);

	/**	Getter for the mode attribute. */
	TTErr getPreamp(TTValue& value);
	/**	Setter for the mode attribute. */
	TTErr setPreamp(const TTValue& value);

	/**	Reset the DC Blocker.			*/
	TTErr clear();
};


#endif // __TT_OVERDRIVE_H__
