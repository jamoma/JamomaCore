/* 
 * Jamoma FunctionLib: CosineFunction
 * Copyright © 2007 by Dave Watson
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "CosineFunction.h"
#include <math.h>


CosineFunction::CosineFunction()
	: FunctionUnit("function.cosine")
{
	;
}


CosineFunction::~CosineFunction()
{
	;
}


double CosineFunction::map(double x)
{
	return(-0.5 * cos(x * kTTPi) + 0.5);
}

