/* 
 * Jamoma DataspaceLib: OrientationDataspace
 * Copyright � 2011, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __ORIENTATIONDATASPACE_H__
#define __ORIENTATIONDATASPACE_H__

#include "TTDataspace.h"


/****************************************************************************************************/
// Class Specifications

class QuaternionUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(QuaternionUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class EulerUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(EulerUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class AxisUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(AxisUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class OrientationDataspace : public TTDataObject, public TTDataspace {
	TTCLASS_SETUP(OrientationDataspace)
};

#endif // __ORIENTATIONDATASPACE_H__
