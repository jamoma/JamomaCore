/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "DataspaceLib.h"

DataspaceUnit::DataspaceUnit(const char *cName)
{
	name = TT(cName);
}

DataspaceUnit::~DataspaceUnit()
{
	;
}


/***********************************************************************************/

DataspaceLib::DataspaceLib(const char *cName, const char *cNativeUnit)
	: inUnit(NULL), outUnit(NULL)
{
	unitHash = new TTHash();
	name = TT(cName);
	neutralUnit = TT(cNativeUnit);
}

DataspaceLib::~DataspaceLib()
{
	TTValue			hk, v;
	TTSymbolPtr		k;
	long			i;
	DataspaceUnit	*unit = NULL;

	unitHash->getKeys(hk);
	for (i=0; i<hk.getSize(); i++) {
		hk.get(i, &k);
		unitHash->lookup(k, v);
		v.get(0, (TTPtr*)&unit);
		delete unit;
	}
		
	delete unitHash;
}

// remember, we are relying on memory passed in for the outputAtoms		
TTErr DataspaceLib::convert(const TTValue& inValue, TTValue& outValue)
{
	TTValue neutralValue;
	
	if (inUnit->name == outUnit->name)
		outValue = inValue;
	else {
		inUnit->convertToNeutral(inValue, neutralValue);
		outUnit->convertFromNeutral(neutralValue, outValue);
	}
	return kTTErrNone;
}
		
TTErr DataspaceLib::setInputUnit(TTSymbolPtr inUnitName)
{
	DataspaceUnit	*newUnit = NULL;
	TTValue			v;
	TTErr			err;
	
	if (inUnit && inUnitName == inUnit->name)	// already have this one loaded
		return kTTErrNone;
	else {
		err = unitHash->lookup(inUnitName, v);
		v.get(0, (TTPtr*)&newUnit);
		
		if (!err && newUnit)
			inUnit = newUnit;
		return err;
	}
}

TTErr DataspaceLib::setOutputUnit(TTSymbolPtr outUnitName)
{
	DataspaceUnit	*newUnit = NULL;
	TTValue			v;
	TTErr			err;
	
	if (outUnit && outUnitName == outUnit->name)	// already have this one loaded
		return kTTErrNone;
	else {
		err = unitHash->lookup(outUnitName, v);
		v.get(0, (TTPtr*)&newUnit);
		
		if (!err && newUnit)
			outUnit = newUnit;
		return err;
	}
}

void DataspaceLib::registerUnit(TTPtr unit, TTSymbolPtr unitName)
{
	unitHash->append(unitName, unit);
}

void DataspaceLib::getAvailableUnits(TTValue& unitNames)
{
	unitHash->getKeys(unitNames);
}



/***************************************************************************
	Interface for Instantiating any DataspaceLib
 ***************************************************************************/

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

#include "AngleDataspace.h"
#include "ColorDataspace.h"
#include "DistanceDataspace.h"
#include "GainDataspace.h"
#include "NoneDataspace.h"
#include "PitchDataspace.h"
#include "PositionDataspace.h" 
#include "TemperatureDataspace.h"
#include "TimeDataspace.h"

TTErr getDataspace(TTSymbolPtr dataspaceName, DataspaceLib **dataspace)
{	
	if (*dataspace) {
		if (dataspaceName == (*dataspace)->name)
			return kTTErrNone;	// already have this one, do nothing...
		else {
			delete *dataspace;
			*dataspace = NULL;
		}
	}

	// These should be alphabetized
	if (dataspaceName == TT("angle"))
		*dataspace = (DataspaceLib*) new AngleDataspace;
	else if (dataspaceName == TT("color"))
		*dataspace = (DataspaceLib*) new ColorDataspace;
	else if (dataspaceName == TT("distance"))
		*dataspace = (DataspaceLib*) new DistanceDataspace;
	else if (dataspaceName == TT("gain"))
		*dataspace = (DataspaceLib*) new GainDataspace;
	else if (dataspaceName == TT("none"))
		*dataspace = (DataspaceLib*) new NoneDataspace;
	else if (dataspaceName == TT("pitch"))
		*dataspace = (DataspaceLib*) new PitchDataspace;
	else if (dataspaceName == TT("position")) 
		*dataspace = (DataspaceLib*) new PositionDataspace;
	else if (dataspaceName == TT("temperature"))
		*dataspace = (DataspaceLib*) new TemperatureDataspace;
	else if (dataspaceName == TT("time"))
		*dataspace = (DataspaceLib*) new TimeDataspace;
	else 
		// Invalid -- default to temperature
		*dataspace = (DataspaceLib*) new TemperatureDataspace;
	
	return kTTErrNone;
}

// This function allocates memory -- caller must free it!
void getDataspaceList(TTValue& dataspaceNames)
{
	dataspaceNames.clear();
	
	// These should be alphabetized
	dataspaceNames.append(TT("angle"));
	dataspaceNames.append(TT("color"));
	dataspaceNames.append(TT("distance"));
	dataspaceNames.append(TT("gain"));
	dataspaceNames.append(TT("none"));
	dataspaceNames.append(TT("pitch"));
	dataspaceNames.append(TT("position")); 
	dataspaceNames.append(TT("temperature"));
	dataspaceNames.append(TT("time"));
}

