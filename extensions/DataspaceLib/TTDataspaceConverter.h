/*
 * Jamoma Dataspace Library
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTDATASPACECONVERTER_H__
#define __TTDATASPACECONVERTER_H__

#include "TTDataspace.h"


/****************************************************************************************************/
// Class Specification

class TTDataspaceConverter : public TTObject {
	TTCLASS_SETUP(TTDataspaceConverter)
	
	TTSymbolPtr			mDataspace;
	TTObjectPtr			mDataspaceTTObject;	// TTObject
	TTDataspacePtr		mDataspaceObject;	//   the above, cast to it's other parent class
		
	// Attribute Accessor
	TTErr setDataspace(const TTValue& newValue);
	
	/** converts input to output, possibly doing a unit conversion.  */
	TTErr convert(TTValue& io);

	/** set the input unit type for this dataspace object by it's name as a symbol */
	TTErr setInputUnit(const TTValue& inUnitName);
	TTErr getInputUnit(TTValue& inUnitName);

	/** set the output unit type for this dataspace object by it's name as a symbol */
	TTErr setOutputUnit(const TTValue& outUnitName);
	TTErr getOutputUnit(TTValue& inUnitName);

	/** return a list of all available units for this dataspace */
	//void getAvailableUnits(long *numUnits, t_symbol ***unitNames);
	TTErr getAvailableUnits(TTValue& unitNames);

	/**	return a list of all dataspaces */
	TTErr getAvailableDataspaces(TTValue& dataspaceNames);
};


#endif // __TTDATASPACECONVERTER_H__
