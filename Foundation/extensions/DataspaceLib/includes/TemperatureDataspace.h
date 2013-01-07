/* 
 * Jamoma DataspaceLib: TemperatureDataspace
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TEMPERATUREDATASPACE_H__
#define __TEMPERATUREDATASPACE_H__

#include "TTDataspace.h"


/****************************************************************************************************/
// Class Specifications

class CelsiusUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(CelsiusUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class FahrenheitUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(FahrenheitUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class KelvinUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(KelvinUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class TemperatureDataspace : public TTDataObjectBase, public TTDataspace {
	TTCLASS_SETUP(TemperatureDataspace)
    
    /**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TEMPERATUREDATASPACE_H__
