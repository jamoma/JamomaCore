/* 
 * TTBlue Library
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_BLUE_API_H__
#define __TT_BLUE_API_H__

// CORE
#include "TTBlue.h"
#include "TTAudioObject.h"
#include "TTAudioSignal.h"
#include "TTDataObject.h"
#include "TTEnvironment.h"
#include "TTHash.h"
#include "TTList.h"
#include "TTMutex.h"
#include "TTObject.h"
#include "TTQueue.h"
#include "TTSymbol.h"
#include "TTSymbolTable.h"
#include "TTValue.h"

#ifdef TT_PLATFORM_WIN
#define TT_EXTENSION_EXPORT __declspec(dllexport)
#else
#define TT_EXTENSION_EXPORT
#endif


/** A macro for setting up the class binding to the library in extension classes. 
	@param strname A C-string that names the object as it should be listed in the environment. */
#define TT_CLASS_SETUP(strname, tags, className)\
\
extern "C" TT_EXTENSION_EXPORT TTObject* instantiate ## className (TTSymbol*, TTValue& arguments); \
TTObject*  instantiate ## className (TTSymbol*, TTValue& arguments) \
{\
TTUInt16 numChannels = 1;\
if(arguments.getSize())\
numChannels = arguments;\
return new TTClipper(numChannels);\
}\
\
extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void);\
TTErr loadTTExtension(void)\
{\
TTBlueInit();\
TTClassRegister(TT(strname), tags, & instantiate ## className);\
return kTTErrNone;\
}


#endif // __TT_BLUE_API_H__
