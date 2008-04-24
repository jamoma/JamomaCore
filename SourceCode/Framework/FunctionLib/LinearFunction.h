/* 
 * Jamoma FunctionLib: LinearFunction
 * Copyright © 2007 by Tim Place
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
class LinearFunction : public FunctionUnit{
public:
	LinearFunction();
	~LinearFunction();

	double map(double x);
	// double lookupValue(double x);
};


#endif // __LINEARFUNCTION_H__
