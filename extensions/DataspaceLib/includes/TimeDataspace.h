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


class BarkUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(BarkUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class BpmUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(BpmUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};



class CentUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(CentUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class MelUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(MelUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class MidiPitchUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(MidiPitchUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class MillisecondUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(MillisecondUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class SampleUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(SampleUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class SecondUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(SecondUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class SpeedUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(SpeedUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class FrequencyUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(FrequencyUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class TimeDataspace : public TTDataObject, public TTDataspace {
	TTCLASS_SETUP(TimeDataspace)
    
    /**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TIME_DATASPACE_H__
