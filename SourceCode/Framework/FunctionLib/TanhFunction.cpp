/* 
 * Jamoma FunctionLib: LinearFunction
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TanhFunction.h"
#include <math.h>

TanhFunction::TanhFunction()
{
	;
}


TanhFunction::~TanhFunction()
{
	;
}


double TanhFunction::mapValue(double x)
{
	return tanh(x);
}


JamomaError TanhFunction::setParameter(t_symbol *parameterName, double value)
{
	return JAMOMA_ERR_INVALID_PARAMETER;
}


JamomaError TanhFunction::getParameter(t_symbol *parameterName, double &value)
{
	return JAMOMA_ERR_INVALID_PARAMETER;
}

