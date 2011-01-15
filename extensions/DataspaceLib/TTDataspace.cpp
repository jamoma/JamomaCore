/*
 * Jamoma Dataspace Library
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDataspace.h"


TTDataspace::TTDataspace() :
	inUnit(NULL),
    outUnit(NULL)
{
	unitHash = new TTHash;
}


TTDataspace::~TTDataspace()
{
    delete unitHash;	
	TTObjectRelease((TTObjectPtr*)&inUnit);
	TTObjectRelease((TTObjectPtr*)&outUnit);
}


TTErr TTDataspace::convert(const TTValue& input, TTValue& output)
{
	if (inUnit->name == outUnit->name)
		output = input;
	else {
		TTValue value;

		inUnit->convertToNeutral(input, value);
		outUnit->convertFromNeutral(value, output);
	}
	return kTTErrNone;
}


TTErr TTDataspace::setInputUnit(TTSymbolPtr inUnitName)
{
	TTSymbolPtr	newUnitClassName = NULL;
	TTErr		err;
	TTValue		v;
	
	if (inUnit && inUnitName == inUnit->name)	// already have this one loaded
		return kTTErrNone;
	else {
		err = unitHash->lookup(inUnitName, v);
		newUnitClassName = TTSymbolPtr(v);
		if (!err && newUnitClassName) {
			v.clear();
			err = TTObjectInstantiate(newUnitClassName, (TTObject**)&inUnit, v);	// this will free a pre-existing unit
		}
		return err;
	}
}


TTErr TTDataspace::setOutputUnit(TTSymbolPtr outUnitName)
{
	TTSymbolPtr	newUnitClassName = NULL;
	TTErr		err;
	TTValue		v;
	
	if (outUnit && outUnitName == outUnit->name)	// already have this one loaded
		return kTTErrNone;
	else {
		err = unitHash->lookup(outUnitName, v);
		newUnitClassName = TTSymbolPtr(v);
		if (!err && newUnitClassName) {
			v.clear();
			err = TTObjectInstantiate(newUnitClassName, (TTObject**)&outUnit, v);	// this will free a pre-existing unit
		}
		return err;
	}
}


void TTDataspace::registerUnit(const TTSymbolPtr className, const TTSymbolPtr unitName)
{
	TTValuePtr v = new TTValue(className);

	unitHash->append(unitName, v);
}


TTErr TTDataspace::getAvailableUnits(TTValue& unitNames)
{
    return unitHash->getKeys(unitNames);
}

