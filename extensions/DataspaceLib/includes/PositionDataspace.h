/* 
 * Jamoma DataspaceLib: PositionDataspace
 * Copyright � 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __POSITIONDATASPACE_H__
#define __POSITIONDATASPACE_H__

#include "TTDataspace.h"


/****************************************************************************************************/
// Class Specifications

class Cartesian3DUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(Cartesian3DUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class Cartesian2DUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(Cartesian2DUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class SphericalUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(SphericalUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class PolarUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(PolarUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};
		
class OpenGlUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(OpenGlUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class CylindricalUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(CylindricalUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};



// Specification of our base class
class PositionDataspace : public TTDataObject, public TTDataspace {
	TTCLASS_SETUP(PositionDataspace)
};

#endif // __POSITIONDATASPACE_H__
