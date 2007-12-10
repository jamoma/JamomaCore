/* 
 * Jamoma FunctionLib: LinearFunction
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __LINEARFUNCTION_H__
#define __LINEARFUNCTION_H__

#include "FunctionLib.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class LinearFunction : FunctionLib{
	public:
		LinearFunction();				///< constructor
		~LinearFunction();				///< destructor - free memory, etc.
		
		// ATTRIBUTES
		double mapValue(double x) = 0;	///< map x to y
		// double lookupValue(double x);///< map x to y using lookup table
		JamomaError setParameter(t_symbol *parameterName, double value);
		JamomaError getParameter(t_symbol *parameterName, double &value);
};


#endif // __LINEARFUNCTION_H__
