/* 
 * Jamoma FunctionLib: LinearFunction
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TANHFUNCTION_H__
#define __TANHFUNCTION_H__

#include "FunctionLib.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class TanhFunction : FunctionLib{
	public:
		TanhFunction();						///< constructor
		~TanhFunction();					///< destructor - free memory, etc.
		
		double mapValue(double x);			///< map x to y
		// double lookupValue(double x);	///< map x to y using lookup table
		JamomaError setParameter(t_symbol *parameterName, long argc, t_atom *argv);
		JamomaError getParameter(t_symbol *parameterName, long *argc, t_atom **argv);
		
	private:
		
		void calculateOutputScaling(void);

		// ATTRIBUTES and private coefficients
		double width;					///< Parameter for function: y pow(x,pow(2,powerValue))	
		double offset;					///< k = pow(2,powerValue)
		double a;						///< Internal coefficient
		double b;						///< Internal coefficient
		double alpha;					///< Internal coefficient
		double beta;					///< Internal coefficient
};


#endif // __TANHFUNCTION_H__
