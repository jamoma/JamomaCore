/*
 * Jamoma Dataspace Library
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTDATASPACEUNIT_H__
#define __TTDATASPACEUNIT_H__

#include "TTDataspaceLib.h"


/****************************************************************************************************/
// Class Specification

// Specification for the base class of each DataspaceUnit
// A DataspaceUnit converts from a specific unit to a neutral unit
// and is used by a DataspaceLib to do a conversion

class TTDataspaceUnit {

public:	
	TTSymbol name;				/// < name of this unit
	
	
	/** Constructor. Must be passed the name of this DataspaceUnit as a TTSymbolPtr. */
	TTDataspaceUnit(TTValue& arguments);
	
	/** Destructor */
	virtual ~TTDataspaceUnit()
	{
		;
	}
	
	/** Converts from an actual unit to a 'neutral' unit that can be interpreted by other units within this dataspace.
	 This must be defined by a sub-class.*/
	//virtual void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output) = 0;
	virtual void convertToNeutral(const TTValue& input, TTValue& output) = 0;
	
	/** Converts from a neutral unit back to an actual unit.
	 This must be defined by a sub-class.*/
	//virtual void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms) = 0;
	virtual void convertFromNeutral(const TTValue& input, TTValue& output) = 0;
};

typedef TTDataspaceUnit* TTDataspaceUnitPtr;


#endif // __TTDATASPACEUNIT_H__
