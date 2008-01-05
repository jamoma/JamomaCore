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


/****************************************************************************************************/
// Class Specifications

/**
	The global object maintains all global parameters/settings for the TTBlue environment.
*/
class TTGlobal : public TTObject {
private:
	

public:
	TTGlobal();
	virtual ~TTGlobal();

	TTErr getVersion(TTValue &value);
};


#endif // __TT_GLOBAL_H__

