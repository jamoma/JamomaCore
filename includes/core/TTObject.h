/*!
	@header		TTObject
				The basis of the entire TTBlue API.
				TTBlue is licensed under the terms of the GNU LGPL.
	@copyright	Timothy Place
	@updated	2007-10-13	
*/

#ifndef __TTOBJECT_H__

#import <stdio.h>
#ifdef TT_TARGET_MAC
#import <Cocoa/Cocoa.h>
#import <objc/objc.h>
#else
#import <Foundation/Foundation.h>
#import <objc/objc.h>
#endif

/*! @define		TTOBJECT_BASE_CLASS 
	@abstract	Define the TTBlue base class.
	@discussion	By default, the TTBlue base class (TTObject) is a subclass of NSObject.  However, if TTOBJECT_BASE_CLASS
				is defined as something else, then that will be used as the base class instead.
*/ 
#ifndef TTOBJECT_BASE_CLASS
#define TTOBJECT_BASE_CLASS NSObject
#endif


/*! @define		TTOBJECT_BASE_CLASS_HEADER 
	@abstract	Define the TTBlue base class header file name.
	@discussion	If TTBlue is defined as a subclass of an object other than the default NSObject, then it is likely that
				an appropriate header file for that base class will need to be included.  If TTOBJECT_BASE_CLASS_HEADER
				is defined, then that the string that defines it will be included by the preprocessor before the
				TTObject class is set up.
*/ 
#ifdef TTOBJECT_BASE_CLASS_HEADER
#include TTOBJECT_BASE_CLASS_HEADER
#define TTOBJECT_BASE_CLASS_HEADER TTOBJECT_BASE_CLASS_HEADER	// This is silly, but it prevents the above HeaderDoc from barfing
#endif


/****************************************************************************************************/
// Type Definitions

/*! @typedef	TTSampleValue
 	@abstract	A value representing a single audio sample.
	@discussion	TTSampleValue should be used any place a sample value is what the value represents.
				This will enable us to change the type in the future if needed.  For example, to use 64-bit floats.
*/ 
typedef float				TTSampleValue;


/*! @typedef 	TTErr 
	@abstract	The primary return type for TTBlue methods.
	@discussion	TTErr is typically an integrer value represented by the Error Codes enum.
*/ 
typedef long				TTErr;				// used for returning error codes



/****************************************************************************************************/
// Error Codes

/*! 
	@enum 		Error Codes
	@abstract	Enumeration of error codes that might be returned by any of the TTBlue functions and methods.
	@discussion	Some effort should be made to make these error codes consistent with other commonly-used APIs.
				For example, we should try to make them the same as the Max Obex API, and the MaxObject API.
	@constant	TT_ERR_NONE			No Error.
	@constant	TT_ERR_GENERIC		Something went wrong, but what exactly is not known.  Typically used for context-specific problems.
	@constant	TT_ERR_ALLOC_FAILED	Couldn't get memory -- TODO: perhaps this error num or description should change?
	@constant	TT_ERR_FREE_FAILED	Couldn't free memory -- TODO: perhaps this error num or description should change?
	@constant	TT_ERR_ATTR_INVALID	This is left-over from TTBlue version 0.3.x where attribute handling was done manually.
	 								It is unclear whether or not this still serves a purpose.
*/
enum{
	TT_ERR_NONE = 0,
	TT_ERR_GENERIC = -1,
	TT_ERR_ALLOC_FAILED = -2,
	TT_ERR_FREE_FAILED = -3,	
	TT_ERR_ATTR_INVALID = -100
};


/****************************************************************************************************/
// Constants

/*! @constant 		TTAntiDenormalValue 
	@functiongroup	TTBlue Utilities
	@discussion		constant used by the ttantidenormal function
*/ 
extern const double TTAntiDenormalValue;


/****************************************************************************************************/

// TODO: evaluate how to handle some of these utilities.  At the very least they should be in a different file.

/*! 
	@function		ttclip
	@functiongroup	TTBlue Utilities
	@abstract		limits the range of an input number between a low_bound and high_bound
	@discussion		All three args for the ttclip function (and the return value) must be of the same type.
					This method is optimized to not use branching, and thus should be relatively fast.
	@param			value		This is the input that will be clipped.
	@param			low_bound	Defines the lower limit to which the input should be clipped.
	@param			high_bound	Defines the upper limit to which the input should be clipped.
*/
long	ttclip(long value, long low_bound, long high_bound);


/*! 
	@function 		ttantidenormal 
	@functiongroup	TTBlue Utilities
	@abstract		process floats to ensure that they are not denormals
	@discussion		It is important on Intel processors (though not on PPC processors) to filter out denormal
					values in performance critical code.  The use of denormals is extraordinarily slow, and 
					easy to cause in recursive algorithms such as audio filters.
					If TT_DISABLE_DENORMAL_FIX is #defined, then this function will pass all input through unfettered.
*/
double	ttantidenormal(double value);


/****************************************************************************************************/

/*!
	@class		TTObject
	@superclass	NSObject
	@abstract	The required base-class from which all TTBlue objects must inherit.
	@discussion This object is the primary base-class for all TTBlue objects.  It does not 
				define any core audio functionality.  For audio functionality, the 
				TTAudioObject
				(itself a subclass of TTObject) should be subclassed.
				
				By default, TTObject inherits directly from NSObject.  If, for whatever reason, you 
				wish for TTObject to inherit from a different base class, then define TTOBJECT_BASE_CLASS
				in the preprocessor before TTObject.h is processed, and a different base class will be used.
				For instance, this is done in the examples for compiling MaxMSP externals.
*/
@interface TTObject : TTOBJECT_BASE_CLASS {
	@public
}

/*!
	@method 	setLong:forKey:
	@abstract	Set attribute values.
	@discussion	This is a convenience wrapper around the standard ObjC method setValue:forKey:.
	@param		value			A long int value.
	@param		key				The name of the attribute to set as an NSString.
*/
- (void)	setLong:		(long)value			forKey:(NSString *)key;

/*!
	@method 	longForKey:
	@abstract	Get attribute values.
	@discussion	This is a convenience wrapper around the standard ObjC method valueForKey:.
	@param		key				The name of the attribute to get as an NSString.
	@result		A long int -- the value of the named key.
*/
- (long)	longForKey:		(NSString *)key;

/*!
	@method 	setFloat:forKey:
	@abstract	Set attribute values.
	@discussion	This is a convenience wrapper around the standard ObjC method setValue:forKey:.
	@param		value			A float value.
	@param		key				The name of the attribute to set as an NSString.
*/
- (void)	setFloat:		(float)value		forKey:(NSString *)key;

/*!
	@method 	floatForKey:
	@abstract	Get attribute values.
	@discussion	This is a convenience wrapper around the standard ObjC method valueForKey:.
	@param		key				The name of the attribute to get as an NSString.
	@result		A float -- the value of the named key.
*/
- (float)	floatForKey:	(NSString *)key;

@end

#define __TTOBJECT_H__
#endif // __TTOBJECT_H__
