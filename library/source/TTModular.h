/* 
 * TTModular Library
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_MODULAR_H__
#define __TT_MODULAR_H__

#define TTMODULAR_VERSION_STRING "0.1"


#ifdef TT_PLATFORM_WIN
#include "windows.h"
	#ifdef TTMODULAR_EXPORTS
	#define TTMODULAR_EXPORT __declspec(dllexport)
	#else
	#ifdef TTSTATIC
	#define TTMODULAR_EXPORT
	#else
	#define TTMODULAR_EXPORT __declspec(dllimport)
	#endif
	#endif // _DLL_EXPORT

#else // TT_PLATFORM_MAC
	#ifdef TTMODULAR_EXPORTS
	#define TTMODULAR_EXPORT __attribute__((visibility("default")))
	#else
	#define TTMODULAR_EXPORT
	#endif
#endif

#include <math.h>

#include "TTFoundationAPI.h"		// TTBlue Headers...

#include "TTNode.h"
#include "TTNodeDirectory.h"

#include "TTModularSymbolCache.h"

#include "TTSubscriber.h"
#include "TTContainer.h"
#include "TTParameter.h"
#include "TTSender.h"
#include "TTReceiver.h"
#include "TTMapper.h"
#include "TTPreset.h"
#include "TTDeviceManager.h"

// Macros

#define TT_MODULAR_CONSTRUCTOR \
TTObjectPtr thisTTClass :: instantiate (TTSymbolPtr name, TTValue& arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( TT(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
\
thisTTClass :: thisTTClass (TTValue& arguments) : TTObject(arguments)



#define TT_MODULAR_CONSTRUCTOR_EXPORT \
	\
	extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void);\
	TTErr loadTTExtension(void)\
	{\
		TTModularInit();\
		thisTTClass :: registerClass(); \
		return kTTErrNone;\
	}\
	\
	TT_MODULAR_CONSTRUCTOR


// Global
extern TTMODULAR_EXPORT TTNodeDirectoryPtr TTModularDirectory;

// Prototypes
// init the modular lib, and the foundation if needed
void TTMODULAR_EXPORT TTModularInit(TTString appName);

#endif // __TT_MODULAR_H__
