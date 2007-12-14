/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "FunctionLib.h"


FunctionLib::FunctionLib()
{
	;
}


FunctionLib::~FunctionLib()
{
	;
}


/***************************************************************************
	Interface for Instantiating any FunctionLib
 ***************************************************************************/

#include "CosineFunction.h"
#include "LinearFunction.h"
#include "LowpassFunction.h"
#include "PowerFunction.h"
#include "TanhFunction.h"



JamomaError jamoma_getFunction(t_symbol *functionName, FunctionLib **function)
{	
	if(*function)
		delete *function;

	// These should be alphabetized
	if(functionName == gensym("cosine"))
		*function = (FunctionLib*) new CosineFunction;
	else if(functionName == gensym("linear"))
		*function = (FunctionLib*) new LinearFunction;
	else if(functionName == gensym("lowpass"))
		*function = (FunctionLib*) new LowpassFunction;
	else if(functionName == gensym("power"))
		*function = (FunctionLib*) new PowerFunction;
	else if(functionName == gensym("tanh"))
		*function = (FunctionLib*) new TanhFunction;

	else 
		// Invalid function specified default to linear
		*function = (FunctionLib*) new LinearFunction;
	
	return JAMOMA_ERR_NONE;
}


void jamoma_getFunctionList(long *numFunctions, t_symbol ***functionNames)
{
	*numFunctions = 5;
	*functionNames = (t_symbol**)sysmem_newptr(sizeof(t_symbol*) * *numFunctions);
	
	// These should be alphabetized
	if(*functionNames){
		*(*functionNames+0) = gensym("cosine");
		*(*functionNames+1) = gensym("linear");
		*(*functionNames+2) = gensym("lowpass");
		*(*functionNames+3) = gensym("power");
		*(*functionNames+4) = gensym("tanh");
	}
}



/***************************************************************************
	Utilities shared by various members of the FunctionLib
 ***************************************************************************/

double jamoma_anti_denormal(double value)
{
	value += k_anti_denormal_value;
	value -= k_anti_denormal_value;
	return(value);
}

