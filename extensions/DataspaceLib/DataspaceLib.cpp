/*
 * Jamoma FunctionLib Base Class
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "DataspaceLib.h"

DataspaceUnit::DataspaceUnit(const TTSymbolPtr newName) :
    name(newName)
{
	;
}


DataspaceUnit::~DataspaceUnit()
{
	;
}


/***********************************************************************************/

DataspaceLib::DataspaceLib(const TTSymbolPtr newName, const TTSymbolPtr newNativeUnit) :
    inUnit(NULL),
    outUnit(NULL),
    neutralUnit(newNativeUnit),
    name(newName)
{
	unitHash = new TTHash;
}


DataspaceLib::~DataspaceLib()
{
//	t_symbol		**keys = NULL;
    TTValue         keys;
	long			numKeys = 0;
	long			i;
	DataspaceUnit	*unit;

    unitHash->getKeys(keys);
    numKeys = unitHash->getSize();

//	hashtab_getkeys(unitHash, &numKeys, &keys);
	for(i=0; i<numKeys; i++){
//		hashtab_lookup(unitHash, keys[i], (t_object**)&unit);
        TTSymbolPtr key;
        TTValue     v;

        keys.get(i, &key);
        unitHash->lookup(key, value);
        unit = value;
//		delete unit;
        TTObjectRelease(&unit);
	}

//	if(keys)
//		sysmem_freeptr(keys);

//	hashtab_chuck(unitHash);
    delete unitHash;
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
TTErr convert(const TTValue& input, TTValue& output);



JamomaError DataspaceLib::setInputUnit(t_symbol *inUnitName)
{
	t_object*	newUnit = NULL;
	JamomaError	err;

	if(inUnit && inUnitName == inUnit->name)	// already have this one loaded
		return JAMOMA_ERR_NONE;
	else{
		err = (JamomaError)hashtab_lookup(unitHash, inUnitName, (t_object**)&newUnit);
		if(!err && newUnit)
			inUnit = (DataspaceUnit*)newUnit;
		return err;
	}
}
TTErr setInputUnit(TTSymbolPtr inUnitName);



JamomaError DataspaceLib::setOutputUnit(t_symbol *outUnitName)
{
	t_object*	newUnit = NULL;
	JamomaError	err;

	if(outUnit && outUnitName == outUnit->name)	// already have this one loaded
		return JAMOMA_ERR_NONE;
	else{
		err = (JamomaError)hashtab_lookup(unitHash, outUnitName, (t_object**)&newUnit);
		if(!err && newUnit)
			outUnit = (DataspaceUnit*)newUnit;
		return err;
	}
}
TTErr setOutputUnit(TTSymbolPtr outUnitName);


void DataspaceLib::registerUnit(void *unit, const TTSymbolPtr unitName)
void DataspaceLib::registerUnit(void *unit, t_symbol *unitName)
{
	hashtab_store(unitHash, unitName, (t_object*)unit);
}


TTErr DataspaceLib::getAvailableUnits(TTValue& unitNames)
{
    return unitHash->getKeys(unitNames);
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


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTFoundationInit();

    Dataspace::registerClass();

	AngleDataspace::registerClass();
	ColorDataspace::registerClass();
	DistanceDataspace::registerClass();
	GainDataspace::registerClass();
	NoneDataspace::registerClass();
	PitchDataspace::registerClass();
	PositionDataspace::registerClass();
	TemperatureDataspace::registerClass();
	TimeDataspace::registerClass();

	return kTTErrNone;
}


