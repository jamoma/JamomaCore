/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __DISTANCEDATASPACE_H__
#define __DISTANCEDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class CentimeterUnit : DataspaceUnit{
	public:
		CentimeterUnit();
		~CentimeterUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class InchUnit : DataspaceUnit{
	public:
		InchUnit();
		~InchUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class FootUnit : DataspaceUnit{
	public:
		FootUnit();
		~FootUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class MeterUnit : DataspaceUnit{
	public:
		MeterUnit();
		~MeterUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class DistanceDataspace : DataspaceLib{
	public:
		DistanceDataspace();
		~DistanceDataspace();
};


#endif // __DISTANCEDATASPACE_H__
