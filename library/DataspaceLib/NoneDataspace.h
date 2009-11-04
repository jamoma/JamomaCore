/* 
 * Jamoma DataspaceLib: NoneDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __NONE_DATASPACE_H__
#define __NONE_DATASPACE_H__

#include "DataspaceLib.h"

#define DEFAULT_SAMPLE_RATE	44100.0

/****************************************************************************************************/
// Class Specifications

class NoneUnit : DataspaceUnit{
	public:
		NoneUnit();
		~NoneUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class NoneDataspace : DataspaceLib{
	public:
		NoneDataspace();
		~NoneDataspace();
};


#endif // __NONE_DATASPACE_H__
