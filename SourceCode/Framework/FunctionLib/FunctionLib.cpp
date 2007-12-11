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

#include "LinearFunction.h"
#include "TanhFunction.h"
#include "CosineFunction.h"


JamomaError jamoma_getFunction(t_symbol *functionName, FunctionLib **function)
{	
	if(*function)
		delete *function;

	// These should be alphabetized
	if(functionName == gensym("cos"))
		*function = (FunctionLib*) new CosineFunction;
	if(functionName == gensym("linear"))
		*function = (FunctionLib*) new LinearFunction;
	else if(functionName == gensym("pow"))
		*function = (FunctionLib *) new PowerFunction:
	else if(functionName == gensym("tanh"))
		*function = (FunctionLib*) new TanhFunction;

	else 
		// Invalid function specified default to linear
		*function = (FunctionLib*) new LinearFunction;
	
	return JAMOMA_ERR_NONE;
}


// This function allocates memory -- caller must free it!
void jamoma_getFunctionList(long *numFunctions, t_symbol ***functionNames)
{
	*numFunctions = 3;
	*functionNames = (t_symbol**)sysmem_newptr(sizeof(t_symbol*) * *numFunctions);
	
	// These should be alphabetized
	if(*functionNames){
		*(*functionNames+0) = gensym("cos");
		*(*functionNames+1) = gensym("linear");
		*(*functionNames+2) = gensym("power");
		*(*functionNames+3) = gensym("tanh");
	}
}

