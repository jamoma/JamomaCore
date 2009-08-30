/* 
 * Jamoma DataspaceLib: GainDataspace
 * Copyright � 2007, Trond Lossius
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
	TTCLASS_SETUP(LinearAmplitudeUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class MidiGainUnit : DataspaceUnit{
	TTCLASS_SETUP(MidiGainUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class DecibelUnit : DataspaceUnit{
	TTCLASS_SETUP(DecibelUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class GainDataspace : DataspaceLib {
	TTCLASS_SETUP(GainDataspace)
};


#endif // __GAINDATASPACE_H__
