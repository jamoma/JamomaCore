/* 
 * Jamoma DataspaceLib: TimeDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TIME_DATASPACE_H__
#define __TIME_DATASPACE_H__

#include "MaxDataspaceLib.h"

/****************************************************************************************************/
// Class Specifications

class MillisecondUnit : MaxDataspaceUnit{
	public:
		MillisecondUnit();
		~MillisecondUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class SampleUnit : MaxDataspaceUnit{
	// note that we aren't using the SI base unit for time, because the SI base unit for time is a bit wacky
	// we are just going to use ms because that is the native unit for Max
	private:
		//long	sample_rate;	///< samples per second
		double	msr;			///< samples per millisecond
		double	rmsr;			///< reciprocal of msr

	public:
		SampleUnit();
		~SampleUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class SecondUnit : MaxDataspaceUnit{
	public:
		SecondUnit();
		~SecondUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class UpdaterateUnit : MaxDataspaceUnit{
	public:
		UpdaterateUnit();
		~UpdaterateUnit();
	
	void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
	void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class BpmUnit : MaxDataspaceUnit{
	public:
	BpmUnit();
	~BpmUnit();
	
	void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
	void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class TimeDataspace : MaxDataspaceLib{
	public:
		TimeDataspace();
		~TimeDataspace();
};


#endif // __TIME_DATASPACE_H__
