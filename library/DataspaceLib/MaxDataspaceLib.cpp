/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "MaxDataspaceLib.h"

MaxDataspaceUnit::MaxDataspaceUnit(const char *cName)
{
	name = SymbolGen(cName);
}


MaxDataspaceUnit::~MaxDataspaceUnit()
{
	;
}


/***********************************************************************************/

MaxDataspaceLib::MaxDataspaceLib(const char *cName, const char *cNativeUnit)
	: inUnit(NULL), outUnit(NULL)
{
	unitHash = hashtab_new(0);
	name = SymbolGen(cName);
	neutralUnit = SymbolGen(cNativeUnit);
}


MaxDataspaceLib::~MaxDataspaceLib()
{
	t_symbol		**keys = NULL;
	long			numKeys = 0;
	long			i;
	MaxDataspaceUnit	*unit;

	hashtab_getkeys(unitHash, &numKeys, &keys);
	for (i=0; i<numKeys; i++) {
		hashtab_lookup(unitHash, keys[i], (t_object**)&unit);
		delete unit;
	}
	
	if (keys)
		sysmem_freeptr(keys);
		
	hashtab_chuck(unitHash);
}


// remember, we are relying on memory passed in for the outputAtoms		
JamomaError MaxDataspaceLib::convert(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, t_atom **outputAtoms)
{
	double	value[3];	// right now we only handle a maximum of 3 values in the neutral unit passing
	long	numvalues;
	
	if (inUnit->name == outUnit->name) {
		*outputNumArgs = inputNumArgs;
		sysmem_copyptr(inputAtoms, *outputAtoms, sizeof(t_atom) * inputNumArgs);
	}
	else {
		inUnit->convertToNeutral(inputNumArgs, inputAtoms, &numvalues, value);
		outUnit->convertFromNeutral(numvalues, value, outputNumArgs, outputAtoms);
	}
	return JAMOMA_ERR_NONE;
}

		
JamomaError MaxDataspaceLib::setInputUnit(t_symbol *inUnitName)
{
	t_object*	newUnit = NULL;
	JamomaError	err;
	
	if (inUnit && inUnitName == inUnit->name)	// already have this one loaded
		return JAMOMA_ERR_NONE;
	else {
		err = (JamomaError)hashtab_lookup(unitHash, inUnitName, (t_object**)&newUnit);
		if (!err && newUnit)
			inUnit = (MaxDataspaceUnit*)newUnit;
		return err;
	}
}


JamomaError MaxDataspaceLib::setOutputUnit(t_symbol *outUnitName)
{
	t_object*	newUnit = NULL;
	JamomaError	err;
	
	if (outUnit && outUnitName == outUnit->name)	// already have this one loaded
		return JAMOMA_ERR_NONE;
	else {
		err = (JamomaError)hashtab_lookup(unitHash, outUnitName, (t_object**)&newUnit);
		if (!err && newUnit)
			outUnit = (MaxDataspaceUnit*)newUnit;
		return err;
	}
}


void MaxDataspaceLib::registerUnit(void *unit, t_symbol *unitName)
{
	hashtab_store(unitHash, unitName, (t_object*)unit);
}


void MaxDataspaceLib::getAvailableUnits(long *numUnits, t_symbol ***unitNames)
{
	hashtab_getkeys(unitHash, numUnits, unitNames);
}




/***************************************************************************
	Interface for Instantiating any DataspaceLib
 ***************************************************************************/
#include "AngleDataspace.h"
#include "ColorDataspace.h"
#include "DistanceDataspace.h"
#include "GainDataspace.h"
#include "NoneDataspace.h"
#include "PitchDataspace.h"
#include "PositionDataspace.h" 
#include "TemperatureDataspace.h"
#include "TimeDataspace.h"


JamomaError jamoma_getDataspace(t_symbol *dataspaceName, MaxDataspaceLib **dataspace)
{	
	if (*dataspace) {
		if (dataspaceName == (*dataspace)->name)
			return JAMOMA_ERR_NONE;	// already have this one, do nothing...
		else {
			delete *dataspace;
			*dataspace = NULL;
		}
	}

	// These should be alphabetized
	if (dataspaceName == SymbolGen("angle"))
		*dataspace = (MaxDataspaceLib*) new AngleDataspace;
	else if (dataspaceName == SymbolGen("color"))
		*dataspace = (MaxDataspaceLib*) new ColorDataspace;
	else if (dataspaceName == SymbolGen("distance"))
		*dataspace = (MaxDataspaceLib*) new DistanceDataspace;
	else if (dataspaceName == SymbolGen("gain"))
		*dataspace = (MaxDataspaceLib*) new GainDataspace;
	else if (dataspaceName == SymbolGen("none"))
		*dataspace = (MaxDataspaceLib*) new NoneDataspace;
	else if (dataspaceName == SymbolGen("pitch"))
		*dataspace = (MaxDataspaceLib*) new PitchDataspace;
	else if (dataspaceName == SymbolGen("position")) 
		*dataspace = (MaxDataspaceLib*) new PositionDataspace;
	else if (dataspaceName == SymbolGen("temperature"))
		*dataspace = (MaxDataspaceLib*) new TemperatureDataspace;
	else if (dataspaceName == SymbolGen("time"))
		*dataspace = (MaxDataspaceLib*) new TimeDataspace;
	else 
		// Invalid -- default to temperature
		*dataspace = (MaxDataspaceLib*) new TemperatureDataspace;
	
	return JAMOMA_ERR_NONE;
}


// This function allocates memory -- caller must free it!
void jamoma_getDataspaceList(long *numDataspaces, t_symbol ***dataspaceNames)
{
	*numDataspaces = 9; // must be the length of the Dataspace
	*dataspaceNames = (t_symbol**)sysmem_newptr(sizeof(t_symbol*) * *numDataspaces);
	
	// These should be alphabetized
	if (*numDataspaces) {
		*(*dataspaceNames+0) = SymbolGen("angle");
		*(*dataspaceNames+1) = SymbolGen("color");
		*(*dataspaceNames+2) = SymbolGen("distance");
		*(*dataspaceNames+3) = SymbolGen("gain");
		*(*dataspaceNames+4) = SymbolGen("none");
		*(*dataspaceNames+5) = SymbolGen("pitch");
		*(*dataspaceNames+6) = SymbolGen("position"); 
		*(*dataspaceNames+7) = SymbolGen("temperature");
		*(*dataspaceNames+8) = SymbolGen("time");
	}
}

