/* 
 * Jamoma DSP Operator Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_OPERATOR_H__
#define __TT_OPERATOR_H__

#include "TTDSP.h"


/**	TTOperator performs basic mathematical operations on an input signal, or a pair of input signals */
class TTOperator : TTAudioObject {
	TTCLASS_SETUP(TTOperator)

	TTSymbolPtr		mOperator;				///< The type of calculation to perform
	TTFloat64		mOperand;				///< The right-hand value of the calculation
	TTBoolean		mOperandIsInteger;		///< Set to true if there is no fractional part
	TTBoolean		mOperandIsPowerOfTwo;	///< Set to true is the operand is a power of two to optimize some operations

	
	TTErr calculateAdd(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	TTErr calculateSubtract(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	TTErr calculateMultiply(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	TTErr calculateDivide(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	TTErr calculateModulo(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	TTErr calculateSqrt(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	
	/**	A standard audio processing method as used by TTBlue objects. */
	TTErr processAdd				(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAddSignal			(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	TTErr processSubtract			(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processSubtractSignal		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	TTErr processMultiply			(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processMultiplySignal		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	TTErr processDivide				(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processDivideSignal		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	TTErr processModulo				(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processModuloSignal		(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	TTErr processSqrt				(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:
	
	/** setter for the operator attribute. */
	TTErr setOperator(const TTValue& newValue);
	
	/** setter for the operand attribute. */
	TTErr setOperand(const TTValue& newValue);
};


#endif // __TT_OPERATOR_H__
