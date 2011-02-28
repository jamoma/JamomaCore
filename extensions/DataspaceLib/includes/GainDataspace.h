/* 
 * Jamoma DataspaceLib: GainDataspace
 * Copyright � 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __GAINDATASPACE_H__
#define __GAINDATASPACE_H__

#include "TTDataspace.h"


/****************************************************************************************************/
// Class Specifications

class LinearAmplitudeUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(LinearAmplitudeUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class MidiGainUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(MidiGainUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


class DecibelUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(DecibelUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class GainDataspace : public TTDataObject, public TTDataspace {
	TTCLASS_SETUP(GainDataspace)
};


#endif // __GAINDATASPACE_H__
