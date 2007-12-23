/* 
 * Jamoma DataspaceLib: PitchDataspace
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __PITCHDATASPACE_H__
#define __PITCHDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class MidiPitchUnit : DataspaceUnit{
	public:
		MidiPitchUnit();
		~MidiPitchUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class FrequencyUnit : DataspaceUnit{
	public:
		FrequencyUnit();
		~FrequencyUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class PitchDataspace : DataspaceLib{
	public:
		PitchDataspace();
		~PitchDataspace();
};


#endif // __PITCHDATASPACE_H__
