//	TTObject
//	Root class for all objects in TTBlue 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import "TTObject.h"

/****************************************************************************************************/
// Constants
const double TTAntiDenormalValue = 1e-18;		// Used by the anti_denormal functions
const double TTSqrt2 = 1.414213562;
const double TTPi = 3.141592654;


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


long TTClip(long value, long low_bound, long high_bound)
{
	#ifdef TT_TARGET_MAC
		value = ((fabs(value - low_bound)) + (low_bound + high_bound)) - fabs(value - high_bound);
	#else	// VC++ gens an ERROR because of the ambiguous call to fabs().  This is annoying...
		value = ((fabs((double)(value - low_bound))) + (low_bound + high_bound)) - fabs((double)(value - high_bound));
	#endif
	value /= 2;		// relying on the compiler to optimize this, chosen to reduce compiler errors in Xcode
	return value;
}


double TTAntiDenormal(double value)
{
#ifndef TT_DISABLE_DENORMAL_FIX
	value += TTAntiDenormalValue;
	value -= TTAntiDenormalValue;
#endif
	return(value);
}



@implementation TTObject

// NOTE: this method is also mirrored in the MaxObject framework
- (void) setLong:(long)newValue forKey:(NSString *)key
{
	[self setValue:[NSNumber numberWithLong:newValue] forKey:key];
}

- (void) setFloat:(float)newValue forKey:(NSString *)key
{
	[self setValue:[NSNumber numberWithFloat:newValue] forKey:key];
}

// TODO: These next two!  They are written based on theory alone...

- (long) longForKey:(NSString *)key
{
	return [[self valueForKey:key] longValue];
}

- (float) floatForKey:(NSString *)key
{
	return [[self valueForKey:key] floatValue];
}


@end
