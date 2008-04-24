/* 
 * Jamoma FunctionLib: LinearFunction
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "LinearFunction.h"


LinearFunction::LinearFunction()
	: FunctionUnit("function.linear")
{
	;
}


LinearFunction::~LinearFunction()
{
	;
}


double LinearFunction::map(double x)
{
	return x;
}

