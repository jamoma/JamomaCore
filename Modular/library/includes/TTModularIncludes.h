/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTModular Library
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright Copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MODULAR_INCLUDES_H__
#define __TT_MODULAR_INCLUDES_H__

#define TTMODULAR_VERSION_STRING "0.1"
#define TTMODULAR_XML_ENCODING "ISO-8859-1"

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

#include "TTFoundationAPI.h"

#ifndef TT_NO_DSP
#include "TTDSP.h"
#endif

#include "TTNode.h"
#include "TTNodeDirectory.h"
#include "TTAddressItem.h"

#include "TTModularSymbolCache.h"

#include "TTRegex.h"

#include "Protocol.h"
#include "Scheduler.h"

#include "TTApplication.h"
#include "TTApplicationManager.h"
#include "TTContainer.h"
#include "TTCue.h"
#include "TTCueManager.h"
#include "TTData.h"
#include "TTExplorer.h"
#include "TTMapper.h"
#include "TTMapperManager.h"
#include "TTMirror.h"
#include "TTPreset.h"
#include "TTPresetManager.h"
#include "TTRamp.h"
#include "TTReceiver.h"
#include "TTSender.h"
#include "TTScript.h"
#include "TTSubscriber.h"
#include "TTTextHandler.h"
#include "TTViewer.h"
#include "TTXmlHandler.h"

// Macros

#define TT_MODULAR_CONSTRUCTOR \
TTObjectBasePtr thisTTClass :: instantiate (TTSymbol name, TTValue arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( TTSymbol(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
\
thisTTClass :: thisTTClass (const TTValue& arguments) : TTDataObjectBase(arguments)



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

#endif // __TT_MODULAR_INCLUDES_H__
