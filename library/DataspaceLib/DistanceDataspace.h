/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __DISTANCEDATASPACE_H__
#define __DISTANCEDATASPACE_H__

#include "MaxDataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class CentimeterUnit : MaxDataspaceUnit{
	public:
		CentimeterUnit();
		~CentimeterUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class InchUnit : MaxDataspaceUnit{
	public:
		InchUnit();
		~InchUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class FootUnit : MaxDataspaceUnit{
	public:
		FootUnit();
		~FootUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class MeterUnit : MaxDataspaceUnit{
	public:
		MeterUnit();
		~MeterUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class DistanceDataspace : MaxDataspaceLib{
	public:
		DistanceDataspace();
		~DistanceDataspace();
};


#endif // __DISTANCEDATASPACE_H__
