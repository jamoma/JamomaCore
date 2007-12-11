/* 
 * Jamoma FunctionLib: CosineFunction
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "CosineFunction.h"
#include <math.h>

CosineFunction::CosineFunction()
{
	;
}


CosineFunction::~CosineFunction()
{
	;
}


double CosineFunction::mapValue(double x)
{
	return cos(x);
}


JamomaError CosineFunction::setParameter(t_symbol *parameterName, double value)
{
	return JAMOMA_ERR_INVALID_PARAMETER;
}


JamomaError CosineFunction::getParameter(t_symbol *parameterName, double &value)
{
	return JAMOMA_ERR_INVALID_PARAMETER;
}

