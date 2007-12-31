/* 
 * TTBlue Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_BASE_H__
#define __TT_BASE_H__

#include <math.h>
#include <stdlib.h>
#include <iostream>


/****************************************************************************************************/
// Type Definitions

typedef unsigned char		TTBoolean;			// same as Boolean on the Mac

typedef signed char			TTInt8;
typedef unsigned char		TTUInt8;
typedef signed				TTInt16;
typedef unsigned short		TTUInt16;
typedef signed long			TTInt32;
typedef unsigned long		TTUInt32;
typedef signed long long	TTInt64;
typedef unsigned long long	TTUInt64;

typedef float				TTFloat32;
typedef double				TTFloat64;

/** A value representing a single audio sample.  TTSampleValue should be used any place a sample value is what the value represents.  This will enable us to change the type in the future if needed.  For example, to use 64-bit floats. */
typedef float				TTSampleValue;
/** A TTSampleVector is simply a pointer to the first of an array of TTSampleValues. */
typedef TTSampleValue*		TTSampleVector;

/** The primary return type for TTBlue methods.  TTErr is typically an integrer value represented by the TTErrorCodes enum.	*/
typedef short				TTErr;


/****************************************************************************************************/

/**	TapTools Error Codes
 *	Enumeration of error codes that might be returned by any of the TTBlue functions and methods.
 */
enum TTErrorCodes{
	TT_ERR_NONE = 0,		///< No Error.
	TT_ERR_GENERIC,			///< Something went wrong, but what exactly is not known.  Typically used for context-specific problems.
	TT_ERR_ALLOC_FAILED,	///< Couldn't get memory -- TODO: perhaps this error num or description should change?
	TT_ERR_FREE_FAILED,		///< Couldn't free memory -- TODO: perhaps this error num or description should change?
	TT_ERR_ATTR_INVALID		///< This is left-over from TTBlue version 0.3.x where attribute handling was done manually. It is unclear whether or not this still serves a purpose.
};



/****************************************************************************************************/
// Class Specification

/**	The required base-class from which all TTBlue objects must inherit.
 *	This object is the primary base-class for all TTBlue objects, including TTObject.  
 *	It does not define any core audio, parameter, or other high-level functionality.  For
 *	these refer to TTObject and TTAudioObject.
 */
class TTBase {
public:
	static const TTFloat32 kTTLookupEqualPower[];			///< Equal Power lookup table
	static const TTFloat32 kTTLookupHalfPaddedwWelch[];		///< 256 point window table (the first half of it)
	static const TTFloat32 kTTLookupQuarterSine[];			///< Quarter Sine lookup table
	static const TTFloat64 kTTPi;							///< pre-calculated value of pi
	static const TTFloat64 kTTTwoPi;						///< pre-calculated value of pi * 2
	static const TTFloat64 kTTAntiDenormalValue;			///< constant used by the ttantidenormal function
	static const TTFloat64 kTTSqrt2;						///< pre-calculated square-root of 2

	/** Constructor. */
	TTBase();
	
	/** Destructor. */
	virtual ~TTBase();
	
	/** Filter out denormaled values, which can make processing extremely slow when they are present. */
	TTFloat64		antiDenormal(TTFloat64 value);
	
	/** Platform and host independent method for posting messages. */
	void			logMessage(char *message);
	/** Platform and host independent method for posting errors. */
	void			logError(char *message);
	
	/** Rounding utility. */
	static TTInt32	round(TTFloat32 value);
	/** Rounding utility. */
	static TTInt32	round(TTFloat64 value);
	
	
	/** A fast routine for clipping a number to a range.  This routine does not use branching. */
	template<class T>
	static T tt_base::clip(T value, T low_bound, T high_bound)
	{
		#ifdef MAC_VERSION
			value = T(((fabs(value - low_bound)) + (low_bound + high_bound)) - fabs(value - high_bound));
		#else	// VC++ gens an ERROR because of the ambiguous call to fabs().  This is annoying...
			value = T(((fabs(double(value - low_bound))) + (low_bound + high_bound)) - fabs(double(value - high_bound)));
		#endif
		value /= 2;		// relying on the compiler to optimize this, chosen to reduce compiler errors in Xcode
		return value;
	}

	/** A fast routine for clipping a number to a maximum range.  The bottom end of the range is not checked.  This routine does not use branching. */
	template<class T>
	static T tt_base::limit_max(T value, T high_bound)
	{
		value = high_bound - value;
		#ifdef MAC_VERSION
			value += fabs(value);
		#else
			value += fabs((double)value);
		#endif
		value *= 0.5;
		value = high_bound - value;
		return value; 
	}

	/** A fast routine for clipping a number on it's low range.  The high end of the range is not checked.  
		This routine does not use branching. */
	template<class T>
	static T tt_base::limit_min(T value, T low_bound)
	{
		value -= low_bound;
		#ifdef MAC_VERSION
			value += fabs(value);
		#else
			value += fabs((double)value);
		#endif
		value *= 0.5;
		value += low_bound;
		return value; 
	}

	/** A fast routine for wrapping around the range once.  This is faster than doing an expensive module, where you know the range of the input
	 	will not equal or exceed twice the range. */
	template<class T>
	static T tt_base::onewrap(T value, T low_bound, T high_bound)
	{
		if((value >= low_bound) && (value < high_bound)) 
			return value;
		else if(value >= high_bound)
			return((low_bound - 1) + (value - high_bound));	
		else
			return((high_bound + 1) - (low_bound - value));
	}

	/** A utility for scaling one range of values onto another range of values. */
	template<class T>
	static T tt_base::scale(T value, T inlow, T inhigh, T outlow, T outhigh)
	{
		double inscale, outdiff;
		 
		inscale = 1 / (inhigh - inlow);
		outdiff = outhigh - outlow;
		
		value = (value - inlow) * inscale;
		value = (value * outdiff) + outlow;
		return(value);											
	}
	
};


#endif // __TT_BASE_H__

