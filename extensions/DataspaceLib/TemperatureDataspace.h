/* 
 * Jamoma DataspaceLib: TemperatureDataspace
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TEMPERATUREDATASPACE_H__
#define __TEMPERATUREDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class CelsiusUnit : DataspaceUnit{
	TTCLASS_SETUP(CelsiusUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class FahrenheitUnit : DataspaceUnit{
	TTCLASS_SETUP(FahrenheitUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class KelvinUnit : DataspaceUnit{
	TTCLASS_SETUP(KelvinUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class TemperatureDataspace : DataspaceLib {
	TTCLASS_SETUP(TemperatureDataspace)
};


#endif // __TEMPERATUREDATASPACE_H__
