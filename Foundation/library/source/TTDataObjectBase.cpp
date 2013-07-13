/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief TTDataObjectBase is the base class for all data generating and processing objects.
 *
 * @details It still has knowledge and support for sample-rates, but not channel counts or vector processing.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDataObjectBase.h"
#include "TTEnvironment.h"
#include "TTMatrixArray.h"


/****************************************************************************************************/

TTDataObjectBase::TTDataObjectBase(const TTValue& arguments) :
	TTObjectBase(arguments),
	mMatrixCalculateMethod(NULL),
	mCurrentMatrixCalculateMethod(NULL),
	mBypass(NO),
	mInputArray(NULL),				
	mOutputArray(NULL),			
	mStartProcessingTime(0.0),		
	mAccumulatedProcessingTime(0.0),
	mAccumulatedProcessingCalls(0.0),
	mReserved1(0),					
	mReserved2(0)
{
	registerAttribute("bypass",	kTypeBoolean,	&mBypass,	(TTSetterMethod)&TTDataObjectBase::setBypass);

	registerMessage("test",						TTMethod(&TTDataObjectBase::test));
//	registerMessage(calculate",					(TTMethod)&TTAudioObject::calculateMessage);
	registerMessage("resetBenchmarking",		(TTMethod)&TTDataObjectBase::resetBenchmarking, kTTMessagePassNone);
	registerMessage("getProcessingBenchmark",	(TTMethod)&TTDataObjectBase::getProcessingBenchmark);

	ttEnvironment->createInstance(kTTSym_matrixarray, (TTObjectBasePtr*)&mInputArray, 2);
	ttEnvironment->createInstance(kTTSym_matrixarray, (TTObjectBasePtr*)&mOutputArray, 2);
	
	// Set Defaults...	
    setMatrixCalculate(&TTDataObjectBase::defaultMatrixCalculateMethod);
	setAttributeValue("bypass", NO);
}


TTDataObjectBase::~TTDataObjectBase()
{
	ttEnvironment->releaseInstance((TTObjectBasePtr*)&mInputArray);
	ttEnvironment->releaseInstance((TTObjectBasePtr*)&mOutputArray);
}


TTErr TTDataObjectBase::setMatrixCalculate(TTMatrixCalculateMethod newMatrixCalculateMethod)
{
	mMatrixCalculateMethod = newMatrixCalculateMethod;
	if (!mBypass)
		mCurrentMatrixCalculateMethod = mMatrixCalculateMethod;
	return kTTErrNone;
}


TTErr TTDataObjectBase::setBypass(const TTValue& value)
{
	mBypass = value;
	if (mBypass) {
		mCurrentMatrixCalculateMethod = &TTDataObjectBase::bypassMatrixCalculate;
	}
//	else if (attrMute) {
//		currentProcessMethod = &TTAudioObject::muteProcess;
//	}
	else {
		if (mMatrixCalculateMethod)
			mCurrentMatrixCalculateMethod = mMatrixCalculateMethod;
		else
			mCurrentMatrixCalculateMethod = &TTDataObjectBase::defaultMatrixCalculateMethod;
	}
	return kTTErrNone;
}


TTErr TTDataObjectBase::bypassMatrixCalculate(const TTMatrixArray* inputs, TTMatrixArray* outputs)
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


TTErr TTDataObjectBase::defaultMatrixCalculateMethod(const TTMatrixArray* inputs, TTMatrixArray* outputs)
{
	return bypassMatrixCalculate(inputs, outputs);
}


TTErr TTDataObjectBase::calculate(const TTMatrixArray* inputs, TTMatrixArray* outputs)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		if (!ttEnvironment->mBenchmarking){
			lock();
			err = (this->*mCurrentMatrixCalculateMethod)(inputs, outputs);
			unlock();
		}else {
			lock();
			mStartProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*mCurrentMatrixCalculateMethod)(inputs, outputs);
			mAccumulatedProcessingTime += (TTGetTimeInMicroseconds() - mStartProcessingTime);
			mAccumulatedProcessingCalls++;
			unlock();
		}

	}
	return err;
}


TTErr TTDataObjectBase::calculate(const TTMatrix& x, TTMatrix& y)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		mInputArray->setMatrixCount(1);
		mInputArray->setMatrix(0, (TTMatrix&)x);
		mOutputArray->setMatrixCount(1);
		mOutputArray->setMatrix(0, y);
		if (!ttEnvironment->mBenchmarking)
			err = (this->*mCurrentMatrixCalculateMethod)(mInputArray, mOutputArray);
		else{
			mStartProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*mCurrentMatrixCalculateMethod)(mInputArray, mOutputArray);
			mAccumulatedProcessingTime += (TTGetTimeInMicroseconds() - mStartProcessingTime);
			mAccumulatedProcessingCalls++;
			unlock();
		}
	}
	return err;
}


TTErr TTDataObjectBase::resetBenchmarking()
{
	mAccumulatedProcessingTime = 0.0;
	mStartProcessingTime = 0.0;
	mAccumulatedProcessingCalls = 0.0;
	return kTTErrNone;
}


TTErr TTDataObjectBase::getProcessingBenchmark(TTValueRef v)
{
	v = mAccumulatedProcessingTime / mAccumulatedProcessingCalls;
	return kTTErrNone;
}

