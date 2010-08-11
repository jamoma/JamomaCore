/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __POSITIONDATASPACE_H__
#define __POSITIONDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class Cartesian3DUnit : DataspaceUnit{
	public:
		Cartesian3DUnit();
		~Cartesian3DUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class Cartesian2DUnit : DataspaceUnit{
	public:
		Cartesian2DUnit();
		~Cartesian2DUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class SphericalUnit : DataspaceUnit{
	public:
		SphericalUnit();
		~SphericalUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class PolarUnit : DataspaceUnit{
	public:
		PolarUnit();
		~PolarUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};
		
class OpenGlUnit : DataspaceUnit{
	public:
		OpenGlUnit();
		~OpenGlUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);

};

class CylindricalUnit : DataspaceUnit{
	public:
		CylindricalUnit();
		~CylindricalUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);

};



// Specification of our base class
class PositionDataspace : DataspaceLib{
	public:
		PositionDataspace();
		~PositionDataspace();
};

#endif // __POSITIONDATASPACE_H__
