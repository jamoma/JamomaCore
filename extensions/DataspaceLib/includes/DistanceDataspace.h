/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __DISTANCEDATASPACE_H__
#define __DISTANCEDATASPACE_H__

#include "TTDataspace.h"


/****************************************************************************************************/
// Class Specifications

class CentimeterUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(CentimeterUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class InchUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(InchUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class FootUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(FootUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class MeterUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(MeterUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class DistanceDataspace : public TTDataObject, public TTDataspace {
	TTCLASS_SETUP(DistanceDataspace)
    
    /**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __DISTANCEDATASPACE_H__
