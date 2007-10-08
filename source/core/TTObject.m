//	TTObject
//	Root class for all objects in TTBlue 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import "TTObject.h"

/****************************************************************************************************/
// Constants
const double TTAntiDenormalValue = 1e-18;		// Used by the anti_denormal functions


// TODO: evaluate how to handle some of these utilities.  At the very least they should be in a different file.

/*
// clip utility that doesn't use branching
template<class T>
static TT_INLINE T tt_base::clip(T value, T low_bound, T high_bound)
{
	#ifdef MAC_VERSION
		value = T(((fabs(value - low_bound)) + (low_bound + high_bound)) - fabs(value - high_bound));
	#else	// VC++ gens an ERROR because of the ambiguous call to fabs().  This is annoying...
		value = T(((fabs(double(value - low_bound))) + (low_bound + high_bound)) - fabs(double(value - high_bound)));
	#endif
	value /= 2;		// relying on the compiler to optimize this, chosen to reduce compiler errors in Xcode
	return value;
}
*/

long ttclip(long value, long low_bound, long high_bound)
{
	#ifdef TT_TARGET_MAC
		value = ((fabs(value - low_bound)) + (low_bound + high_bound)) - fabs(value - high_bound);
	#else	// VC++ gens an ERROR because of the ambiguous call to fabs().  This is annoying...
		value = ((fabs(double(value - low_bound))) + (low_bound + high_bound)) - fabs(double(value - high_bound));
	#endif
	value /= 2;		// relying on the compiler to optimize this, chosen to reduce compiler errors in Xcode
	return value;
}


// Attempt to knock out denormalized floats; TT_INLINEd here for speed
double ttantidenormal(double value)
{
#ifndef TT_DISABLE_DENORMAL_FIX		// Define this to test code without denormal fixing
	value += TTAntiDenormalValue;
	value -= TTAntiDenormalValue;
#endif
	return(value);
}



@implementation TTObject



@end
