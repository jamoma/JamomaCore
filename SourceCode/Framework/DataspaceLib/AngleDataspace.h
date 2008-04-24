/* 
 * Jamoma DataspaceLib: AngleDataspac.h
 * Copyright © 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __ANGLEDATASPACE_H__
#define __ANGLEDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class RadianUnit : DataspaceUnit{
	public:
		RadianUnit();
		~RadianUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class DegreeUnit : DataspaceUnit{
	public:
		DegreeUnit();
		~DegreeUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class AngleDataspace : DataspaceLib{
	public:
		AngleDataspace();
		~AngleDataspace();
};


#endif // __ANGLEDATASPACE_H__
