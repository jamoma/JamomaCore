/* 
 * Jamoma DataspaceLib: TemperatureDataspace
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TEMPERATUREDATASPACE_H__
#define __TEMPERATUREDATASPACE_H__

#include "DataspaceLib.h"


/*
	The neutral unit for the TemperatureDataspace is Kelvin, because that is an SI Base Unit
*/


/****************************************************************************************************/
// Class Specifications

class CelsiusUnit : DataspaceUnit{
	public:
		CelsiusUnit();
		~CelsiusUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class FahrenheitUnit : DataspaceUnit{
	public:
		FahrenheitUnit();
		~FahrenheitUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class KelvinUnit : DataspaceUnit{
	public:
		KelvinUnit();
		~KelvinUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class TemperatureDataspace : DataspaceLib{
	public:
		TemperatureDataspace();					///< constructor
		~TemperatureDataspace();				///< destructor - free memory, etc.
};


#endif // __TEMPERATUREDATASPACE_H__
