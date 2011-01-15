/* 
 * Jamoma DataspaceLib: AngleDataspac.h
 * Copyright © 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __ANGLEDATASPACE_H__
#define __ANGLEDATASPACE_H__

#include "MaxDataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class RadianUnit : MaxDataspaceUnit{
	public:
		RadianUnit();
		~RadianUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class DegreeUnit : MaxDataspaceUnit{
	public:
		DegreeUnit();
		~DegreeUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class AngleDataspace : MaxDataspaceLib{
	public:
		AngleDataspace();
		~AngleDataspace();
};


#endif // __ANGLEDATASPACE_H__
