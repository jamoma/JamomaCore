/* 
 *	TTClassWrapperMax
 *	An automated class wrapper to make TTBlue object's available as objects for Max/MSP
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_CLASS_WRAPPER_MAX_H__
#define __TT_CLASS_WRAPPER_MAX_H__

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "TTBlueAPI.h"				// TTBlue Interfaces...



// TYPE DEFINITIONS

typedef t_class*	ClassPtr;
typedef t_object*	ObjectPtr;
typedef t_symbol*	SymbolPtr;
typedef t_atom*		AtomPtr;
typedef long		AtomCount;

typedef TTErr (*TTValidityCheckFunction)(const TTPtr data);		///< A type that can be used to store a pointer to a validity checking function.

typedef struct _wrappedClass {
	ClassPtr				maxClass;							///< The Max class pointer.
	SymbolPtr				maxClassName;						///< The name to give the Max class.
	TTSymbolPtr				ttblueClassName;					///< The name of the class as registered with the TTBlue framework.
	TTValidityCheckFunction validityCheck;						///< A function to call to validate the context for an object before it is instantiated.
	TTPtr					validityCheckArgument;				///< An argument to pass to the validityCheck function when it is called.
} WrappedClass;
typedef WrappedClass* WrappedClassPtr;							///< A pointer to a WrappedClass.



// FUNCTIONS

// Wrap a TTBlue class as a Max class.
TTErr wrapTTClassAsMaxClass(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c);

// This version can be passed a method that is called to make sure it is legit to instantiate the class.
TTErr wrapTTClassAsMaxClass(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument);



#endif // __TT_CLASS_WRAPPER_MAX_H__
