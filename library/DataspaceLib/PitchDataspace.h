/* 
 * Jamoma DataspaceLib: PitchDataspace
 * Copyright © 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __PITCHDATASPACE_H__
#define __PITCHDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications


class SpeedUnit : DataspaceUnit{
	public:
		SpeedUnit();
		~SpeedUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class MidiPitchUnit : DataspaceUnit{
	public:
		MidiPitchUnit();
		~MidiPitchUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class FrequencyUnit : DataspaceUnit{
	public:
		FrequencyUnit();
		~FrequencyUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class CentUnit : DataspaceUnit{
	public:
		CentUnit();
		~CentUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

// Specification of our base class
class PitchDataspace : DataspaceLib{
	public:
		PitchDataspace();
		~PitchDataspace();
};


#endif // __PITCHDATASPACE_H__
