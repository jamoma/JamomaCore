/* 
 * TTBlue Data Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_DATA_OBJECT_H__
#define __TT_DATA_OBJECT_H__

#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"

// Forward declaration of TTAudioObject for the typedef that follows...
class TTDataObject;
class TTMatrixArray;

/**	A type that can be used to store a pointer to a calculate method (which calculates an array of matrices). */
typedef TTErr (TTDataObject::*TTMatrixCalculateMethod)(const TTMatrixArray* inputMatrices, TTMatrixArray* outputMatrices);

#define setMatrixCalculateMethod(methodName)	setMatrixCalculate((TTMatrixCalculateMethod)& thisTTClass ::methodName )


/****************************************************************************************************/
// Class Specification

/**	TTDataObject is the base class for all data generating and processing objects.
	It still has knowledge and support for sample-rates, but not channel counts or vector processing.
 */
class TTFOUNDATION_EXPORT TTDataObject : public TTObject {
protected:
	TTMatrixCalculateMethod		mMatrixCalculateMethod;			///< This function pointer points to the active (non-bypass) calculate routine.
	TTMatrixCalculateMethod		mCurrentMatrixCalculateMethod;	///< This function pointer always points to the current calculate routine.
	TTBoolean					mBypass;						///< Are we bypassing the matrix calculation?
	TTMatrixArray*				mInputArray;					///< If the calculate method is passed a matrix, rather than an array of matrices, we wrap it in this array.
	TTMatrixArray*				mOutputArray;					///< If the calculate method is passed a matrix, rather than an array of matrices, we wrap it in this array.
	TTFloat64					mStartProcessingTime;			///< The time at which this object's process method was last invoked (for benchmarking)
	TTFloat64					mAccumulatedProcessingTime;		///< The amount of time spent in this object's process method (for benchmarking)
	TTFloat64					mAccumulatedProcessingCalls;	///< The number of times the process method has been called (for benchmarking)
	TTPtrSizedInt				mReserved1;						///< Reserved -- May be used for something in the future without changing the size of the struct.
	TTPtrSizedInt				mReserved2;						///< Reserved -- May be used for something in the future without changing the size of the struct.

protected:
	//** Constructor.	*/
	TTDataObject(TTValue& arguments);

	/** Destructor. */
	virtual ~TTDataObject();	

	/** Set the sample calculate routine to point to a method that is defined as an arg to this function.	*/
	TTErr setMatrixCalculate(TTMatrixCalculateMethod newMatrixCalculateMethod);
	
	/** Bypass the audio processing routine and copy all input samples to the output unchanged.				*/
	TTErr setBypass(const TTValue& value);

	// Built-in matrix calculation methods.
	TTErr bypassMatrixCalculate(const TTMatrixArray* inputs, TTMatrixArray* outputs);
	TTErr defaultMatrixCalculateMethod(const TTMatrixArray* inputs, TTMatrixArray* outputs);

	// Messages for accessing performance benchmarking data
	TTErr resetBenchmarking();
	TTErr getProcessingBenchmark(TTValueRef v);
	
public:
	TTErr calculate(const TTMatrixArray* inputs, TTMatrixArray* outputs);
	TTErr calculate(const TTMatrix& x, TTMatrix& y);

};


#endif // __TT_DATA_OBJECT_H__
