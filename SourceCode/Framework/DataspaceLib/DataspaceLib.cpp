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

DataspaceLib::DataspaceLib(char *cName, char *cNativeUnit)
	: inUnit(NULL), outUnit(NULL)
{
	unitHash = hashtab_new(0);
	name = gensym(cName);
	nativeUnit = gensym(cNativeUnit);
}


DataspaceLib::~DataspaceLib()
{
	t_symbol		**keys = NULL;
	long			numKeys = 0;
	long			i;
	DataspaceUnit	*unit;
	long			flags = 0;

	hashtab_getkeys(unitHash, &numKeys, &keys);
	for(i=0; i<numKeys; i++){
		flags = (long)object_method(unitHash, gensym("getkeyflags"), keys[i]);
		if(!flags){
			hashtab_lookup(unitHash, keys[i], (t_object**)&unit);
			delete unit;
		}
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


void DataspaceLib::registerUnit(void *unit, t_symbol *name)
{
	hashtab_store(unitHash, name, (t_object*)unit);
}


void DataspaceLib::registerUnit(void *unit, t_symbol *name, t_symbol *abbreviation)
{
	hashtab_store(unitHash, name, (t_object*)unit);
	hashtab_store(unitHash, abbreviation, (t_object*)unit);
	object_method(unitHash, gensym("keyflags"), abbreviation, 1);	// add a flag of 1 to indicate an abbreviation
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
	if(*dataspace){
		if(dataspaceName == (*dataspace)->name)
			return JAMOMA_ERR_NONE;	// already have this one, do nothing...
		else{
			delete *dataspace;
			*dataspace = NULL;
		}
	}

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

