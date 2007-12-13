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


/****************************************************************************************************/
// Class Specification


// Specification for the base class of each DataspaceUnit
// A DataspaceUnit converts from a specific unit to a neutral unit
// and is used by a DataspaceLib to do a conversion
class DataspaceUnit{
	public:
		t_symbol *name;	/// < name of this unit

		DataspaceUnit(char *cName);
		virtual ~DataspaceUnit();
		
		virtual void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output) = 0;
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
		t_symbol		*nativeUnit;
		t_symbol		*name;

		DataspaceLib(char *cName, char *cNativeUnit);		///< constructor
		virtual ~DataspaceLib();							///< destructor - free memory, etc.
		
/*		JamomaError convert(long		inputNumArgs, 
							t_atom		*inputAtoms, 
							t_symbol	*inputDataspace, 
							long		*outputNumArgs, 
							t_atom		**outputAtoms, 
							t_symbol	*outputDataspace, 
							);
*/

		// EXTREMELY IMPORTANT: We are expecting that **output atoms has its memory passed in already - we are not allocating it
		// due to performance considerations
		JamomaError convert(long		inputNumArgs,
							t_atom		*inputAtoms,
							long		*outputNumArgs,
							t_atom		**outputAtoms
							);
		// could also create a class that wraps a unit with it's dataspace information and args and whateverelse
		// and then have an alternative (overridden) version of the convert method
		
		JamomaError setInputUnit(t_symbol *inUnitName);
		JamomaError setOutputUnit(t_symbol *outUnitName);
		
		void getAvailableUnits(long *numUnits, t_symbol ***unitNames);
};


JamomaError		jamoma_getDataspace(t_symbol *dataspaceName, DataspaceLib **dataspace);
void			jamoma_getDataspaceList(long *numDataspaces, t_symbol ***dataspaceNames);

#endif // __DATASPACELIB_H__
