/* 
 *	TTClassWrapperMax
 *	An automated class wrapper to make TTBlue object's available as objects for Max/MSP
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_GRAPHICS_CLASS_WRAPPER_MAX_H__
#define __TT_GRAPHICS_CLASS_WRAPPER_MAX_H__

#include "ext.h"
#include "ext_obex.h"
#include "ext_user.h"
#include "ext_common.h"
#include "jpatcher_api.h"			// jpatcher_api.h must come before z_dsp.h
#include "jgraphics.h"
#include "TTClassWrapperMax.h"
#include "ext_hashtab.h"
#include "TTGraphics.h"				// Jamoma Graphics API


// FUNCTIONS

// Wrap a TTBlue class as a Max class.
TTErr wrapTTClassAsMaxUIClass(TTSymbol ttblueClassName, char* maxClassName, WrappedClassPtr* c);

// This version can be passed a method that is called to make sure it is legit to instantiate the class.
TTErr wrapTTClassAsMaxUIClass(TTSymbol ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck);

// This version can be passed a method that is called to make sure it is legit to instantiate the class.
TTErr wrapTTClassAsMaxUIClass(TTSymbol ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument);


// These are versions of the above, but for which additional options can be specified.
TTErr wrapTTClassAsMaxUIClass(TTSymbol ttblueClassName, char* maxClassName, WrappedClassPtr* c, WrappedClassOptionsPtr options);
TTErr wrapTTClassAsMaxUIClass(TTSymbol ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, WrappedClassOptionsPtr options);
TTErr wrapTTClassAsMaxUIClass(TTSymbol ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument, WrappedClassOptionsPtr options);



#endif // __TT_GRAPHICS_CLASS_WRAPPER_MAX_H__
