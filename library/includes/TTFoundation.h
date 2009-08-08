/* 
 * TTBlue Library
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_BLUE_H__
#define __TT_BLUE_H__

#define TTFOUNDATION_VERSION_STRING "0.6"

#include "TTElement.h"
#include "TTThread.h"
#include "TTSymbolCache.h"
#include "TTValueCache.h"


/*
	If we could do virtual static methods then we would.  But we can't.
	So enforce the static register() and instantiate() methods we will use the macros to
	define our classes.
 
	This also enforces the protection of the constructor and destructor methods so that they
	cannot be manipulated directly.
 */

#define TT_DATA_CONSTRUCTOR \
TTObjectPtr thisTTClass :: instantiate (TTSymbolPtr name, TTValue& arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( TT(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
\
thisTTClass :: thisTTClass (TTValue& arguments) : TTDataObject(arguments)


#define TT_OBJECT_CONSTRUCTOR \
TTObjectPtr thisTTClass :: instantiate (TTSymbolPtr name, TTValue& arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( TT(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
\
thisTTClass :: thisTTClass (TTValue& arguments) : TTObject(arguments)


#define TTCLASS_SETUP(className)												\
		friend class TTEnvironment;												\
	public:																		\
		static void registerClass();											\
	protected:																	\
		static TTObjectPtr instantiate (TTSymbolPtr name, TTValue& arguments);	\
		/** Constructor */														\
		className (TTValue& arguments);											\
		/** Destructor */														\
		virtual ~ className ();													\



void TTEXPORT TTFoundationInit();


#endif // __TT_BLUE_H__
