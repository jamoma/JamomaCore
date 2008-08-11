/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __FUNCTIONLIB_H__
#define __FUNCTIONLIB_H__

#include "TTBlueAPI.h"
#include "JamomaTypes.h"


/****************************************************************************************************/
// Class Specification


class JAMOMA_EXPORT FunctionLib {
public:
	/** Instantiate a function by name */
	static TTErr createUnit(const TTSymbolPtr unitName, TTAudioObject **unit);

	/**	Return a list of all available functions. */
	static void getUnitNames(TTValue& unitNames);
};


#endif // __FUNCTIONLIB_H__
