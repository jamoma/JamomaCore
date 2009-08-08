/* 
 * TTBlue Library
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTDSP_H__
#define __TTDSP_H__

#include "TTFoundationAPI.h"
#include "TTAudioObject.h"
#include "TTAudioSignal.h"
#include "TTAudioSignalArray.h"

#define TTDSP_VERSION_STRING "0.6"



// Macros

#define TT_AUDIO_CONSTRUCTOR \
TTObjectPtr thisTTClass :: instantiate (TTSymbolPtr name, TTValue& arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( TT(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
\
thisTTClass :: thisTTClass (TTValue& arguments) : TTAudioObject(arguments)



#define TT_AUDIO_CONSTRUCTOR_EXPORT \
	\
	extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void);\
	TTErr loadTTExtension(void)\
	{\
		TTDSPInit();\
		thisTTClass :: registerClass(); \
		return kTTErrNone;\
	}\
	\
	TT_AUDIO_CONSTRUCTOR



#define TTAUDIOCLASS(arg) \
	class arg : TTAudioObject { \
		TTCLASS_SETUP(arg)


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
	extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void);\
	TTErr loadTTExtension(void)\
	{\
		TTFoundationInit();\
		TTClassRegister(TT(strname), tags, & instantiate ## className);\
		return kTTErrNone;\
	}



// Prototypes

// init the dsp lib, and the foundation if needed
void TTEXPORT TTDSPInit();

// Convenience methods so that casting is not a worry:
TTErr TTEXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioObjectPtr* returnedObjectPtr, TTValue& arguments);
TTErr TTEXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioSignalPtr* returnedObjectPtr, TTValue& arguments);
TTErr TTEXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioObjectPtr* returnedObjectPtr, const TTValue& arguments);
TTErr TTEXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioSignalPtr* returnedObjectPtr, const TTValue& arguments);
TTErr TTEXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioObjectPtr* returnedObjectPtr, const TTUInt16 arguments);
TTErr TTEXPORT TTObjectInstantiate(const TTSymbolPtr className, TTAudioSignalPtr* returnedObjectPtr, const TTUInt16 arguments);
TTAudioObjectPtr TTEXPORT TTObjectReference(TTAudioObjectPtr anObject);
TTAudioSignalPtr TTEXPORT TTObjectReference(TTAudioSignalPtr anObject);
TTErr TTEXPORT TTObjectRelease(TTAudioObjectPtr* anObject);
TTErr TTEXPORT TTObjectRelease(TTAudioSignalPtr* anObject);


#endif // __TTDSP_H__
