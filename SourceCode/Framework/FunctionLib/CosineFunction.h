/* 
 * Jamoma FunctionLib: CosineFunction
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __COSINEFUNCTION_H__
#define __COSINEFUNCTION_H__

#include "FunctionLib.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class CosineFunction : FunctionLib{
	public:
		CosineFunction();
		~CosineFunction();
		
		// ATTRIBUTES
		double mapValue(double x);
		// double lookupValue(double x);
		
};


#endif // __TANHFUNCTION_H__
