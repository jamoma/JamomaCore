/* 
 * Jamoma DataspaceLib: TimeDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TIME_DATASPACE_H__
#define __TIME_DATASPACE_H__

#include "DataspaceLib.h"

#define DEFAULT_SAMPLE_RATE	44100.0

/****************************************************************************************************/
// Class Specifications

class MillisecondUnit : DataspaceUnit{
	public:
		MillisecondUnit();
		~MillisecondUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class SampleUnit : DataspaceUnit{
	// note that we aren't using the SI base unit for time, because the SI base unit for time is a bit wacky
	// we are just going to use ms because that is the native unit for Max
	private:
		long	sample_rate;	///< samples per second
		double	msr;			///< samples per millisecond
		double	rmsr;			///< reciprocal of msr

	public:
		SampleUnit();
		~SampleUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};

class SecondUnit : DataspaceUnit{
	public:
		SecondUnit();
		~SecondUnit();
		
		void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output);
		void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms);
};


// Specification of our base class
class TimeDataspace : DataspaceLib{
	public:
		TimeDataspace();
		~TimeDataspace();
};


#endif // __TIME_DATASPACE_H__
