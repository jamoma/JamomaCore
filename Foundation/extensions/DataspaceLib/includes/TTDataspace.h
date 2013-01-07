/*
 * Jamoma Dataspace Library
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTDATASPACE_H__
#define __TTDATASPACE_H__

#include "TTDataspaceLib.h"
#include "TTDataspaceUnit.h"


/****************************************************************************************************/
// Class Specification

class TTDataspace {
	
	TTObjectBasePtr			inUnitTT;	// we maintain individual pointers to the two base-classes (multiple-inheritance)
	TTDataspaceUnitPtr  inUnit;		//    so we can quickly access both without expensive casting during operation
	TTObjectBasePtr			outUnitTT;
	TTDataspaceUnitPtr  outUnit;
	TTHashPtr			unitHash;
public:
	TTSymbol			neutralUnit;
	
	
	TTDataspace();
	virtual ~TTDataspace();


	/** converts input to output, possibly doing a unit conversion.  */
	TTErr convert(const TTValue& input, TTValue& output);

	/** set the input unit type for this dataspace object by it's name as a symbol */
	TTErr setInputUnit(TTSymbol& inUnitName);
	TTSymbol& getInputUnit();

	/** set the output unit type for this dataspace object by it's name as a symbol */
	TTErr setOutputUnit(TTSymbol& outUnitName);
	TTSymbol& getOutputUnit();

	/** return a list of all available units for this dataspace */
	TTErr getAvailableUnits(TTValue& unitNames);
	
protected:
	/** Called by subclasses to register units with the dataspace */
	void registerUnit(const TTSymbol& className, const TTSymbol& unitName);

};

typedef TTDataspace* TTDataspacePtr;


#endif // __TTDATASPACE_H__
