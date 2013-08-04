/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #TemperatureDataspace converts between different measurement untis describing temperature.
 *
 * @details The neutral unit of the temperature dataspace is _Kelvin (K)_.
 *
 * @authors Nils Peters, Trond Lossius, Tim Peters, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TEMPERATUREDATASPACE_H__
#define __TEMPERATUREDATASPACE_H__

#include "TTDataspace.h"


/** Base class for the temperature dataspace, provides dataspace support for converting temperatures between Celsius, Fahrenheit and Kelvin.
 *
 * @details: Kelvin is the neutral data unit of this dataspace.
 */
class TemperatureDataspace : public TTDataObjectBase, public TTDataspace {
	TTCLASS_SETUP(TemperatureDataspace)
    
    /** Unit test for the temperature dataspace.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};


/** Converts temperatures to and from Celsius.
 *
 * @details This unit is denoted as "C" or "Celsius".
 */
class CelsiusUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(CelsiusUnit)
	
public:
	
	/** Convert from Celsius to neutral unit.
	 @param input				Input temperature described using Celsius .
	 @param output				Returned temperature, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to Celsius.
	 @param input				Input temperature described using the neutral unit.
	 @param output				Returned temperature, described using Celsius.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts temperatures to and from Fahrenheit.
 *
 * @details This unit is denoted as "F" or "Fahrenheit".
 */
class FahrenheitUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(FahrenheitUnit)
	
public:
	
	/** Convert from Fahrenheit to neutral unit.
	 @param input				Input temperature described using Fahrenheit .
	 @param output				Returned temperature, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to Fahrenheit.
	 @param input				Input temperature described using the Fahrenheit unit.
	 @param output				Returned temperature, described using radians.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts temperatures to and from Kelvin.
 *
 * @details This unit is denoted as "K" or "Kelvin".
 */
class KelvinUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(KelvinUnit)
	
public:
	
	/** Convert from Kelvin to neutral unit.
	 @param input				Input temperature described using Kelvin .
	 @param output				Returned temperature, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to Kelvin.
	 @param input				Input temperature described using the neutral unit.
	 @param output				Returned temperature, described using Kelvin.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


#endif // __TEMPERATUREDATASPACE_H__
