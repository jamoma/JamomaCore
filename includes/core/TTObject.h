//	TTObject
//	Root class for all objects in TTBlue 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import <stdio.h>
#ifdef TT_TARGET_MAC
#import <Cocoa/Cocoa.h>
#import <objc/objc.h>
#else
#import <Foundation/Foundation.h>
#import <objc/objc.h>
#endif

// The follow lets us be a subclass of something other than simply NSObject
// For example, we may wish to be a subclass of MaxObject when creating 
// plug-ins for MaxMSP
#ifndef TTOBJECT_BASE_CLASS
#define TTOBJECT_BASE_CLASS NSObject
#endif

#ifdef TTOBJECT_BASE_CLASS_HEADER
#include TTOBJECT_BASE_CLASS_HEADER
#endif


/****************************************************************************************************/
// Type Definitions

typedef float				TTSampleValue;	
typedef long				TTErr;				// used for returning error codes


/****************************************************************************************************/
// Error Codes

enum{
	TT_ERR_NONE = 0,
	TT_ERR_GENERIC = -1,
	TT_ERR_ALLOC_FAILED = -2,
	TT_ERR_FREE_FAILED = -3,
	
	TT_ERR_ATTR_INVALID = -100
};


/****************************************************************************************************/
// Constants
extern const double TTAntiDenormalValue;		// Used by the anti_denormal functions


/****************************************************************************************************/

// TODO: evaluate how to handle some of these utilities.  At the very least they should be in a different file.
long	ttclip(long value, long low_bound, long high_bound);
double	ttantidenormal(double value);


/****************************************************************************************************/

@interface TTObject : TTOBJECT_BASE_CLASS {
	@public
}


@end
