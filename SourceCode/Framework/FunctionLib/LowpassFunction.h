/* 
 * Jamoma FunctionLib: LowpassFunction
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __LOWPASSFUNCTION_H__
#define __LOWPASSFUNCTION_H__

#include "FunctionLib.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class LowpassFunction : FunctionLib{
	public:
		LowpassFunction();
		~LowpassFunction();
		
		// ATTRIBUTES
		double mapValue(double x);
		// double lookupValue(double x);

		/** use the 'feedback' parameter to 'clear' the filter history by sending a 0.0 */
		JamomaError setParameter(t_symbol *parameterName, long argc, t_atom *argv);
		JamomaError getParameter(t_symbol *parameterName, long *argc, t_atom **argv);
		JamomaError getFunctionParameters(long *argc, t_atom **argv);
		
	private:
		double		coefficient;
		double		one_minus_coefficient;
		double		feedback;
};


#endif // __LOWPASSFUNCTION_H__
