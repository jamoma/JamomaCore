/* 
 * Jamoma DSP Library
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTDSP_H__
#define __TTDSP_H__


#define TTDSP_VERSION_STRING "0.6"


#ifdef TT_PLATFORM_WIN
	#ifdef TTDSP_EXPORTS
	#define TTDSP_EXPORT __declspec(dllexport)
	#else
	#ifdef TTSTATIC
	#define TTDSP_EXPORT
	#else
	#define TTDSP_EXPORT __declspec(dllimport)
	#endif
	#endif // _DLL_EXPORT

#else // TT_PLATFORM_MAC
	#ifdef TTDSP_EXPORTS
	#define TTDSP_EXPORT __attribute__((visibility("default")))
	#else
	#define TTDSP_EXPORT
	#endif
#endif

#include "TTFoundationAPI.h"
#include "TTAudioObject.h"
#include "TTAudioSignal.h"
#include "TTAudioSignalArray.h"


// Macros

#define TT_AUDIO_CONSTRUCTOR \
TTObjectPtr thisTTClass :: instantiate (TTSymbolPtr name, TTValue& arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( TT(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
\
thisTTClass :: thisTTClass (TTValue& arguments) : TTAudioObject(arguments)



#define TT_AUDIO_CONSTRUCTOR_EXPORT(theBinaryFileName) \
	\
	extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_ ## theBinaryFileName (void);\
	TTErr TTLoadJamomaExtension_ ## theBinaryFileName (void)\
	{\
		TTDSPInit();\
		thisTTClass :: registerClass(); \
		return kTTErrNone;\
	}\
	\
	TT_AUDIO_CONSTRUCTOR


/** A macro for setting up the class binding to the library in extension classes. 
 @param strname A C-string that names the object as it should be listed in the environment. */
#define TT_AUDIO_CLASS_SETUP(strname, tags, className)\
	\
	extern "C" TT_EXTENSION_EXPORT TTObject* instantiate ## className (TTSymbol*, TTValue& arguments); \
	\
	TTObject*  instantiate ## className (TTSymbol*, TTValue& arguments) \
	{\
		return new className (arguments);\
	}\
	\
	extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_ ## className (void);\
	TTErr TTLoadJamomaExtension_ ## className (void)\
	{\
		TTFoundationInit();\
		TTClassRegister(TT(strname), tags, & instantiate ## className);\
		return kTTErrNone;\
	}



// Prototypes

// init the dsp lib, and the foundation if needed
void TTDSP_EXPORT TTDSPInit(const char* pathToBinaries = NULL);

// Convenience methods so that casting is not a worry:
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioObjectPtr* returnedObjectPtr, TTValue& arguments);
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioSignalPtr* returnedObjectPtr, TTValue& arguments);
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioObjectPtr* returnedObjectPtr, const TTValue& arguments);
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioSignalPtr* returnedObjectPtr, const TTValue& arguments);
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioObjectPtr* returnedObjectPtr, const TTUInt16 arguments);
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioSignalPtr* returnedObjectPtr, const TTUInt16 arguments);
TTAudioObjectPtr TTDSP_EXPORT TTObjectReference(TTAudioObjectPtr anObject);
TTAudioSignalPtr TTDSP_EXPORT TTObjectReference(TTAudioSignalPtr anObject);
TTErr TTDSP_EXPORT TTObjectRelease(TTAudioObjectPtr* anObject);
TTErr TTDSP_EXPORT TTObjectRelease(TTAudioSignalPtr* anObject);


/**	Allocate memory with 16-byte alignment.  This memory must be freed using TTFree16()	*/
TTPtr TTMalloc16(size_t numBytes);

/**	Free 16-byte aligned memory alloc'd by TTMalloc16()	*/
void TTFree16(TTPtr ptr);


#endif // __TTDSP_H__
