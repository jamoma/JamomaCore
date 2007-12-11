/* 
 * Jamoma FunctionLib: LinearFunction
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "LinearFunction.h"


LinearFunction::LinearFunction()
{
	;
}


LinearFunction::~LinearFunction()
{
	;
}


double LinearFunction::mapValue(double x)
{
	return x;
}


JamomaError LinearFunction::setParameter(t_symbol *parameterName, long argc, t_atom *argv)
{
	return JAMOMA_ERR_INVALID_PARAMETER;
}


JamomaError LinearFunction::getParameter(t_symbol *parameterName, long *argc, t_atom **argv)
{
	return JAMOMA_ERR_INVALID_PARAMETER;
}

