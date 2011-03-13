/* 
 * TTBlue Data Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDataObject.h"
#include "TTEnvironment.h"
#include "TTMatrixArray.h"


/****************************************************************************************************/

TTDataObject::TTDataObject(TTValue& arguments)
	: TTObject(arguments)
{
	registerAttribute(TT("bypass"),	kTypeBoolean,	&mBypass,	(TTSetterMethod)&TTDataObject::setBypass);

//	registerMessage(TT("calculate"), (TTMethod)&TTAudioObject::calculateMessage);
	registerMessage(TT("test"), TTMethod(&TTObject::test));
//	registerMessage(TT("resetBenchmarking"), (TTMethod)&TTAudioObject::resetBenchmarking, kTTMessagePassNone);
//	registerMessage(TT("getProcessingBenchmark"), (TTMethod)&TTAudioObject::getProcessingBenchmark);

	TTObjectInstantiate(kTTSym_matrixarray, (TTObjectPtr*)&mInputArray, 2);
	TTObjectInstantiate(kTTSym_matrixarray, (TTObjectPtr*)&mOutputArray, 2);
	
	// Set Defaults...	
    setMatrixCalculate(&TTDataObject::defaultMatrixCalculateMethod);
	setAttributeValue(TT("bypass"),			kTTBoolNo);	
}


TTDataObject::~TTDataObject()
{
	TTObjectRelease((TTObjectPtr*)&mInputArray);
	TTObjectRelease((TTObjectPtr*)&mOutputArray);
}


TTErr TTDataObject::setMatrixCalculate(TTMatrixCalculateMethod newMatrixCalculateMethod)
{
	mMatrixCalculateMethod = newMatrixCalculateMethod;
	if (!mBypass)
		mCurrentMatrixCalculateMethod = mMatrixCalculateMethod;
	return kTTErrNone;
}


TTErr TTDataObject::setBypass(const TTValue& value)
{
	mBypass = value;
	if (mBypass) {
		mCurrentMatrixCalculateMethod = &TTDataObject::bypassMatrixCalculate;
	}
//	else if (attrMute) {
//		currentProcessMethod = &TTAudioObject::muteProcess;
//	}
	else {
		if (mMatrixCalculateMethod)
			mCurrentMatrixCalculateMethod = mMatrixCalculateMethod;
		else
			mCurrentMatrixCalculateMethod = &TTDataObject::defaultMatrixCalculateMethod;
	}
	return kTTErrNone;
}


TTErr TTDataObject::bypassMatrixCalculate(const TTMatrixArray* inputs, TTMatrixArray* outputs)
{
	for (TTUInt16 i=0; i < outputs->getMatrixCount(); i++) {
		TTMatrixPtr out = outputs->getMatrix(i);
		
		if (i < inputs->getMatrixCount()) {
			TTMatrixPtr in = inputs->getMatrix(i);
			TTMatrix::copy(in, out);
		}
		else
			out->clear();
	}
	return kTTErrNone;
}


TTErr TTDataObject::defaultMatrixCalculateMethod(const TTMatrixArray* inputs, TTMatrixArray* outputs)
{
	return bypassMatrixCalculate(inputs, outputs);
}


TTErr TTDataObject::calculate(const TTMatrixArray* inputs, TTMatrixArray* outputs)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		err = (this->*mCurrentMatrixCalculateMethod)(inputs, outputs);
		unlock();
	}
	return err;
}


TTErr TTDataObject::calculate(const TTMatrix& x, TTMatrix& y)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		mInputArray->setMatrixCount(1);
		mInputArray->setMatrix(0, (TTMatrix&)x);
		mOutputArray->setMatrixCount(1);
		mOutputArray->setMatrix(0, y);
//		startProcessingTime = TTGetTimeInMicroseconds();
		err = (this->*mCurrentMatrixCalculateMethod)(mInputArray, mOutputArray);
//		accumulatedProcessingTime += (TTGetTimeInMicroseconds() - startProcessingTime);
//		accumulatedProcessingCalls++;
		unlock();
	}
	return err;
}

