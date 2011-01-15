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

//class TT_DATASPACE_EXPORT Dataspace : public TTObject {
class TTDataspace {
//	TTCLASS_SETUP(TTDataspace)
	/** Constructor. Must be passed the name of this DataspaceUnit as a TTSymbolPtr. */
public:
	TTDataspace();
	
	
	/** Destructor */
	virtual ~TTDataspace();
	
	private:
		TTDataspaceUnitPtr  inUnit;
		TTDataspaceUnitPtr  outUnit;
		TTHashPtr			unitHash;

	protected:
		/** Called by subclasses to register units with the dataspace */
		void registerUnit(const TTSymbolPtr className, const TTSymbolPtr unitName);

	public:
		TTSymbolPtr	      neutralUnit;
	
		/** Constructor.
			This constructor maintains a cache of all DataspaceUnits that are associated with
			the given dataspace.  To maintain the cache, the subclasses must register each unit.
			@param cName		The name of the total Dataspace as a C-string
			@param cNativeUnit	The name of the neutral unit that is used for translating
								between units within this Dataspace. */
		//TTDataspace(TTValue& arguments);
		//virtual ~TTDataspace();

		/** converts input to output, possibly doing a unit conversion.  */
        TTErr convert(const TTValue& input, TTValue& output);

		/** set the input unit type for this dataspace object by it's name as a symbol */
		TTErr setInputUnit(TTSymbolPtr inUnitName);

		/** set the output unit type for this dataspace object by it's name as a symbol */
		TTErr setOutputUnit(TTSymbolPtr outUnitName);

		/** return a list of all available units for this dataspace */
		//void getAvailableUnits(long *numUnits, t_symbol ***unitNames);
		TTErr getAvailableUnits(TTValue& unitNames);
};

typedef TTDataspace* TTDataspacePtr;


#endif // __TTDATASPACE_H__
