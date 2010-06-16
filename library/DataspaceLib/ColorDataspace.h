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
	public:
		CMYUnit();
		~CMYUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class HSLUnit : DataspaceUnit{
	public:
		HSLUnit();
		~HSLUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class HSVUnit : DataspaceUnit{
	public:
		HSVUnit();
		~HSVUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class RGBUnit : DataspaceUnit{
	public:
		RGBUnit();
		~RGBUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class RGB8Unit : DataspaceUnit{
	public:
		RGB8Unit();
		~RGB8Unit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

// Specification of our base class
class ColorDataspace : DataspaceLib{
	public:
		ColorDataspace();
		~ColorDataspace();
};


#endif // __COLORDATASPACE_H__
