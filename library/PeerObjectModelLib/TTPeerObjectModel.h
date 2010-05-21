/* 
 * TTPOM Library
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_POM_H__
#define __TT_POM_H__

#define TTPOM_VERSION_STRING "0.1"


#ifdef TT_PLATFORM_WIN
	#ifdef TTPOM_EXPORTS
	#define TTPOM_EXPORT __declspec(dllexport)
	#else
	#ifdef TTSTATIC
	#define TTPOM_EXPORT
	#else
	#define TTPOM_EXPORT __declspec(dllimport)
	#endif
	#endif // _DLL_EXPORT

#else // TT_PLATFORM_MAC
	#ifdef TTPOM_EXPORTS
	#define TTPOM_EXPORT __attribute__((visibility("default")))
	#else
	#define TTPOM_EXPORT
	#endif
#endif

#include "TTNode.h"
#include "TTNodeDirectory.h"
#include "TTSubscriber.h"
#include "TTContainer.h"
#include "TTParameter.h"
#include "TTSender.h"
#include "TTReceiver.h"
#include "TTMapper.h"
#include "TTPreset.h"

// Macros

#define TT_POM_CONSTRUCTOR \
TTObjectPtr thisTTClass :: instantiate (TTSymbolPtr name, TTValue& arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( TT(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
\
thisTTClass :: thisTTClass (TTValue& arguments) : TTObject(arguments)



#define TT_POM_CONSTRUCTOR_EXPORT \
	\
	extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void);\
	TTErr loadTTExtension(void)\
	{\
		TTPOMInit();\
		thisTTClass :: registerClass(); \
		return kTTErrNone;\
	}\
	\
	TT_POM_CONSTRUCTOR


/** A macro for setting up the class binding to the library in extension classes. 
 @param strname A C-string that names the object as it should be listed in the environment. */
#define TT_POM_CLASS_SETUP(strname, tags, className)\
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
void TTPOM_EXPORT TTPOMInit();


/**	Allocate memory with 16-byte alignment.  This memory must be freed using TTFree16()	*/
TTPtr TTMalloc16(size_t numBytes);

/**	Free 16-byte aligned memory alloc'd by TTMalloc16()	*/
void TTFree16(TTPtr ptr);


#endif // __TT_POM_H__
