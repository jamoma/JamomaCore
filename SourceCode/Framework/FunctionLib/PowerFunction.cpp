/* 
 * Jamoma FunctionLib: PowerFunction
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "PowerFunction.h"


PowerFunction::PowerFunction()
{
	powerValue=0;
	k = 1;
}


PowerFunction::~PowerFunction()
{
	;
}


double PowerFunction::mapValue(double x)
{
	return pow(x,k);
}


JamomaError PowerFunction::setParameter(t_symbol *parameterName, double value)
{
	if (parameterName==gensym("powerValue")) {
		powerValue = value;
		k = pow(2,value);
		return JAMOMA_ERR_NONE;
	}
	else	
		return JAMOMA_ERR_INVALID_PARAMETER;
}


JamomaError PowerFunction::getParameter(t_symbol *parameterName, double &value)
{
	if (parameterName==gensym("powerValue")) {
		value = powerValue;
		return JAMOMA_ERR_NONE;
	}
	else	
		return JAMOMA_ERR_INVALID_PARAMETER;
}

