/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __FUNCTIONLIB_H__
#define __FUNCTIONLIB_H__

#include "ext.h"
#include "ext_obex.h"
#include "JamomaTypes.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class FunctionLib{
	public:
		/** constructor */
		FunctionLib();
		
		/** destructor */
		virtual ~FunctionLib();
		
		/** map x to y */
		virtual double mapValue(double x) = 0;
		
		/** map x to y using lookup table */
		// double lookupValue(double x);
		
		/** setParameter method for the base class is only called if there are
			no parameters */
		virtual JamomaError setParameter(t_symbol *parameterName, long argc, t_atom *argv)
		{	return JAMOMA_ERR_INVALID_PARAMETER; }

		/** getParameter method for the base class is only called if there are
			no parameters */
		virtual JamomaError getParameter(t_symbol *parameterName, long *argc, t_atom **argv)
		{ 
			// We do this here to ensure that any calling function won't actually free
			// random memory
			*argc = 0; *argv = NULL;
			return JAMOMA_ERR_INVALID_PARAMETER;
		}
		
		/** return a list of names of the available functionParameters */
		virtual JamomaError getFunctionParameters(long *argc, t_atom **argv)
		{
			*argc = 0; *argv = NULL;
			return JAMOMA_ERR_INVALID_PARAMETER;
		}
};

/** Instantiate a function by name */
JamomaError	jamoma_getFunction(t_symbol *functionName, FunctionLib **function);

/**	Return a list of all available functions.
	This function allocates memory -- caller must free it!*/
void		jamoma_getFunctionList(long *numFunctions, t_symbol ***functionNames);

/** Attempt to knock out denormaled floats*/
double		jamoma_anti_denormal(double value);

#endif // __FUNCTIONLIB_H__
