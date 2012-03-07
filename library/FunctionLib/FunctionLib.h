/**
 * \file FunctionLib.h
 * Jamoma FunctionLib Base Class
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __FUNCTIONLIB_H__
#define __FUNCTIONLIB_H__

#include "TTFoundationAPI.h"
#include "JamomaTypes.h"


/****************************************************************************************************/
// Class Specification


class JAMOMA_EXPORT FunctionLib {
public:
	/** Instantiate a function by name.
	 @param unitName	The name of the unit.
	 @param unit		Pointer to the unit.
	 */
	static TTErr createUnit(const TTSymbolPtr unitName, TTObject **unit);

	/**	Return a list of all available functions. */
	static void getUnitNames(TTValue& unitNames);
};


#endif // __FUNCTIONLIB_H__
