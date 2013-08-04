/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Specification for #TTDataspace, the base class of each dataspace.
 *
 * @authors Tim Place, Trond Lossius, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDataspace.h"


TTDataspace::TTDataspace() :
	inUnitTT(NULL),
	inUnit(NULL),
	outUnitTT(NULL),
    outUnit(NULL)
{
	unitHash = new TTHash;
}


TTDataspace::~TTDataspace()
{
    delete unitHash;	
	TTObjectBaseRelease((TTObjectBasePtr*)&inUnitTT);
	TTObjectBaseRelease((TTObjectBasePtr*)&outUnitTT);
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


TTErr TTDataspace::setInputUnit(TTSymbol& inUnitName)
{
	TTSymbol	newUnitClassName;
	TTErr		err;
	TTValue		v;
	
	if (inUnit && inUnitName == inUnit->name)	// already have this one loaded
		return kTTErrNone;
	else {
		err = unitHash->lookup(inUnitName, v);
		
        if (!err) {
            
            newUnitClassName = v;
            
            if (newUnitClassName) {
                
                v = inUnitName;
                err = TTObjectBaseInstantiate(newUnitClassName, &inUnitTT, v);	// this will free a pre-existing unit
                inUnit = dynamic_cast<TTDataspaceUnitPtr>(inUnitTT);
            }
		}
		return err;
	}
}


TTSymbol& TTDataspace::getInputUnit()
{
	return inUnit->name;
}


TTErr TTDataspace::setOutputUnit(TTSymbol& outUnitName)
{
	TTSymbol	newUnitClassName;
	TTErr		err;
	TTValue		v;
	
	if (outUnit && outUnitName == outUnit->name)	// already have this one loaded
		return kTTErrNone;
	else {
		err = unitHash->lookup(outUnitName, v);
        
		if (!err) {
            
            newUnitClassName = v;
            
            if (newUnitClassName) {
			
                v = outUnitName;
                err = TTObjectBaseInstantiate(newUnitClassName, &outUnitTT, v);	// this will free a pre-existing unit
                outUnit = dynamic_cast<TTDataspaceUnitPtr>(outUnitTT);
            }
		}
		return err;
	}
}


TTSymbol& TTDataspace::getOutputUnit()
{
	return outUnit->name;
}


void TTDataspace::registerUnit(const TTSymbol& className, const TTSymbol& unitName)
{
	TTValuePtr v = new TTValue(className);

	unitHash->append(unitName, *v);
}


TTErr TTDataspace::getAvailableUnits(TTValue& unitNames)
{
    return unitHash->getKeys(unitNames);
}

