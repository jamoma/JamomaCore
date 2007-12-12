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
	offset = 0;
	b = 0.5*(offset+1);
	width = 1.;
	a = log(7.)/width;
}


TanhFunction::~TanhFunction()
{
	;
}


double TanhFunction::mapValue(double x)
{
	return tanh(a*(x-b));
}


JamomaError TanhFunction::setParameter(t_symbol *parameterName, long argc, t_atom *argv)
{
	if (parameterName==gensym("width")) {
		width = atom_getfloat(argv);
		if (width<=0)
			a = log(7.);
		else 
			a = log(7.)/width;
		return JAMOMA_ERR_NONE;
	}
	else if (parameterName==gensym("offset")) {
		offset = atom_getfloat(argv);
		b = 0.5*(offset+1);
		return JAMOMA_ERR_NONE;
	}
	else	
		return JAMOMA_ERR_INVALID_PARAMETER;
}


JamomaError TanhFunction::getParameter(t_symbol *parameterName, long *argc, t_atom **argv)
{
	if (parameterName==gensym("width")) {
		// This memory needs to be freed by the method calling this one
		*argv = (t_atom*)sysmem_newptr(sizeof(t_atom));
		atom_setfloat(*argv, width);
		*argc = 1;
		return JAMOMA_ERR_NONE;
	}
	else if (parameterName==gensym("offset")) {
		// This memory needs to be freed by the method calling this one
		*argv = (t_atom*)sysmem_newptr(sizeof(t_atom));
		atom_setfloat(*argv, offset);
		*argc = 1;
		return JAMOMA_ERR_NONE;
	}
	else
	{	
		*argc = 0;
		return JAMOMA_ERR_INVALID_PARAMETER;
	}
}

