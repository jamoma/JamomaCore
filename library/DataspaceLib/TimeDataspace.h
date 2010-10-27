/* 
 * Jamoma DataspaceLib: TimeDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TIME_DATASPACE_H__
#define __TIME_DATASPACE_H__

#include "DataspaceLib.h"

/****************************************************************************************************/
// Class Specifications

class MillisecondUnit : DataspaceUnit{
	public:
		MillisecondUnit();
		~MillisecondUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class SampleUnit : DataspaceUnit{
	// note that we aren't using the SI base unit for time, because the SI base unit for time is a bit wacky
	// we are just going to use ms because that is the native unit for Max
	private:
		//long	sample_rate;	///< samples per second
		double	msr;			///< samples per millisecond
		double	rmsr;			///< reciprocal of msr

	public:
		SampleUnit();
		~SampleUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class SecondUnit : DataspaceUnit{
	public:
		SecondUnit();
		~SecondUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class UpdaterateUnit : DataspaceUnit{
	public:
		UpdaterateUnit();
		~UpdaterateUnit();
	
	void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
	void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class BpmUnit : DataspaceUnit{
	public:
	BpmUnit();
	~BpmUnit();
	
	void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
	void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};


// Specification of our base class
class TimeDataspace : DataspaceLib{
	public:
		TimeDataspace();
		~TimeDataspace();
};


#endif // __TIME_DATASPACE_H__
