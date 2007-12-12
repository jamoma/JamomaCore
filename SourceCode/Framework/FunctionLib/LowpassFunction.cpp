/* 
 * Jamoma FunctionLib: LowpassFunction
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "LowpassFunction.h"


LowpassFunction::LowpassFunction()
{
	coefficient = 0.75;
	one_minus_coefficient = 0.25;
	feedback = 0.0;
}


LowpassFunction::~LowpassFunction()
{
	;
}


double LowpassFunction::mapValue(double x)
{
	feedback = jamoma_anti_denormal((x * coefficient) + (feedback * one_minus_coefficient));
	return feedback;
}


JamomaError LowpassFunction::setParameter(t_symbol *parameterName, long argc, t_atom *argv)
{
	if (parameterName==gensym("coefficient")) {
		coefficient = atom_getfloat(argv);
		one_minus_coefficient = 1.0 - coefficient;
		return JAMOMA_ERR_NONE;
	}
	else if (parameterName==gensym("feedback")) {	// use this one to 'clear' the filter history by sending a 0.0
		feedback = atom_getfloat(argv);
		return JAMOMA_ERR_NONE;
	}
	else
		return JAMOMA_ERR_INVALID_PARAMETER;
}


JamomaError LowpassFunction::getParameter(t_symbol *parameterName, long *argc, t_atom **argv)
{
	if (parameterName==gensym("coefficient")) {
		*argv = (t_atom*)sysmem_newptr(sizeof(t_atom));
		atom_setfloat(*argv, coefficient);
		*argc = 1;
		return JAMOMA_ERR_NONE;
	}
	else{	
		*argc = 0;
		return JAMOMA_ERR_INVALID_PARAMETER;
	}
}
