/* 
 * Jamoma DataspaceLib: GainDataspace
 * Copyright © 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __GAINDATASPACE_H__
#define __GAINDATASPACE_H__

#include "MaxDataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class LinearAmplitudeUnit : MaxDataspaceUnit{
	public:
		LinearAmplitudeUnit();
		~LinearAmplitudeUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


class MidiGainUnit : MaxDataspaceUnit{
	public:
		MidiGainUnit();
		~MidiGainUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


class DecibelUnit : MaxDataspaceUnit{
	public:
		DecibelUnit();
		~DecibelUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class GainDataspace : MaxDataspaceLib{
	public:
		GainDataspace();
		~GainDataspace();
};


#endif // __GAINDATASPACE_H__
