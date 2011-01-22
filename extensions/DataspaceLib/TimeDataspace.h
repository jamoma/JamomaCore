/* 
 * Jamoma DataspaceLib: TimeDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TIME_DATASPACE_H__
#define __TIME_DATASPACE_H__

#include "TTDataspace.h"

/****************************************************************************************************/
// Class Specifications

class MillisecondUnit : public TTObject, public TTDataspaceUnit {
	TTCLASS_SETUP(MillisecondUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class SampleUnit : public TTObject, public TTDataspaceUnit {
	// note that we aren't using the SI base unit for time, because the SI base unit for time is a bit wacky
	// we are just going to use ms because that is the native unit for Max
	private:
		long	sample_rate;	///< samples per second
		double	msr;			///< samples per millisecond
		double	rmsr;			///< reciprocal of msr

	TTCLASS_SETUP(SampleUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class SecondUnit : public TTObject, public TTDataspaceUnit {
	TTCLASS_SETUP(SecondUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class UpdaterateUnit : public TTObject, public TTDataspaceUnit {
	TTCLASS_SETUP(UpdaterateUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class BpmUnit : public TTObject, public TTDataspaceUnit {
	TTCLASS_SETUP(BpmUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class TimeDataspace : public TTObject, public TTDataspace {
	TTCLASS_SETUP(TimeDataspace)
};


#endif // __TIME_DATASPACE_H__
