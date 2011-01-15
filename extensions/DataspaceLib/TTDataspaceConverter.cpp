/*
 * Jamoma Dataspace Library
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDataspaceConverter.h"

#define thisTTClass			TTDataspaceConverter
#define thisTTClassName		"dataspace"
#define thisTTClassTags		"dataspace, converter"


TT_OBJECT_CONSTRUCTOR,
	mDataspaceObject(NULL),
	mInputUnitObject(NULL),
    mOutputUnitObject(NULL)
{
	addAttributeWithSetter(Dataspace, kTypeSymbol);
	addAttributeWithSetter(InputUnit, kTypeSymbol);
	addAttributeWithSetter(OutputUnit, kTypeSymbol);

	addMessageWithArgument(convert);
	addMessageWithArgument(getAvailableUnits);
	addMessageWithArgument(getAvailableDataspaces);
	
	setAttributeValue(TT("dataspace"), TT("none"));
}


TTDataspaceConverter::~TTDataspaceConverter()
{
	TTObjectRelease((TTObjectPtr*)&mDataspace);
}


TTErr TTDataspaceConverter::setDataspace(const TTValue& newValue)
{
	TTSymbolPtr		name;
	TTErr			err;
	
	newValue.get(0, &name);
	
	// TODO: validate the name provided before proceeding
	
	err = TTObjectInstantiate(name, (TTObjectPtr*)&mDataspaceObject, kTTValNONE);
	mDataspace = name;
	
	return err;
}


TTErr TTDataspaceConverter::convert(const TTValue& input, TTValue& output)
{
	return mDataspaceObject->convert(input, output);
}


TTErr TTDataspaceConverter::setInputUnit(const TTValue& inUnitName)
{
	inUnitName.get(0, &mInputUnit);
	return mDataspaceObject->setInputUnit(inUnitName);
}


TTErr TTDataspaceConverter::setOutputUnit(const TTValue& outUnitName)
{
	outUnitName.get(0, &mOutputUnit);
	return mDataspaceObject->setOutputUnit(outUnitName);
}


TTErr TTDataspaceConverter::getAvailableUnits(TTValue& unitNames)
{
	return mDataspaceObject->getAvailableUnits(unitNames);
}


TTErr TTDataspaceConverter::getAvailableDataspaces(TTValue& dataspaceNames)
{
	return TTGetRegisteredClassNamesForTags(dataspaceNames, TT("dataspace"));
}

