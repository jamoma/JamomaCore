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
	public:
		CentimeterUnit();
		~CentimeterUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class InchUnit : DataspaceUnit{
	public:
		InchUnit();
		~InchUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class FootUnit : DataspaceUnit{
	public:
		FootUnit();
		~FootUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class MeterUnit : DataspaceUnit{
	public:
		MeterUnit();
		~MeterUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};


// Specification of our base class
class DistanceDataspace : DataspaceLib{
	public:
		DistanceDataspace();
		~DistanceDataspace();
};


#endif // __DISTANCEDATASPACE_H__
