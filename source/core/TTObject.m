//	TTObject
//	Root class for all objects in TTBlue 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import "TTObject.h"

/****************************************************************************************************/
// Constants
const double TTAntiDenormalValue = 1e-18;		// Used by the anti_denormal functions
const double TTSqrt2 = 1.414213562;
const double TTPi = 3.1415926535897932;
const double TTTwoPi = 6.2831853071795864;


// TODO: expand the types that can be processed by this routines

long TTLongLimitMin(long value, long lowBound)
{
	value -= lowBound;
	#ifdef TT_TARGET_MAC
		value += fabs(value);
	#else
		value += fabs((double)value);
	#endif
	value *= 0.5;
	value += lowBound;
	return value; 
}


long TTLongLimitMax(long value, long highBound)
{
	value = highBound - value;
	#ifdef TT_TARGET_MAC
		value += fabs(value);
	#else
		value += fabs((double)value);
	#endif
	value *= 0.5;
	value = highBound - value;
	return value; 
}


long TTLongOneWrap(long value, long LowBound, long HighBound)
{
	if((value >= LowBound) && (value < HighBound)) 
		return value;
	else if(value >= HighBound)
		return((LowBound - 1) + (value - HighBound));	
	else
		return((HighBound + 1) - (LowBound - value));
}



long TTLongScale(long value, long inLow, long inHigh, long outLow, long outHigh)
{
	double inScale, outDiff;
	 
	inScale = 1 / (inHigh - inLow);
	outDiff = outHigh - outLow;
	
	value = (value - inLow) * inScale;
	value = (value * outDiff) + outLow;
	return(value);											
}



long TTLongClip(long value, long low_bound, long high_bound)
{
	#ifdef TT_TARGET_MAC
		value = ((fabs(value - low_bound)) 			 + (low_bound + high_bound)) - fabs(value - high_bound);
	#else	// VC++ gens an ERROR because of the ambiguous call to fabs().  This is annoying...
		value = ((fabs((double)(value - low_bound))) + (low_bound + high_bound)) - fabs((double)(value - high_bound));
	#endif
	value /= 2;		// relying on the compiler to optimize this, chosen to reduce compiler errors in Xcode
	return value;
}



// rounding utility
long TTRound(float value)
{
	if(value > 0)
		return((long)(value + 0.5));
	else
		return((long)(value - 0.5));
}


double TTAntiDenormal(double value)
{
#ifndef TT_DISABLE_DENORMAL_FIX
	value += TTAntiDenormalValue;
	value -= TTAntiDenormalValue;
#endif
	return(value);
}




void TTLogMessage(char *message)
{
	#ifdef TT_TARGET_MAX
		post(message);
	#else
		NSLog(message);
	#endif
}

void TTLogError(char *message)
{
	#ifdef TT_TARGET_MAX
		error(message);
	#else
		NSLog(message);
	#endif
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
