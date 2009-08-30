/*
 * Jamoma DataspaceLib Base Class
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "DataspaceLib.h"


DataspaceUnit::DataspaceUnit(TTValue& arguments) : TTObject(arguments)
{
	arguments.get(0, &name);
}

DataspaceUnit::~DataspaceUnit()
{
	;
}


/***********************************************************************************/

DataspaceLib::DataspaceLib(TTValue& arguments) : TTObject(arguments),
	inUnit(NULL),
    outUnit(NULL)
{
	arguments.get(0, &name);
	arguments.get(1, &neutralUnit);
	
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
        unitHash->lookup(key, v);
        unit = DataspaceUnitPtr(TTObjectPtr(v));
//		delete unit;
        TTObjectRelease((TTObjectPtr*)&unit);
	}

//	if(keys)
//		sysmem_freeptr(keys);

//	hashtab_chuck(unitHash);
    delete unitHash;
}


// remember, we are relying on memory passed in for the outputAtoms
//TTErr DataspaceLib::convert(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, t_atom **outputAtoms)
TTErr DataspaceLib::convert(const TTValue& input, TTValue& output)
{
//	double	value[3];	// right now we only handle a maximum of 3 values in the neutral unit passing
//	long	numvalues;
	TTValue value;

	if (inUnit->name == outUnit->name) {
//		*outputNumArgs = inputNumArgs;
//		sysmem_copyptr(inputAtoms, *outputAtoms, sizeof(t_atom) * inputNumArgs);
		output = input;
	}
	else {
		inUnit->convertToNeutral(input, value);
		outUnit->convertFromNeutral(value, output);
	}
	return kTTErrNone;
}


TTErr DataspaceLib::setInputUnit(TTSymbolPtr inUnitName)
{
	TTObjectPtr	newUnit = NULL;
	TTErr		err;
	TTValue		v;

	if (inUnit && inUnitName == inUnit->name)	// already have this one loaded
		return kTTErrNone;
	else {
		err = unitHash->lookup(inUnitName, v);
		newUnit = TTObjectPtr(v);
//		err = (TTErr)hashtab_lookup(unitHash, inUnitName, (t_object**)&newUnit);
		if (!err && newUnit)
			inUnit = DataspaceUnitPtr(newUnit);
		return err;
	}
}


TTErr DataspaceLib::setOutputUnit(TTSymbolPtr outUnitName)
{
	TTObjectPtr	newUnit = NULL;
	TTErr		err;
	TTValue		v;
	
	if (outUnit && outUnitName == outUnit->name)	// already have this one loaded
		return kTTErrNone;
	else {
		err = unitHash->lookup(outUnitName, v);
		newUnit = TTObjectPtr(v);
		if (!err && newUnit)
			outUnit = DataspaceUnitPtr(newUnit);
		return err;
	}
}


//void DataspaceLib::registerUnit(void *unit, const TTSymbolPtr unitName)
//{
//	hashtab_store(unitHash, unitName, (t_object*)unit);
//}


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


