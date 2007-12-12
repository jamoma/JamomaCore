/* 
 * Jamoma FunctionLib: PowerFunction
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __POWERFUNCTION_H__
#define __POWERFUNCTION_H__

#include "FunctionLib.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class PowerFunction : FunctionLib{
	public:
		PowerFunction();					///< constructor
		~PowerFunction();					///< destructor - free memory, etc.
		
		// ATTRIBUTES
		double mapValue(double x);			///< map x to y
		// double lookupValue(double x);	///< map x to y using lookup table

		JamomaError setParameter(t_symbol *parameterName, long argc, t_atom *argv);
		JamomaError getParameter(t_symbol *parameterName, long *argc, t_atom **argv);
		
	private:
		
		double powerValue;					///< Parameter for function: y pow(x,pow(2,powerValue))	
		double k;							///< k = pow(2,powerValue)
		t_symbol *symmetryMode;				///< Mode: none, point or axis
};


#endif // __POWERFUNCTION_H__
