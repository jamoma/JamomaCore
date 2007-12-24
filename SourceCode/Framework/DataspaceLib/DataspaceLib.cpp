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
	neutralUnit = gensym(cNativeUnit);
}


DataspaceLib::~DataspaceLib()
{
	t_symbol		**keys = NULL;
	long			numKeys = 0;
	long			i;
	DataspaceUnit	*unit;

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
	double	value[3];	// right now we only handle a maximum of 3 values in the neutral unit passing
	long	numvalues;
	
	if(inUnit->name == outUnit->name){
		*outputNumArgs = inputNumArgs;
		sysmem_copyptr(inputAtoms, *outputAtoms, sizeof(t_atom) * inputNumArgs);
	}
	else{
		inUnit->convertToNeutral(inputNumArgs, inputAtoms, &numvalues, value);
		outUnit->convertFromNeutral(numvalues, value, outputNumArgs, outputAtoms);
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


void DataspaceLib::registerUnit(void *unit, t_symbol *unitName)
{
	hashtab_store(unitHash, unitName, (t_object*)unit);
}


void DataspaceLib::getAvailableUnits(long *numUnits, t_symbol ***unitNames)
{
	hashtab_getkeys(unitHash, numUnits, unitNames);
}




/***************************************************************************
	Interface for Instantiating any DataspaceLib
 ***************************************************************************/

#include "ColorDataspace.h"
#include "DistanceDataspace.h"
#include "GainDataspace.h"
#include "PitchDataspace.h"
#include "TemperatureDataspace.h"
#include "TimeDataspace.h"

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
	if(dataspaceName == gensym("color"))
		*dataspace = (DataspaceLib*) new ColorDataspace;
	else if(dataspaceName == gensym("distance"))
		*dataspace = (DataspaceLib*) new DistanceDataspace;
	else if(dataspaceName == gensym("gain"))
		*dataspace = (DataspaceLib*) new GainDataspace;
	else if(dataspaceName == gensym("pitch"))
		*dataspace = (DataspaceLib*) new PitchDataspace;
	else if(dataspaceName == gensym("temperature"))
		*dataspace = (DataspaceLib*) new TemperatureDataspace;
	else if(dataspaceName == gensym("time"))
		*dataspace = (DataspaceLib*) new TimeDataspace;
	else 
		// Invalid -- default to temperature
		*dataspace = (DataspaceLib*) new TemperatureDataspace;
	
	return JAMOMA_ERR_NONE;
}


// This function allocates memory -- caller must free it!
void jamoma_getDataspaceList(long *numDataspaces, t_symbol ***dataspaceNames)
{
	*numDataspaces = 5;
	*dataspaceNames = (t_symbol**)sysmem_newptr(sizeof(t_symbol*) * *numDataspaces);
	
	// These should be alphabetized
	if(*numDataspaces){
		*(*dataspaceNames+0) = gensym("color");
		*(*dataspaceNames+1) = gensym("distance");
		*(*dataspaceNames+2) = gensym("gain");
		*(*dataspaceNames+3) = gensym("pitch");
		*(*dataspaceNames+4) = gensym("temperature");
		*(*dataspaceNames+5) = gensym("time");
	}
}

