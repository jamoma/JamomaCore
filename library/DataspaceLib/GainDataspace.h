/* 
 * Jamoma DataspaceLib: GainDataspace
 * Copyright © 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __GAINDATASPACE_H__
#define __GAINDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class LinearAmplitudeUnit : DataspaceUnit{
	public:
		LinearAmplitudeUnit();
		~LinearAmplitudeUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};


class MidiGainUnit : DataspaceUnit{
	public:
		MidiGainUnit();
		~MidiGainUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};


class DecibelUnit : DataspaceUnit{
	public:
		DecibelUnit();
		~DecibelUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};


// Specification of our base class
class GainDataspace : DataspaceLib{
	public:
		GainDataspace();
		~GainDataspace();
};


#endif // __GAINDATASPACE_H__
