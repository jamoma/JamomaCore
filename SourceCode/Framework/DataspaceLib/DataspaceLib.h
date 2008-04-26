/* 
 * Jamoma DataspaceLib Base Class
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __DATASPACELIB_H__
#define __DATASPACELIB_H__

#include "ext.h"
#include "ext_obex.h"
#include "JamomaTypes.h"

// Constants used for trigonometric convertions:
static const double kRadiansToDegrees = 180.0 / 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068;
static const double kDegreesToRadians = 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068 / 180.0;

// This coeff is used in GainDataspace mapping MIDI to and from linear gain 
// so that MIDI=100 equals 0 dB and MIDI = 127 equals +10 dB
static const double kGainMidiPower = log(pow(10.,10./20.))/log(127./100.);
static const double kGainMidiPowerInv = 1./kGainMidiPower;


/****************************************************************************************************/
// Class Specification


// Specification for the base class of each DataspaceUnit
// A DataspaceUnit converts from a specific unit to a neutral unit
// and is used by a DataspaceLib to do a conversion
class DataspaceUnit{
	public:
		t_symbol *name;				/// < name of this unit

		/** Constructor. Must be passed the name of this DataspaceUnit as a C-string. */
		DataspaceUnit(char *cName);
		
		/** Destructor */
		virtual ~DataspaceUnit();
		
		/** Converts from an actual unit to a 'neutral' unit that can be interpreted by other units within this dataspace.
			This must be defined by a sub-class.*/
		virtual void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output) = 0;

		/** Converts from a neutral unit back to an actual unit. 
			This must be defined by a sub-class.*/
		virtual void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms) = 0;
};



// Specification of our base class
class DataspaceLib{
	private:
		DataspaceUnit	*inUnit;
		DataspaceUnit	*outUnit;
		t_hashtab		*unitHash;

	protected:
		void registerUnit(void *unit, t_symbol *unitName);
		
	public:
		t_symbol		*neutralUnit;
		t_symbol		*name;

		/** Constructor. 
			This constructor maintains a cache of all DataspaceUnits that are associated with
			the given dataspace.  To maintain the cache, the subclasses must register each unit.
			@param cName		The name of the total Dataspace as a C-string
			@param cNativeUnit	The name of the neutral unit that is used for translating
								between units within this Dataspace. */
		DataspaceLib(char *cName, char *cNeutralUnit);
		
		/** Destructor. */
		virtual ~DataspaceLib();
		
/*		JamomaError convert(long		inputNumArgs, 
							t_atom		*inputAtoms, 
							t_symbol	*inputDataspace, 
							long		*outputNumArgs, 
							t_atom		**outputAtoms, 
							t_symbol	*outputDataspace, 
							);
*/

		/** converts input to output, possibly doing a unit conversion.
			EXTREMELY IMPORTANT: We are expecting that **output atoms has its memory passed in already.
			We are not allocating it due to performance considerations */
		JamomaError convert(long		inputNumArgs,
							t_atom		*inputAtoms,
							long		*outputNumArgs,
							t_atom		**outputAtoms
							);
		// could also create a class that wraps a unit with it's dataspace information and args and whateverelse
		// and then have an alternative (overridden) version of the convert method
		
		/** set the input unit type for this dataspace object by it's name as a symbol */
		JamomaError setInputUnit(t_symbol *inUnitName);

		/** set the output unit type for this dataspace object by it's name as a symbol */
		JamomaError setOutputUnit(t_symbol *outUnitName);
		
		/** return a list of all available units for this dataspace */
		void getAvailableUnits(long *numUnits, t_symbol ***unitNames);
};


extern "C" {

	/** Create a dataspace object by specifying the name of the dataspace you want as a symbol. */
	JamomaError		jamoma_getDataspace(t_symbol *dataspaceName, DataspaceLib **dataspace);

	/** Get a list of names of all the available dataspaces.  
		The caller of this function is responsible for freeing memory allocated by this call. */
	void			jamoma_getDataspaceList(long *numDataspaces, t_symbol ***dataspaceNames);

}

#endif // __DATASPACELIB_H__
