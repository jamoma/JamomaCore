/* 
 * Jamoma DataspaceLib: NoneDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __NONE_DATASPACE_H__
#define __NONE_DATASPACE_H__

#include "MaxDataspaceLib.h"

#define DEFAULT_SAMPLE_RATE	44100.0

/****************************************************************************************************/
// Class Specifications

class NoneUnit : MaxDataspaceUnit{
	public:
		NoneUnit();
		~NoneUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class NoneDataspace : MaxDataspaceLib{
	public:
		NoneDataspace();
		~NoneDataspace();
};


#endif // __NONE_DATASPACE_H__
