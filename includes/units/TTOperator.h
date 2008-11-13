/* 
 * TTBlue Operator Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_OPERATOR_H__
#define __TT_OPERATOR_H__


#include "TTAudioObject.h"

/**	TTOperator performs basic mathematical operations on an input signal, 
	or a pair of input signals */
class TTEXPORT TTOperator : public TTAudioObject {
protected:
	TTSymbol*		operatorAttribute;		///< The type of calculation to perform. (The identifier 'operator' is reserved by C++).
	TTFloat64		operand;				///< The right-hand value of the calculation.
	TTBoolean		operandIsInteger;		///< Set to true if there is no fractional part.
	TTBoolean		operandIsPowerOfTwo;	///< Set to true is the operand is a power of two to optimize some operations.

	/**	A standard audio processing method as used by TTBlue objects. */
	TTErr processAdd				(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAddConstant		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAddSignal			(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	TTErr processSubtract			(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processSubtractConstant	(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processSubtractSignal		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	TTErr processMultiply			(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processMultiplyConstant	(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processMultiplySignal		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	TTErr processDivide				(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processDivideConstant		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processDivideSignal		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	TTErr processModulo				(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processModuloConstant		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processModuloSignal		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
public:

	/**	Constructor. */
	TTOperator(TTUInt16 newMaxNumChannels);

	/**	Destructor. */
	virtual ~TTOperator();
	
	/** setter for the operator attribute. */
	TTErr setoperator(const TTValue& newValue);
	
	/** setter for the operand attribute. */
	TTErr setoperand(const TTValue& newValue);
};


#endif // __TT_OPERATOR_H__
