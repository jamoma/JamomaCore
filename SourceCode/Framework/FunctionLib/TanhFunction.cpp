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
	calculateOutputScaling();
}


TanhFunction::~TanhFunction()
{
	;
}


double TanhFunction::mapValue(double x)
{
	return alpha*(tanh(a*(x-b)) - beta);
}


JamomaError TanhFunction::setParameter(t_symbol *parameterName, long argc, t_atom *argv)
{
	if (parameterName==gensym("width")) {
		width = atom_getfloat(argv);
		if (width<=0)
			a = log(7.);
		else 
			a = log(7.)/width;
		calculateOutputScaling();
		return JAMOMA_ERR_NONE;
	}
	else if (parameterName==gensym("offset")) {
		offset = atom_getfloat(argv);
		b = 0.5*(offset+1);
		calculateOutputScaling();
		return JAMOMA_ERR_NONE;
	}
	else	
		return JAMOMA_ERR_INVALID_PARAMETER;
}


JamomaError TanhFunction::getParameter(t_symbol *parameterName, long *argc, t_atom **argv)
{
	if (parameterName==gensym("width")) {
		*argv = (t_atom*)sysmem_newptr(sizeof(t_atom));
		atom_setfloat(*argv, width);
		*argc = 1;
		return JAMOMA_ERR_NONE;
	}
	else if (parameterName==gensym("offset")) {
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

void TanhFunction::calculateOutputScaling(void)
{
	double f0, f1;
	
	f0=tanh(a*(-b));
	f1=tanh(a*(1-b));
	// This will never be division by zero, due to the fact that we always have width > 0
	alpha = 1/(f1-f0);
	beta = f0;
}

JamomaError TanhFunction::getFunctionParameters(long *argc, t_atom **argv)
{
	
	int n = *argc = 2;
	*argv = (t_atom*)sysmem_newptr(sizeof(t_atom) * n);
	atom_setsym(*argv, gensym("width")); atom_setsym(*argv+1, gensym("offset"));
	return JAMOMA_ERR_NONE;
	
}
