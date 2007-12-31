/* 
 * TTBlue Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SYMBOL_H__
#define __TT_SYMBOL_H__

#include "TTBase.h"

/****************************************************************************************************/
// Class Specification

class TTSymbol : TTBase {
private:
	char	*string;

public:
	TTSymbol(char *name);
	virtual ~TTSymbol();

	const char*	getString();
	TTBoolean	compare(TTString &anotherString);
};


#endif // __TT_SYMBOL_H__

