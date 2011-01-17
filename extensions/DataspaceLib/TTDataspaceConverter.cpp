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
	mDataspaceTTObject(NULL),
	mDataspaceObject(NULL)
{
	addAttributeWithSetter(Dataspace, kTypeSymbol);
	addAttributeWithGetterAndSetter(InputUnit, kTypeSymbol);
	addAttributeWithGetterAndSetter(OutputUnit, kTypeSymbol);

	addMessageWithArgument(convert);
	addMessageWithArgument(getAvailableUnits);
	addMessageWithArgument(getAvailableDataspaces);
	
	setAttributeValue(TT("dataspace"), TT("none"));
}


TTDataspaceConverter::~TTDataspaceConverter()
{
	TTObjectRelease((TTObjectPtr*)&mDataspaceTTObject);
}


TTErr TTDataspaceConverter::setDataspace(const TTValue& newValue)
{
	TTSymbolPtr		name;
	TTErr			err;
	TTString		objectName = "dataspace.";
	
	newValue.get(0, &name);
	
	// TODO: validate the name provided before proceeding
	objectName += name->getString();
	err = TTObjectInstantiate(TT(objectName.c_str()), &mDataspaceTTObject, kTTValNONE);
	mDataspaceObject = dynamic_cast<TTDataspacePtr>(mDataspaceTTObject);
	mDataspace = name;
	
	return err;
}


TTErr TTDataspaceConverter::convert(const TTValue& input, TTValue& output)
{
	return mDataspaceObject->convert(input, output);
}


TTErr TTDataspaceConverter::getInputUnit(TTValue& inUnitName)
{
	inUnitName = mDataspaceObject->getInputUnit();
	return kTTErrNone;
}


TTErr TTDataspaceConverter::setInputUnit(const TTValue& inUnitName)
{
	return mDataspaceObject->setInputUnit(inUnitName);
}


TTErr TTDataspaceConverter::getOutputUnit(TTValue& outUnitName)
{
	outUnitName = mDataspaceObject->getOutputUnit();
	return kTTErrNone;
}


TTErr TTDataspaceConverter::setOutputUnit(const TTValue& outUnitName)
{
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

