/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Jamoma DSP Library
 *
 * @details
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
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
TTObjectPtr thisTTClass :: instantiate (TTSymbol& name, TTValue& arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( thisTTClassName, thisTTClassTags, thisTTClass :: instantiate );} \
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
 @param strname		A C-string that names the object as it should be listed in the environment.
 @param tags		The tags associated with the class.
 @param className	The name of the class.
 */
#define TT_AUDIO_CLASS_SETUP(strname, tags, className)\
	\
	extern "C" TT_EXTENSION_EXPORT TTObject* instantiate ## className (const TTSymbol&, TTValue& arguments); \
	\
	TTObject*  instantiate ## className (TTSymbol&, TTValue& arguments) \
	{\
		return new className (arguments);\
	}\
	\
	extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_ ## className (void);\
	TTErr TTLoadJamomaExtension_ ## className (void)\
	{\
		TTFoundationInit();\
		TTClassRegister(strname, tags, & instantiate ## className);\
		return kTTErrNone;\
	}



// Prototypes

/** Initialise the Jamoma DSP library, as well as Jamoma Foundation foundation if needed.
 @param pathToBinaries	The file path to the location of the binaries.
 */
void TTDSP_EXPORT TTDSPInit(const char* pathToBinaries = NULL);



///// Convenience methods so that casting is not a worry: /////

/** Instantiate an object.
 @param className			The name of the class of the object
 @param returnedObjectPtr	Pointer to the newly instantiated object
 @param arguments			Additional arguments
 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
 */
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbol& className, TTAudioObjectPtr* returnedObjectPtr, TTValue& arguments);
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbol& className, TTAudioSignalPtr* returnedObjectPtr, TTValue& arguments);
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbol& className, TTAudioObjectPtr* returnedObjectPtr, const TTValue& arguments);
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbol& className, TTAudioSignalPtr* returnedObjectPtr, const TTValue& arguments);
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbol& className, TTAudioObjectPtr* returnedObjectPtr, const TTUInt16 arguments);
TTErr TTDSP_EXPORT TTObjectInstantiate(const TTSymbol& className, TTAudioSignalPtr* returnedObjectPtr, const TTUInt16 arguments);


/** Create a reference to an object.
 @param anObject		The object that we want to reference.
 @return				Pointer to the object.
 */
TTAudioObjectPtr TTDSP_EXPORT TTObjectReference(TTAudioObjectPtr anObject);
TTAudioSignalPtr TTDSP_EXPORT TTObjectReference(TTAudioSignalPtr anObject);


/** Release (destroy) an object.
 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
 */
TTErr TTDSP_EXPORT TTObjectRelease(TTAudioObjectPtr* anObject);
TTErr TTDSP_EXPORT TTObjectRelease(TTAudioSignalPtr* anObject);




// TODO: WHy are the following two methods declared in Jamoma DSP rather than Jamoma Foundation?
// This seems to be the kind of low-leven non-fun stuff that Foundation is supposed to take care of? [TL]

/**	Allocate memory with 16-byte alignment.  This memory must be freed using TTFree16()
 @param numBytes	The number of bytes to be allocated.
 @return			Pointer to the allocated memory.
 */
TTPtr TTMalloc16(size_t numBytes);


/**	Free 16-byte aligned memory alloc'd by TTMalloc16().
 @param ptr			Pointer to the memory to be freed.
 */
void TTFree16(TTPtr ptr);


#endif // __TTDSP_H__
