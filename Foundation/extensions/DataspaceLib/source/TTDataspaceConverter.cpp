/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Specification for #TTDataspaceConverter, the base class of dataspace converters.
 *
 * @authors Tim Place, Trond Lossius, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
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

	addMessageWithArguments(dictionary);
	addMessageWithArguments(convert);
	
	addMessageWithArguments(getAvailableUnits);
	addMessageWithArguments(getAvailableDataspaces);
	
	setAttributeValue(TT("dataspace"), TT("none"));
}


TTDataspaceConverter::~TTDataspaceConverter()
{
	TTObjectBaseRelease((TTObjectBasePtr*)&mDataspaceTTObject);
}


TTErr TTDataspaceConverter::setDataspace(const TTValue& newValue)
{
	TTSymbol		name;
	TTErr			err;
	TTString		objectName = "dataspace.";
	
	newValue.get(0, name);
	
	// TODO: validate the name provided before proceeding
	objectName += name.c_str();
	err = TTObjectBaseInstantiate(TT(objectName.c_str()), &mDataspaceTTObject, kTTValNONE);
	if (err) {
        // Rather than crashing:
            //throw TTException("Error trying to load dataspace with that name");
        // we set it to "none" and post an error message to the log
        TTLogError("Error trying to load %s, set to none\n", objectName.c_str());
        objectName = "dataspace.none";
        TTObjectBaseInstantiate(TT(objectName.c_str()), &mDataspaceTTObject, kTTValNONE);
    }
	mDataspaceObject = dynamic_cast<TTDataspacePtr>(mDataspaceTTObject);
	mDataspace = name;
	
	return err;
}


TTErr TTDataspaceConverter::convert(const TTValue& anInputValue, TTValue& anOutputValue)
{
	return mDataspaceObject->convert(anInputValue, anOutputValue);
}


TTErr TTDataspaceConverter::dictionary(const TTValue& anInputValue, TTValue& anOutputValue)
{
	TTDictionaryPtr	d = NULL;
	TTValue			in;
	TTValue			out;
	TTErr			err;
	
	anInputValue.get(0, (TTPtr*)(&d));
	d->getValue(in);
	err = convert(in, out);
	d->setValue(out);
	anOutputValue.set(0, TTPtr(d));
	return err;
}


TTErr TTDataspaceConverter::getInputUnit(TTValue& inUnitName)
{
	inUnitName = mDataspaceObject->getInputUnit();
	return kTTErrNone;
}


TTErr TTDataspaceConverter::setInputUnit(const TTValue& inUnitName)
{
	TTSymbol s = inUnitName;
	return mDataspaceObject->setInputUnit(s);
}


TTErr TTDataspaceConverter::getOutputUnit(TTValue& outUnitName)
{
	outUnitName = mDataspaceObject->getOutputUnit();
	return kTTErrNone;
}


TTErr TTDataspaceConverter::setOutputUnit(const TTValue& outUnitName)
{
	TTSymbol s = outUnitName;
	return mDataspaceObject->setOutputUnit(s);
}


TTErr TTDataspaceConverter::getAvailableUnits(const TTValue& anUnusedInputValue, TTValue& unitNames)
{
	return mDataspaceObject->getAvailableUnits(unitNames);
}


TTErr TTDataspaceConverter::getAvailableDataspaces(const TTValue& anUnusedInputValue, TTValue& dataspaceNames)
{
	TTErr err;
	
	err = TTGetRegisteredClassNamesForTags(dataspaceNames, TT("dataspace"));
	if (!err) {
		// strip the leading "dataspace." prefix off all the names
		for (int i=0; i < dataspaceNames.getSize(); i++) {
			TTSymbol s;
			//TTString	str;
			const char* cStr;
			
			dataspaceNames.get(i, s);
			/* 
			str = s->getString();	// this causes crashes on Windows, need to use C string instead
			str.erase(0, 10);
			*/
			cStr = s.c_str() + 10;
			s = TT(cStr);
			dataspaceNames.set(i, s);
		}
	}
	return err;
}

