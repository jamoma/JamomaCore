/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #ColorDataspace converts between different measurement units describing colors.
 *
 * @details Possible units are CMY, HSL, HSV, RGB and RGB8. The neutral unit of the color dataspace is RGB where each of the color values is normalised to the [0, 1] range.@n
 * @n
 * @n
 * Code for RGB <-> HSV convertion is in part based on source code provided by Marcelo Gattass:@n
 * http://www.tecgraf.puc-rio.br/~mgattass/color/ColorIndex.html @n
 * Last retrieved 2009-07-30 @n
 * @n
 * License: @n
 * @n
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: @n
 * @n
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. @n
 * @n
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * @authors Tim Place, Trond Lossius, Nils Peters, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __COLORDATASPACE_H__
#define __COLORDATASPACE_H__

#include "TTDataspace.h"


/** Base class for the color dataspace, provides dataspace support for converting colors between CMY, HSL, HSV, RGB and RGB8.
 *
 * @details: RGB is the neutral data unit of this dataspace.
 */
class ColorDataspace : public TTDataObjectBase, public TTDataspace {
	TTCLASS_SETUP(ColorDataspace)
    
    /** Unit test for the color dataspace.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};


/** Converts colors to and from CMY (Cyan - Magenta - Yellow).
 *
 * @details This unit is denoted as "cmy".
 */
class CMYUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(CMYUnit)
	
public:
	
	/** Convert from CMY to neutral unit.
	 @param input				Input color described using CMY .
	 @param output				Returned color, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	
	/** Convert from neutral unit to CMY.
	 @param input				Input color described using the neutral unit.
	 @param output				Returned color, described using CMY.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts colors to and from HSL (Hue - Saturation - Lighness).
 *
 * @details This unit is denoted as "hsl".
 */
class HSLUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(HSLUnit)
	
public:
	
	/** Convert from HSL to neutral unit.
	 @param input				Input color described using HSL .
	 @param output				Returned color, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	
	/** Convert from neutral unit to HSL.
	 @param input				Input angle described using the neutral unit.
	 @param output				Returned color, described using HSL.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts colors to and from HSV (Hue - Saturation - TODO: What is V?).
 *
 * @details This unit is denoted as "hsv".
 */
class HSVUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(HSVUnit)
	
public:
	
	/** Convert from HSV to neutral unit.
	 @param input				Input color described using HSV .
	 @param output				Returned color, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	
	/** Convert from neutral unit to HSV.
	 @param input				Input color described using the neutral unit.
	 @param output				Returned color, described using HSV.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts colors to and from RGB (Red - Green - Blue in the normalised [0, 1] range).
 *
 * @details This unit is denoted as "rgb".
 */
class RGBUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(RGBUnit)
	
public:
	
	/** Convert from radians to neutral unit.
	 @param input				Input color described using RGB .
	 @param output				Returned color, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	
	/** Convert from neutral unit to RGB.
	 @param input				Input color described using the neutral unit.
	 @param output				Returned color, described using RGB.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts colors to and from RGB8 (Red - Green - Blue in the 8-bit [0, 255] range).
 *
 * @details This unit is denoted as "rgb8".
 */
class RGB8Unit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(RGB8Unit)
	
public:
	
	/** Convert from RGB8 to neutral unit.
	 @param input				Input color described using RGB8 .
	 @param output				Returned color, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	
	/** Convert from neutral unit to RGB8.
	 @param input				Input color described using the neutral unit.
	 @param output				Returned color, described using RGB8.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


#endif // __COLORDATASPACE_H__
