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
private:
	TTSymbol*		attrOperator;			///< The type of calculation to perform.
	TTFloat64		attrOperand;			///< The right-hand value of the calculation.
	TTBoolean		operandIsInteger;		///< Set to true if there is no fractional part.
	TTBoolean		operandIsPowerOfTwo;	///< Set to true is the operand is a power of two to optimize some operations.

	/**	A standard audio processing method as used by TTBlue objects.
		Performs the mathematical operation with a constant as defined using the 
		operand attribute. */
	TTErr processAddConstant(TTAudioSignal& in, TTAudioSignal& out);
	TTErr processSubtractConstant(TTAudioSignal& in, TTAudioSignal& out);
	TTErr processMultiplyConstant(TTAudioSignal& in, TTAudioSignal& out);
	TTErr processDivideConstant(TTAudioSignal& in, TTAudioSignal& out);
	TTErr processModuloConstant(TTAudioSignal& in, TTAudioSignal& out);
	
	/**	An audio processing method that uses a second input signal to define the operand.  */
	TTErr processAddSignal(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out, TTAudioSignal&);
	TTErr processSubtractSignal(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out, TTAudioSignal&);
	TTErr processMultiplySignal(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out, TTAudioSignal&);
	TTErr processDivideSignal(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out, TTAudioSignal&);
	TTErr processModuloSignal(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out, TTAudioSignal&);

public:

	/**	Constructor. */
	TTOperator(TTUInt16 newMaxNumChannels);

	/**	Destructor. */
	~TTOperator();
	
	
	/** setter for the operator attribute. */
	TTErr setOperator(const TTValue& newValue);
	
	/** setter for the operand attribute. */
	TTErr setOperand(const TTValue& newValue);
		
};


#endif // __TT_OPERATOR_H__
