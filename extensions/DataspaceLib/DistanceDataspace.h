/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __DISTANCEDATASPACE_H__
#define __DISTANCEDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class CentimeterUnit : DataspaceUnit{
	TTCLASS_SETUP(CentimeterUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class InchUnit : DataspaceUnit{
	TTCLASS_SETUP(InchUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class FootUnit : DataspaceUnit{
	TTCLASS_SETUP(FootUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class MeterUnit : DataspaceUnit{
	TTCLASS_SETUP(MeterUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class DistanceDataspace : DataspaceLib {
	TTCLASS_SETUP(DistanceDataspace)
};


#endif // __DISTANCEDATASPACE_H__
