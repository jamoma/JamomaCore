/* 
 * Jamoma DataspaceLib: TemperatureDataspace
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TEMPERATUREDATASPACE_H__
#define __TEMPERATUREDATASPACE_H__

#include "MaxDataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class CelsiusUnit : MaxDataspaceUnit{
	public:
		CelsiusUnit();
		~CelsiusUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class FahrenheitUnit : MaxDataspaceUnit{
	public:
		FahrenheitUnit();
		~FahrenheitUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class KelvinUnit : MaxDataspaceUnit{
	public:
		KelvinUnit();
		~KelvinUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class TemperatureDataspace : MaxDataspaceLib{
	public:
		TemperatureDataspace();
		~TemperatureDataspace();
};


#endif // __TEMPERATUREDATASPACE_H__
