/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __POSITIONDATASPACE_H__
#define __POSITIONDATASPACE_H__

#include "MaxDataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class Cartesian3DUnit : MaxDataspaceUnit{
	public:
		Cartesian3DUnit();
		~Cartesian3DUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class Cartesian2DUnit : MaxDataspaceUnit{
	public:
		Cartesian2DUnit();
		~Cartesian2DUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class SphericalUnit : MaxDataspaceUnit{
	public:
		SphericalUnit();
		~SphericalUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class PolarUnit : MaxDataspaceUnit{
	public:
		PolarUnit();
		~PolarUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};
		
class OpenGlUnit : MaxDataspaceUnit{
	public:
		OpenGlUnit();
		~OpenGlUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);

};

class CylindricalUnit : MaxDataspaceUnit{
	public:
		CylindricalUnit();
		~CylindricalUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);

};



// Specification of our base class
class PositionDataspace : MaxDataspaceLib{
	public:
		PositionDataspace();
		~PositionDataspace();
};

#endif // __POSITIONDATASPACE_H__
