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
#define thisTTClassTags		"dataspace.converter"


TT_OBJECT_CONSTRUCTOR,
	mDataspaceTTObject(NULL),
	mDataspaceObject(NULL)
{
	addAttributeWithSetter(Dataspace, kTypeSymbol);
	addAttributeWithGetterAndSetter(InputUnit, kTypeSymbol);
	addAttributeWithGetterAndSetter(OutputUnit, kTypeSymbol);

	addMessageWithArgument(dictionary);
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
	if (err) {
        // Rather than crashing:
            //throw TTException("Error trying to load dataspace with that name");
        // we set it to "none" and post an error message to the log
        TTLogError("Error trying to load %s, set to none\n", objectName.c_str());
        objectName = "dataspace.none";
        TTObjectInstantiate(TT(objectName.c_str()), &mDataspaceTTObject, kTTValNONE);
    }
	mDataspaceObject = dynamic_cast<TTDataspacePtr>(mDataspaceTTObject);
	mDataspace = name;
	
	return err;
}


TTErr TTDataspaceConverter::convert(TTValue& io)
{
	TTValue	output;
	TTErr	err;
	
	err = mDataspaceObject->convert(io, output);
	io = output;
	
	return err;
}


TTErr TTDataspaceConverter::dictionary(TTValue& input)
{
	TTDictionaryPtr	d = NULL;
	TTValue			v;
	TTErr			err;
	
	input.get(0, (TTPtr*)(&d));
	d->getValue(v);
	err = convert(v);
	d->setValue(v);
	
	return err;
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
	TTErr err;
	
	err = TTGetRegisteredClassNamesForTags(dataspaceNames, TT("dataspace"));
	if (!err) {
		// strip the leading "dataspace." prefix off all the names
		for (int i=0; i < dataspaceNames.getSize(); i++) {
			TTSymbolPtr s;
			//TTString	str;
			const char* cStr;
			
			dataspaceNames.get(i, &s);
			/* 
			str = s->getString();	// this causes crashes on Windows, need to use C string instead
			str.erase(0, 10);
			*/
			cStr = s->getCString() + 10;
			s = TT(cStr);
			dataspaceNames.set(i, s);
		}
	}
	return err;
}

