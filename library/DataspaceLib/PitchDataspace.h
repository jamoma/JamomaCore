/* 
 * Jamoma DataspaceLib: PitchDataspace
 * Copyright © 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __PITCHDATASPACE_H__
#define __PITCHDATASPACE_H__

#include "MaxDataspaceLib.h"


/****************************************************************************************************/
// Class Specifications


class SpeedUnit : MaxDataspaceUnit{
	public:
		SpeedUnit();
		~SpeedUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class MidiPitchUnit : MaxDataspaceUnit{
	public:
		MidiPitchUnit();
		~MidiPitchUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class FrequencyUnit : MaxDataspaceUnit{
	public:
		FrequencyUnit();
		~FrequencyUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class CentUnit : MaxDataspaceUnit{
	public:
		CentUnit();
		~CentUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

// Specification of our base class
class PitchDataspace : MaxDataspaceLib{
	public:
		PitchDataspace();
		~PitchDataspace();
};


#endif // __PITCHDATASPACE_H__
