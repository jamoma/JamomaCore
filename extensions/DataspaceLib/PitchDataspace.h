/* 
 * Jamoma DataspaceLib: PitchDataspace
 * Copyright � 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __PITCHDATASPACE_H__
#define __PITCHDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications


class SpeedUnit : DataspaceUnit{
	TTCLASS_SETUP(SpeedUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class MidiPitchUnit : DataspaceUnit{
	TTCLASS_SETUP(MidiPitchUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class FrequencyUnit : DataspaceUnit{
	TTCLASS_SETUP(FrequencyUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class CentUnit : DataspaceUnit{
	TTCLASS_SETUP(CentUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

// Specification of our base class
class PitchDataspace : DataspaceLib {
	TTCLASS_SETUP(PitchDataspace)
};


#endif // __PITCHDATASPACE_H__
