/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __FUNCTIONLIB_H__
#define __FUNCTIONLIB_H__

#include "TTObject.h"
#include "JamomaTypes.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class FunctionUnit : public TTObject {
public:
	/** constructor */
	FunctionUnit(const char* functionName);
	
	/** destructor */
	virtual ~FunctionUnit();
			
	/** map x to y */
	virtual double map(double x) = 0;
	
	/** map x to y using lookup table */
	// double lookupValue(double x);		
};


class FunctionLib {
public:
	/** Instantiate a function by name */
	static JamomaError createUnit(const TTSymbol& unitName, FunctionUnit **unit);

	/**	Return a list of all available functions. */
	static void getUnitNames(TTValue& unitNames);
};


#endif // __FUNCTIONLIB_H__
