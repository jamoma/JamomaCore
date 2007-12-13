/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "DataspaceLib.h"

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
	unitHash = hashtab_new(0);
	nativeUnit = gensym(cNativeUnit);
}


DataspaceLib::~DataspaceLib()
{
	t_symbol		**keys;
	long			numKeys;
	long			i;
	DataspaceUnit	*unit;

	if(inUnit)
		delete inUnit;
	if(outUnit)
		delete outUnit;
	
	hashtab_getkeys(unitHash, &numKeys, &keys);
	for(i=0; i<numKeys; i++){
		hashtab_lookup(unitHash, keys[i], (t_object**)&unit);
		delete unit;
	}
	hashtab_chuck(unitHash);
}


// remember, we are relying on memory passed in for the outputAtoms		
JamomaError DataspaceLib::convert(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, t_atom **outputAtoms)
{
	double	value;
	long	numvalues;
	
	if(inUnit->name == outUnit->name){
		*outputNumArgs = inputNumArgs;
		sysmem_copyptr(inputAtoms, *outputAtoms, sizeof(t_atom) * inputNumArgs);
	}
	else{
		inUnit->convertToNeutral(inputNumArgs, inputAtoms, &numvalues, &value);
		outUnit->convertFromNeutral(1, &value, outputNumArgs, outputAtoms);
	}
	return JAMOMA_ERR_NONE;
}

		
JamomaError DataspaceLib::setInputUnit(t_symbol *inUnitName)
{
	if(inUnit && inUnitName == inUnit->name)	// already have this one loaded
		return JAMOMA_ERR_NONE;
	else
		return (JamomaError)hashtab_lookup(unitHash, inUnitName, (t_object**)&inUnit);
}


JamomaError DataspaceLib::setOutputUnit(t_symbol *outUnitName)
{
	if(outUnit && outUnitName == outUnit->name)	// already have this one loaded
		return JAMOMA_ERR_NONE;
	else
		return (JamomaError)hashtab_lookup(unitHash, outUnitName, (t_object**)&outUnit);
}


void DataspaceLib::registerUnit(t_symbol *name, void *unit)
{
	hashtab_store(unitHash, name, (t_object*)unit);
}


void DataspaceLib::getAvailableUnits(long *numUnits, t_symbol ***unitNames)
{
	hashtab_getkeys(unitHash, numUnits, unitNames);
}




/***************************************************************************
	Interface for Instantiating any DataspaceLib
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
		// Invalid -- default to temperature
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

