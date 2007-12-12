/* 
 * Jamoma FunctionLib: PowerFunction
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "PowerFunction.h"


PowerFunction::PowerFunction()
: powerValue(0.), k(1.)
{
}


PowerFunction::~PowerFunction()
{
	;
}


double PowerFunction::mapValue(double x)
{
	double y, sign;	
	
	if (symmetryMode==gensym("point")) {
		y = 2*x-1;
		if (y<0)
			sign=-1;
		else
			sign=1;
		return 0.5*(sign*pow(fabs(y),k)+1);
	}
	else if (symmetryMode==gensym("axis"))
		return pow(fabs(2*x-1),k);
	else 
		return pow(x,k);
}


JamomaError PowerFunction::setParameter(t_symbol *parameterName, long argc, t_atom *argv)
{
	if (parameterName==gensym("powerValue")) {
		powerValue = atom_getfloat(argv);
		k = pow(2,powerValue);
		return JAMOMA_ERR_NONE;
	}
	else if (parameterName==gensym("symmetry")) {
		symmetryMode = atom_getsym(argv);
		// Default mode is "none"
		if((atom_getsym(argv) != gensym("point")) && (atom_getsym(argv) != gensym("axis")))
			symmetryMode = gensym("none");
		return JAMOMA_ERR_NONE;
	}
	else	
		return JAMOMA_ERR_INVALID_PARAMETER;
}


JamomaError PowerFunction::getParameter(t_symbol *parameterName, long *argc, t_atom **argv)
{
	if (parameterName==gensym("powerValue")) {
		*argv = (t_atom*)sysmem_newptr(sizeof(t_atom));
		atom_setfloat(*argv, powerValue);
		*argc = 1;
		return JAMOMA_ERR_NONE;
	}
	else if (parameterName==gensym("symmetry")) {
		// This memory needs to be freed by the method callong this one
		*argv = (t_atom*)sysmem_newptr(sizeof(t_atom));
		atom_setsym(*argv, symmetryMode);
		*argc = 1;
		return JAMOMA_ERR_NONE;
	}
	else
	{	
		*argc = 0;
		return JAMOMA_ERR_INVALID_PARAMETER;
	}
}