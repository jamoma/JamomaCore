/* 
 * Jamoma RampLib Base Class
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __RAMPLIB_H__
#define __RAMPLIB_H__

#include "JamomaTypes.h"
#include "TTObject.h"
#include "FunctionLib.h"

typedef void (*RampUnitCallback)(void *, long, double *);


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class JAMOMA_EXPORT RampUnit : public TTObject {
	private:
		TTSymbol			attrFunction;		///< The name of the functionUnit

		/** Attribute setter. */
		TTErr setFunction(const TTValue& functionName);

	protected:
		RampUnitCallback	callback;			///< usually a function in a Max external
		void				*baton;				///< usually a pointer to the Max external's instance
		TTFloat64			*startValue;
		TTFloat64			*targetValue;
		TTFloat64			*currentValue;
		TTFloat64			normalizedValue;	///< normalized current progress in the ramp
		TTUInt32			numValues;
		FunctionUnit		*functionUnit;		///< The actual functionUnit object defined by attrFunction

		/** memory allocation -- sends a message "numValuesChanged" to subclasses after this has run */
		void RampUnit::setNumValues(TTUInt32 newNumValues);

	public:
		/** constructor */
		RampUnit(const char* functionName, RampUnitCallback aCallbackMethod, void *aBaton);
		
		/** destructor */
		virtual ~RampUnit();
		
		TTErr getFunctionParameterNames(TTSymbol& parameterName, TTValue& names);
		TTErr setFunctionParameterValue(TTSymbol& parameterName, const TTValue& newValue);
		TTErr getFunctionParameterValue(TTSymbol& parameterName, TTValue& value);
		
		/** start a ramp over time in milliseconds */
		virtual void go(TTUInt32 numValues, TTFloat64 *values, TTFloat64 time) = 0;

		/** set the current value(s), from which the next ramp will begin. */
		void set(TTUInt32 numValues, TTFloat64 *values);

		/** halt any current ramping */
		virtual void stop() = 0;

		/** called every time a new ramp value should be sent */
		virtual void tick() = 0;
};


class JAMOMA_EXPORT RampLib {
public:
	/** Instantiate a function by name */
	static JamomaError createUnit(const TTSymbol& unitName, RampUnit **unit, RampUnitCallback callback, void* baton);

	/**	Return a list of all available functions. */
	static void getUnitNames(TTValue& unitNames);
};


#endif // __RAMPLIB_H__
