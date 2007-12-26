/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __POSITIONDATASPACE_H__
#define __POSITIONDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class Cartesian3DUnit : DataspaceUnit{
	public:
		Cartesian3DUnit();
		~Cartesian3DUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class Cartesian2DUnit : DataspaceUnit{
	public:
		Cartesian2DUnit();
		~Cartesian2DUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class SphericalUnit : DataspaceUnit{
	public:
		SphericalUnit();
		~SphericalUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class PolarUnit : DataspaceUnit{
	public:
		PolarUnit();
		~PolarUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

// Specification of our base class
class PositionDataspace : DataspaceLib{
	public:
		PositionDataspace();
		~PositionDataspace();
};

#endif // __POSITIONDATASPACE_H__
