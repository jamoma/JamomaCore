/* 
 * Jamoma DataspaceLib: PitchDataspace
 * Copyright � 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __PITCHDATASPACE_H__
#define __PITCHDATASPACE_H__

#include "TTDataspace.h"


/****************************************************************************************************/
// Class Specifications


class SpeedUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(SpeedUnit)
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

class FrequencyUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(FrequencyUnit)
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

// Specification of our base class
class PitchDataspace : public TTDataObject, public TTDataspace {
	TTCLASS_SETUP(PitchDataspace)
};


#endif // __PITCHDATASPACE_H__
