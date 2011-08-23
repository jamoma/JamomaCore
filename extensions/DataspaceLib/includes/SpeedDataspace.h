/* 
 * Jamoma DataspaceLib: SpeedDataspace
 * Copyright © 2011
 * Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPEEDDATASPACE_H__
#define __SPEEDDATASPACE_H__

#include "TTDataspace.h"


/****************************************************************************************************/
// Class Specifications

class MilesPerHourUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(MilesPerHourUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class KilometerPerHourUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(KilometerPerHourUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class FootPerSecondUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(FootPerSecondUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class KnotUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(KnotUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class MeterPerSecondUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(MeterPerSecondUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class SpeedDataspace : public TTDataObject, public TTDataspace {
	TTCLASS_SETUP(SpeedDataspace)
    
    /**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __SPEEDDATASPACE_H__
