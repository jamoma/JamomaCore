/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "DataspaceLib.h"
#include "TemperatureDataspace.h"

DataspaceUnit::DataspaceUnit(char *cname)
{
	name = gensym(cname);
}


DataspaceUnit::~DataspaceUnit()
{
	;
}


/***********************************************************************************/

DataspaceLib::DataspaceLib()
	: inUnit(NULL), outUnit(NULL)
{
	;
}


DataspaceLib::~DataspaceLib()
{
	;
}

		
JamomaError DataspaceLib::convert(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, t_atom **outputAtoms)
{
	double	value;
	long	numvalues;
	
	inUnit->convertToNeutral(inputNumArgs, inputAtoms, &numvalues, &value);
	outUnit->convertFromNeutral(1, &value, outputNumArgs, outputAtoms);
	return JAMOMA_ERR_NONE;
}

		
JamomaError DataspaceLib::setInputUnit(t_symbol *inputUnit)
{
	if(inputUnit == inUnit->name)	// already have this one loaded
		return JAMOMA_ERR_NONE;
	else if(inputUnit == gensym("celsius")){
		if(inUnit)
			delete inUnit;
		inUnit = (DataspaceUnit*) new CelsiusUnit;
		return JAMOMA_ERR_NONE;
	}
	else if(inputUnit == gensym("fahrenheit")){
		if(inUnit)
			delete inUnit;
		inUnit = (DataspaceUnit*) new FahrenheitUnit;
		return JAMOMA_ERR_NONE;
	}
	else if(inputUnit == gensym("kelvin")){
		if(inUnit)
			delete inUnit;
		inUnit = (DataspaceUnit*) new KelvinUnit;
		return JAMOMA_ERR_NONE;
	}
	else
		return JAMOMA_ERR_GENERIC;
}


JamomaError DataspaceLib::setOutputUnit(t_symbol *outputUnit)
{
	if(outputUnit == outUnit->name)	// already have this one loaded
		return JAMOMA_ERR_NONE;
	else if(outputUnit == gensym("celsius")){
		if(outUnit)
			delete outUnit;
		outUnit = (DataspaceUnit*) new CelsiusUnit;
		return JAMOMA_ERR_NONE;
	}
	else if(outputUnit == gensym("fahrenheit")){
		if(outUnit)
			delete outUnit;
		outUnit = (DataspaceUnit*) new FahrenheitUnit;
		return JAMOMA_ERR_NONE;
	}
	else if(outputUnit == gensym("kelvin")){
		if(outUnit)
			delete outUnit;
		outUnit = (DataspaceUnit*) new KelvinUnit;
		return JAMOMA_ERR_NONE;
	}
	else
		return JAMOMA_ERR_GENERIC;
}

