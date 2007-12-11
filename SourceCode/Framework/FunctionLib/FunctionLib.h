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
		FunctionLib();							///< constructor
		virtual ~FunctionLib();					///< destructor - free memory, etc.
		
		virtual double mapValue(double x) = 0;	///< map x to y
		// double lookupValue(double x);		///< map x to y using lookup table
		virtual JamomaError setParameter(t_symbol *parameterName, double value) = 0;
		virtual JamomaError getParameter(t_symbol *parameterName, double &value) = 0;
};


JamomaError	jamoma_getFunction(t_symbol *functionName, FunctionLib **function);
void		jamoma_getFunctionList(long *numFunctions, t_symbol ***functionNames);

#endif // __FUNCTIONLIB_H__
