/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Specification for #TTDataspaceUnit, the base class of each dataspace unit. TODO: Could this be made more descriptive, making it easier to understand how this is distinguished as compared to TTDataspace and TTDataspaceConverter?
 *
 * @details A DataspaceUnit converts back and forth between a specific unit and a neutral unit, and is used by DataspaceLib to do a conversion.
 *
 * @authors Tim Place, Trond Lossius, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTDATASPACEUNIT_H__
#define __TTDATASPACEUNIT_H__

#include "TTDataspaceLib.h"


/** Specification for the base class of each DataspaceUnit.
 *
 @details A DataspaceUnit converts back and forth between a specific unit and a neutral unit, and is used by DataspaceLib to do a conversion.
 */
class TTDataspaceUnit {

public:
	TTSymbol name;				///< Name of this unit.
	
	
	/** Constructor. Must be passed the name of this DataspaceUnit as a TTSymbolPtr.
	 @param arguments		Arguments passed to the class when created.
	 */
	TTDataspaceUnit(TTValue& arguments);
	
	/** Destructor.
	 */
	virtual ~TTDataspaceUnit()
	{
		;
	}
	
	/** Converts from an actual unit to a 'neutral' unit that can be interpreted by other units within this dataspace.
	 *
	 * @details This must be defined by a sub-class.
	 *
	 * @param input				Input value to be converted .
	 * @param output				Returned value, converted to the neutral unit of the dataspace.
	 */
	//virtual void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output) = 0;
	virtual void convertToNeutral(const TTValue& input, TTValue& output) = 0;
	
	/** Converts from a neutral unit back to an actual unit.
	 *
	 * @details This must be defined by a sub-class.
	 *
	 * @param input				Input value described using the neutral unit.
	 * @param output				Returned value, converted to the unit of this class.
	 */
	//virtual void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms) = 0;
	virtual void convertFromNeutral(const TTValue& input, TTValue& output) = 0;
};

typedef TTDataspaceUnit* TTDataspaceUnitPtr;


#endif // __TTDATASPACEUNIT_H__
