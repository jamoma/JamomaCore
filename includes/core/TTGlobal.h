/* 
 * TTBlue Global Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_GLOBAL_H__
#define __TT_GLOBAL_H__

#include "TTObject.h"

// Forward Declarations
class TTSymbolTable;
class TTGlobal;

// The global instance of the symbol table
//TTSymbolTable*	ttSymbolTable = NULL;		///< The global table of symbols

// The global instance of the global object
extern TTGlobal*	ttGlobalObject;


/****************************************************************************************************/
// Class Specifications

/**
	The global object maintains all global attributes/settings for the TTBlue environment.
*/
class TTEXPORT TTGlobal : public TTObject {
private:
	

public:
	TTGlobal();
	virtual ~TTGlobal();

	TTErr getVersion(const TTSymbol&, TTValue &value);
};


#endif // __TT_GLOBAL_H__

