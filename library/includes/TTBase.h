/*
 * Jamoma's lowest-level base class and related infrastructure
 * Copyright © 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#ifndef __TT_BASE_H__
#define __TT_BASE_H__

// Platform Sniffing
// Ideally the platform would already be set with a -D option to gcc...
#ifndef TT_PLATFORM_LINUX
	#ifndef TT_PLATFORM_IOS
		#ifndef TT_PLATFORM_WIN
			#ifdef WIN_VERSION
				#define TT_PLATFORM_WIN
			#else
				#ifndef TT_PLATFORM_MAC
					#define TT_PLATFORM_MAC
				#endif
			#endif
		#endif
	#endif
#endif

#include <algorithm>
#include <cstring>
#include <cmath>
#include <cstdlib>
#include <cstdio>
#include <iostream>
#include <string>
#include <vector>
#include <complex>
#include <sstream>
#include <iterator>
#include <stdexcept>

using namespace std;

#ifdef TT_PLATFORM_LINUX
#include <stdarg.h>
#endif

#ifdef TT_PLATFORM_WIN
	#include "windows.h"
	#include <time.h>

	#pragma warning(disable:4244) // to avoid possible data lost warning with MSVC

	#ifndef _CRT_SECURE_NO_WARNINGS
		#define _CRT_SECURE_NO_WARNINGS
	#endif
	#define snprintf _snprintf
	#ifdef TTFOUNDATION_EXPORTS
		#define TTFOUNDATION_EXPORT __declspec(dllexport)
	#else
		#ifdef TTSTATIC
			#define TTFOUNDATION_EXPORT
		#else
			#define TTFOUNDATION_EXPORT __declspec(dllimport)
		#endif
	#endif // _DLL_EXPORT

#else // TT_PLATFORM_MAC
	#ifdef TTFOUNDATION_EXPORTS
		#define TTFOUNDATION_EXPORT __attribute__((visibility("default")))
	#else
		#define TTFOUNDATION_EXPORT
	#endif
#endif


#ifndef NO
#define NO 0
#endif

#ifndef YES
#define YES 1
#endif


#ifdef TT_DEBUG
#define TT_ENABLE_ASSERTIONS
#endif

#ifdef TT_ENABLE_ASSERTIONS
#define TT_ASSERT(name, result) \
				if (!result) {\
					char* nullPtr = 0;\
					TTLogError("%s:%ld ASSERTION %s FAILED\n", __FILE__, __LINE__, #name );\
					*nullPtr = 1;\
				}
#else
#define TT_ASSERT(name, result) ((void)(0));
#endif


/****************************************************************************************************/
// Memory alignment

#if defined(_MSC_VER) || defined(__BORLANDC__)
#define TT_ALIGN_16 __declspec(align(16))
#else // assuming gcc
#define TT_ALIGN_16 __attribute__((aligned (16)))
#endif


/****************************************************************************************************/
// Type Definitions

// Note http://developer.apple.com/mac/library/documentation/Darwin/Conceptual/64bitPorting/MakingCode64-BitClean/MakingCode64-BitClean.html#//apple_ref/doc/uid/TP40001064-CH226-SW2

typedef bool				TTBoolean;			// same as Boolean on the Mac
typedef unsigned char		TTByte;
typedef char*				TTCString;
typedef const char*			TTImmutableCString;
typedef std::string			TTString;

typedef signed char			TTInt8;
typedef unsigned char		TTUInt8;
typedef signed short		TTInt16;
typedef unsigned short		TTUInt16;

#ifdef __LP64__		// Mac 64-bit
	typedef signed int			TTInt32;
	typedef unsigned int		TTUInt32;
#else				// Mac 32-bit, Win32 32-bit
	typedef signed long			TTInt32;
	typedef unsigned long		TTUInt32;
#endif

#if defined(_MSC_VER) || defined(__BORLANDC__)
	typedef __int64				TTInt64;
	typedef unsigned __int64	TTUInt64;
#else
	#if defined(__LP64__)	// Mac 64-bit
		typedef signed long			TTInt64;
		typedef unsigned long		TTUInt64;
	#else // Max 32-bit
		typedef signed long long	TTInt64;
		typedef unsigned long long	TTUInt64;
	#endif
#endif

#ifndef uint
#define uint unsigned int
#endif

typedef float					TTFloat32;
typedef double					TTFloat64;
typedef std::complex<double>	TTComplex;

/** A value representing a single audio sample.  TTSampleValue should be used any place a sample value is what the value represents.  This will enable us to change the type in the future if needed.  For example, to use 64-bit floats. */
typedef TTFloat64			TTSampleValue;

/** A TTSampleVector is simply a pointer to the first of an array of TTSampleValues. */
//typedef TTSampleValue*			TTSampleVector;
typedef std::vector<TTSampleValue>	TTSampleVector;
typedef TTSampleVector::iterator	TTSampleIter;

typedef TTSampleValue*				TTSampleValuePtr;
typedef TTSampleVector*				TTSampleVectorPtr;

/** A TTSampleMatrix is vector of TTSampleVectors. */
typedef std::vector<TTSampleVector>	TTSampleMatrix;
typedef TTSampleMatrix::iterator	TTSampleMatrixIter;

/** An integer that is the same size as a pointer.	*/
typedef long				TTPtrSizedInt;				// this works for both 32 and 64 bit code on the Mac

/** An integer that can be used for atomic operations. TODO: consider if other type should be used here	*/
#ifdef TT_PLATFORM_WIN
typedef TT_ALIGN_16 volatile int			TTAtomicInt;
typedef TT_ALIGN_16 volatile unsigned int	TTAtomicUInt;
#else
typedef TT_ALIGN_16 volatile int32_t		TTAtomicInt;
typedef TT_ALIGN_16 volatile u_int32_t		TTAtomicUInt;
#endif

/** A generic pointer. */
typedef void*				TTPtr;
typedef TTPtr*				TTHandle;

/**	A simple/generic function pointer with no args.	*/
typedef void (*TTFunctionPtr)();

/**	A simple/generic function pointer with one arg.	*/
typedef void (*TTFunctionWithArgPtr)(TTPtr);

/**	A simple/generic function pointer with one generic pointer (baton) and one TTValueRef.	*/
class TTValue;
typedef void (*TTFunctionWithBatonAndValue)(TTPtr, const TTValue&);
typedef std::vector<TTValue>	TTVector;
typedef TTVector::iterator		TTVectorIter;

/** Use for finding stuff in a list or a hash or a dictionary. */
typedef void (*TTFunctionMatch)(const TTValue& valueToCheck, TTPtr baton, TTBoolean& found);



/****************************************************************************************************/

/**	TTBlue Data Types
 *	Enumeration of data types used through out TTBlue, including the TTValue class and declaring the types of
 *	TTAttribute objects.																			*/
enum TTDataType{
	kTypeNone = 0,
	kTypeFloat32,
	kTypeFloat64,
	kTypeInt8,
	kTypeUInt8,
	kTypeInt16,
	kTypeUInt16,
	kTypeInt32,
	kTypeUInt32,
	kTypeInt64,
	kTypeUInt64,
	kTypeBoolean,
	kTypeSymbol,
	kTypeObject,
	kTypePointer,
	kTypeString,
	kTypeLocalValue,	///< This is a special type used by TTAttribute to indicate that a value is a TTValue and is locally maintained.
	kTypeMatrix,		///< An instance of a TTMatrix object
	kNumTTDataTypes
};


class TTSymbol;		// forward declaration
class TTDataInfo;
typedef TTDataInfo* TTDataInfoPtr;

/**	An array, indexed by values from TTDataType, containing information about those data types.	*/
extern TTFOUNDATION_EXPORT TTDataInfoPtr	ttDataTypeInfo[kNumTTDataTypes];


class TTFOUNDATION_EXPORT TTDataInfo {
public:
	TTSymbol*	name;			///< The name of the type as a symbol, e.g. float32, float64, etc.
	TTBoolean	isNumerical;	///< Is this type numeric?
	TTInt8		bitdepth;		///< Negative numbers indicate dynamic or unknown bitdepth.

	static TTDataInfoPtr getInfoForType(TTDataType type)
	{
		return ttDataTypeInfo[type];
	}

	static TTBoolean getIsNumerical(TTDataType type)
	{
		return ttDataTypeInfo[type]->isNumerical;
	}

	static void addDataInfoForType(TTDataType type);

};



/**	TTBlue Error Codes
 *	Enumeration of error codes that might be returned by any of the TTBlue functions and methods.	*/
enum TTErr {
	kTTErrNone = 0,			///< No Error.
	kTTErrGeneric,			///< Something went wrong, but what exactly is not known.  Typically used for context-specific problems.
	kTTErrAllocFailed,		///< Couldn't get memory.
	kTTErrFreeFailed,		///< Couldn't free memory.
	kTTErrInvalidType,		///< Bad DataType for the context.
	kTTErrInvalidAttribute,	///< Bad Attribute specified.
	kTTErrInvalidValue,		///< An inappropriate value was specified for an attribute or variable.
	kTTErrWrongNumValues,	///< The wrong number of values were passed to a method or attribute.
	kTTErrMethodNotFound,	///< Method not found.  Typically returned by the TTObject::sendMessage() function.
	kTTErrValueNotFound,	///< A value was not found when doing a look up for it (in a TTHash, TTList, or other class).
	kTTErrBadChannelConfig,	///< An invalid number of audio channels for a given context was encountered.
	kTTErrReadOnly			///< Attempted a write to a read-only entity.
};


/****************************************************************************************************/
// Class Specifications


class TTDeletePtr {
public:
	template<typename T>
	void operator()(T ptr)
	{
		delete ptr;
		ptr = NULL;
	}
};


/**	A TTBlue exception is thown with this object. */
class TTFOUNDATION_EXPORT TTException {
	TTImmutableCString	reason;
public:
	TTException(TTImmutableCString aReason)
	: reason(aReason)
	{}
};


#ifdef TT_PLATFORM_MAC
	#include <libkern/OSAtomic.h>
#elif defined (TT_PLATFORM_WIN)
	#pragma intrinsic (_InterlockedIncrement)
	#pragma intrinsic (_InterlockedDecrement)
	#pragma intrinsic (_InterlockedCompareExchange)
#endif

/**	The required base-class from which all TTBlue objects must inherit.
 	This object is the primary base-class for all TTBlue objects, including TTObject.
 	It does not define any real functionality.
	Instead it provides a way to group and work polymorphically with any class in TTBlue,
	including both TTValue and TTObject.													*/
class TTFOUNDATION_EXPORT TTBase {
public:
	TTBase();			///< Constructor.
	virtual ~TTBase();	///< Destructor.
	
	
	void TTAtomicIncrement(TTAtomicInt& value)
	{
#ifdef TT_PLATFORM_MAC
		OSAtomicIncrement32(&value);
#elif defined (TT_PLATFORM_WIN)
		_InterlockedIncrement((volatile long*)&value);
#else // what should we do for thread safety on Linux and iOS?
		value++;
#endif
	}
	
	void TTAtomicIncrement(TTAtomicUInt& value)
	{
#ifdef TT_PLATFORM_MAC
		OSAtomicIncrement32((int32_t*)&value);
#elif defined (TT_PLATFORM_WIN)
		_InterlockedIncrement((volatile long*)&value);
#else // what should we do for thread safety on Linux and iOS?
		value++;
#endif
	}
	
	void TTAtomicDecrement(TTAtomicInt& value)
	{
#ifdef TT_PLATFORM_MAC
		OSAtomicDecrement32(&value);
#elif defined (TT_PLATFORM_WIN)
		_InterlockedDecrement((volatile long*)&value);
#else // what should we do for thread safety on Linux and iOS?
		value--;
#endif
	}

	void TTAtomicDecrement(TTAtomicUInt& value)
	{
#ifdef TT_PLATFORM_MAC
		OSAtomicDecrement32((int32_t*)&value);
#elif defined (TT_PLATFORM_WIN)
		_InterlockedDecrement((volatile long*)&value);
#else // what should we do for thread safety on Linux and iOS?
		value--;
#endif
	}
	
	void TTAtomicAssign(TTAtomicInt& value, const TTAtomicInt& newValue, const TTAtomicInt& oldValue)
	{
#ifdef TT_PLATFORM_MAC
		OSAtomicCompareAndSwap32(oldValue, newValue, &value);
#elif defined (TT_PLATFORM_WIN)
		_InterlockedCompareExchange((volatile long*)&value, (long) newValue, (long) oldValue);
#else // what should we do for thread safety on Linux and iOS?
		value = newValue;
#endif
	}
	
	
	/**	Return the current system time in milliseconds.
		Although it is a global kind of function, we include it as a method of TTBase
		so that it can be defined in the header file and then inlined in other libraries.	*/
	TTFloat64 TTGetTimeInMilliseconds()
	{
		// On the Mac, CLOCKS_PER_SEC is 1000000, so we optimize
#if	CLOCKS_PER_SEC == 1000000
		return clock() / 1000.0;	
#else
		return (clock() * 1000.0) / CLOCKS_PER_SEC;
#endif
	}
	
	
	/**	Return the current system time in microseconds.	*/
	TTFloat64 TTGetTimeInMicroseconds()
	{
		// On the Mac, CLOCKS_PER_SEC is 1000000, so we optimize
#if	CLOCKS_PER_SEC == 1000000
		return clock();	
#else
		return (clock() * 1000000.0) / CLOCKS_PER_SEC;
#endif
	}
	
	
};


/**	Produces a random-valued 64-bit floating-point number in the range [0.0, 1.0]	*/
TTFOUNDATION_EXPORT TTFloat64 TTRandom64();



TTFOUNDATION_EXPORT extern const TTFloat32 kTTLookupEqualPower[];			///< Equal Power lookup table
TTFOUNDATION_EXPORT extern const TTFloat32 kTTLookupSquareRoot[];			///< Square Root lookup table
TTFOUNDATION_EXPORT extern const TTFloat32 kTTLookupHalfPaddedwWelch[];		///< 256 point window table (the first half of it)
TTFOUNDATION_EXPORT extern const TTFloat32 kTTLookupQuarterSine[];			///< Quarter Sine lookup table
TTFOUNDATION_EXPORT extern const TTFloat64 kTTPi;							///< pre-calculated value of pi
TTFOUNDATION_EXPORT extern const TTFloat64 kTTHalfPi;						///< pre-calculated value of pi/2
TTFOUNDATION_EXPORT extern const TTFloat64 kTTQuarterPi;					///< pre-calculated value of pi/2
TTFOUNDATION_EXPORT extern const TTFloat64 kTTTwoPi;						///< pre-calculated value of pi * 2
TTFOUNDATION_EXPORT extern const TTFloat64 kTTAntiDenormalValue;			///< constant used by the ttantidenormal function
TTFOUNDATION_EXPORT extern const TTFloat64 kTTSqrt2;						///< pre-calculated square-root of 2
TTFOUNDATION_EXPORT extern const TTFloat64 kTTHalfSqrt2;
TTFOUNDATION_EXPORT extern const TTFloat64 kTTTwoSqrt2;
TTFOUNDATION_EXPORT extern const TTFloat64 kTTEpsilon;						///< a very very small value
TTFOUNDATION_EXPORT extern const TTFloat64 kTTRadiansToDegrees;
TTFOUNDATION_EXPORT extern const TTFloat64 kTTDegreesToRadians;
TTFOUNDATION_EXPORT extern const TTFloat64 kTTGainMidiPower;
TTFOUNDATION_EXPORT extern const TTFloat64 kTTGainMidiPowerInv;
TTFOUNDATION_EXPORT extern const TTFloat64 kTTInv255;

/** Platform and host independent method for posting messages. */
void TTFOUNDATION_EXPORT TTLogMessage(TTImmutableCString message, ...);

/** Platform and host independent method for posting messages. */
void TTFOUNDATION_EXPORT TTLogWarning(TTImmutableCString message, ...);

/** Platform and host independent method for posting errors. */
void TTFOUNDATION_EXPORT TTLogError(TTImmutableCString message, ...);

/** Platform and host independent method for posting messages only when debugging is enabled in the environment. */
void TTFOUNDATION_EXPORT TTLogDebug(TTImmutableCString message, ...);




#endif // __TT_BASE_H__
