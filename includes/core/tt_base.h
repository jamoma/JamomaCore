// taptools base header file

#ifndef TT_BASE_HEADER
#define TT_BASE_HEADER

#include <math.h>		// Standard Math library
#include <stdlib.h>
#include <iostream>

/* If the target is an external for Cycling'74 Max then you must define
 * TT_TARGET_MAX in a prefix file.  That way the proper flags are set
 * to use Max's memory routines and other important facilities.
 */
#ifdef TT_TARGET_MAX
	#include "ext.h"
#endif // TT_TARGET_MAX


/****************************************************************************************************/
// Type Definitions

typedef void*				tt_ptr;
typedef char				tt_char;
typedef char*				tt_string;
typedef signed char			tt_int8;
typedef signed short		tt_int16;
typedef signed long			tt_int32;
typedef signed long long	tt_int64;
typedef unsigned char		tt_uint8;
typedef unsigned short		tt_uint16;
typedef unsigned long		tt_uint32;
typedef unsigned long long	tt_uint64;
typedef float				tt_float32;
typedef double				tt_float64;

typedef short				tt_selector;
typedef float				tt_attribute_value;
typedef bool				tt_attribute_value_bool;
typedef long				tt_attribute_value_discrete;

typedef float				tt_sample_value;
typedef double				tt_sample_value_highres;
typedef float				*tt_sample_vector;
typedef double				*tt_sample_vector_highres;

typedef short				tt_err;						// used for returning error codes



/****************************************************************************************************/
// TapTools Error Codes

enum{
	TT_ERR_NONE = 0,
	TT_ERR_GENERIC = -1,
	TT_ERR_ALLOC_FAILED = -2,
	TT_ERR_FREE_FAILED = -3,
};


/****************************************************************************************************/
// Platform Sniffing

// We need to figure out what OS and compiler is being used.
// This will result in symbols being set for conditional compiling of things like memory allocation.

// First Check for symbols defined by the Max API
#ifdef MAC_VERSION
	#define TT_TARGET_MAC 1
#elif defined(WIN_VERSION)
	#define TT_TARGET_WIN 1
#elif defined(WIN32)		// Next look for something commonly defined by VC++ to see whether we're on Windows.
	#define TT_TARGET_WIN 1
#else						// If all else fails, assume we are on the Mac...
	#define TT_TARGET_MAC 1
#endif


// Include the appropriate API header
#if TARGET_OS_WIN				// Windows
	#include <windows.h>
#endif


// In Xcode, there are problems with crazy linker errors if you use the inline keyword
// If the -O2 optimization flag is used for a build, all functions are considered for
//	inlining anyway.  So it is recommended to use that.
#if TT_TARGET_MAC
	#define TT_INLINE  
#else
	#define TT_INLINE inline
#endif


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class tt_base{
	private:
		bool					is_initialized;				// Flag set by successful initialization
		
		void init();
		
	public:
		
		// OBJECT LIFE
		tt_base();
		~tt_base();

		// Platform-independent Message Logging
		void log_post(char *message);
		void log_error(char *message);

		// Platform-independent Memory routines
		tt_ptr mem_alloc(long size);
		void mem_free(void *my_ptr);
		
		// rounding utility
		static long round(float value);
		static long round(double value);
		
// clip utility that doesn't use branching
template<class T>
TT_INLINE T tt_base::clip(T value, T low_bound, T high_bound)
{
	#ifdef MAC_VERSION
		value = T(((fabs(value - low_bound)) + (low_bound + high_bound)) - fabs(value - high_bound));
	#else	// VC++ gens an ERROR because of the ambiguous call to fabs().  This is annoying...
		value = T(((fabs(double(value - low_bound))) + (low_bound + high_bound)) - fabs(double(value - high_bound)));
	#endif
	value /= 2;		// relying on the compiler to optimize this, chosen to reduce compiler errors in Xcode
	return value;
}

template<class T>
TT_INLINE T tt_base::limit_max(T value, T high_bound)
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

template<class T>
TT_INLINE T tt_base::limit_min(T value, T low_bound)
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

// onewrap utility
template<class T>
TT_INLINE T tt_base::onewrap(T value, T low_bound, T high_bound)
{
	if((value >= low_bound) && (value < high_bound)) 
		return value;
	else if(value >= high_bound)
		return((low_bound - 1) + (value - high_bound));	
	else
		return((high_bound + 1) - (low_bound - value));
}

// scale utility
template<class T>
TT_INLINE T tt_base::scale(T value, T inlow, T inhigh, T outlow, T outhigh)
{
	double inscale, outdiff;
	 
 	inscale = 1 / (inhigh - inlow);
 	outdiff = outhigh - outlow;
 	
	value = (value - inlow) * inscale;
	value = (value * outdiff) + outlow;
	return(value);											
}


};

#endif // TT_BASE_HEADER
