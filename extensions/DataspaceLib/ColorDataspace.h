/* 
 * Jamoma DataspaceLib: ColorDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __COLORDATASPACE_H__
#define __COLORDATASPACE_H__

#include "TTDataspace.h"

/****************************************************************************************************/
// Class Specifications

class CMYUnit : public TTObject, public TTDataspaceUnit {
	TTCLASS_SETUP(CMYUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class HSLUnit : public TTObject, public TTDataspaceUnit {
	TTCLASS_SETUP(HSLUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class HSVUnit : public TTObject, public TTDataspaceUnit {
	TTCLASS_SETUP(HSVUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class RGBUnit : public TTObject, public TTDataspaceUnit {
	TTCLASS_SETUP(RGBUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class RGB8Unit : public TTObject, public TTDataspaceUnit {
	TTCLASS_SETUP(RGB8Unit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

// Specification of our base class
class ColorDataspace : public TTObject, public TTDataspace {
	TTCLASS_SETUP(ColorDataspace)
};


#endif // __COLORDATASPACE_H__
