/* 
 * Jamoma DataspaceLib: ColorDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __COLORDATASPACE_H__
#define __COLORDATASPACE_H__

#include "DataspaceLib.h"

/****************************************************************************************************/
// Class Specifications

class CMYUnit : DataspaceUnit{
	TTCLASS_SETUP(CMYUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class HSLUnit : DataspaceUnit{
	TTCLASS_SETUP(HSLUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class HSVUnit : DataspaceUnit{
	TTCLASS_SETUP(HSVUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class RGBUnit : DataspaceUnit{
	TTCLASS_SETUP(RGBUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

class RGB8Unit : DataspaceUnit{
	TTCLASS_SETUP(RGB8Unit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};

// Specification of our base class
class ColorDataspace : DataspaceLib {
	TTCLASS_SETUP(ColorDataspace)
};


#endif // __COLORDATASPACE_H__
