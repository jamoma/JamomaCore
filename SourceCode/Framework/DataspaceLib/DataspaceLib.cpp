/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "DataspaceLib.h"
#include "TemperatureDataspace.h"

DataspaceUnit::DataspaceUnit(char *cName)
{
	name = gensym(cName);
}


DataspaceUnit::~DataspaceUnit()
{
	;
}


/***********************************************************************************/

DataspaceLib::DataspaceLib(char *cNativeUnit)
	: inUnit(NULL), outUnit(NULL)
{
	nativeUnit = gensym(cNativeUnit);
	setInputUnit(nativeUnit);
	setOutputUnit(nativeUnit);
}


DataspaceLib::~DataspaceLib()
{
	if(inUnit)
		delete inUnit;
	if(outUnit)
		delete outUnit;
}

		
JamomaError DataspaceLib::convert(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, t_atom **outputAtoms)
{
	double	value;
	long	numvalues;
	
//	if(inUnit->name == outUnit->name){
//		
//	}
//	else{
		inUnit->convertToNeutral(inputNumArgs, inputAtoms, &numvalues, &value);
		outUnit->convertFromNeutral(1, &value, outputNumArgs, outputAtoms);
//	}
	return JAMOMA_ERR_NONE;
}

		
JamomaError DataspaceLib::setInputUnit(t_symbol *inputUnit)
{
	if(inUnit && inputUnit == inUnit->name)	// already have this one loaded
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
	if(outUnit && outputUnit == outUnit->name)	// already have this one loaded
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



/***************************************************************************
	Interface for Instantiating any FunctionLib
 ***************************************************************************/

#include "TemperatureDataspace.h"


JamomaError jamoma_getDataspace(t_symbol *dataspaceName, DataspaceLib **dataspace)
{	
	if(*dataspace)
		delete *dataspace;

	// These should be alphabetized
	if(dataspaceName == gensym("temperature"))
		*dataspace = (DataspaceLib*) new TemperatureDataspace;
	else 
		// Invalid function specified default to linear
		*dataspace = (DataspaceLib*) new TemperatureDataspace;
	
	return JAMOMA_ERR_NONE;
}


// This function allocates memory -- caller must free it!
void jamoma_getDataspaceList(long *numDataspaces, t_symbol ***dataspaceNames)
{
	*numDataspaces = 1;
	*dataspaceNames = (t_symbol**)sysmem_newptr(sizeof(t_symbol*) * *numDataspaces);
	
	// These should be alphabetized
	if(*numDataspaces){
		*(*dataspaceNames+0) = gensym("temperature");
	}
}

