/* 
 * A Mapper Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MAPPER_H__
#define __TT_MAPPER_H__

#include "TTModular.h"

/**	TTMapper ... TODO : an explanation
 
 
 */

class TTReceiver;
typedef TTReceiver* TTReceiverPtr;

class TTSender;
typedef TTSender* TTSenderPtr;

class TTApplication;
typedef TTApplication* TTApplicationPtr;

class TTMODULAR_EXPORT TTMapper : public TTObject
{
	TTCLASS_SETUP(TTMapper)
	
private:
	
	TTSymbolPtr			mInput;						///< ATTRIBUTE : address of the data for the incoming value
	TTSymbolPtr			mOutput;					///< ATTRIBUTE : address of the data for the value to control
	
	TTFloat64			mInputMin;					///< ATTRIBUTE : 
	TTFloat64			mInputMax;					///< ATTRIBUTE : 
	TTFloat64			mOutputMin;					///< ATTRIBUTE : 
	TTFloat64			mOutputMax;					///< ATTRIBUTE : 
	
	TTBoolean			mEnable;					///< ATTRIBUTE : do observe Input rangeBounds attribute ?
	
	TTValue				mFunctionLibrary;			///< ATTRIBUTE : names of all available function from FunctionLib
	TTSymbolPtr			mFunction;					///< ATTRIBUTE : name of the map function
	TTValue				mFunctionParameters;		///< ATTRIBUTE : names of parameter's function
	TTValue				mFunctionSamples;			///< ATTRIBUTE : an overview of the mapping (each value between [map(InputMin) :: map(InputMax)])
	
	TTApplicationPtr	mApplication;				///< the application
	TTReceiverPtr		mReceiver;					///< the receiver which binds on In data(s)
	TTSenderPtr			mSender;					///< the sender which binds on Out data(s)
	
	TTReceiverPtr		mInputObserver;				///< the receiver which observe the input address creation/destruction
	TTReceiverPtr		mOutputObserver;			///< the receiver which observe the output address creation/destruction
	
	TTReceiverPtr		mInputRangeObserver;		///< the receiver which observe the input rangeBounds attribute
	TTReceiverPtr		mOutputRangeObserver;		///< the receiver which observe the output rangeBounds attribute
	TTBoolean			mObserveInputRange;			///< do observe Input rangeBounds attribute ?
													///< Set to true if there are a setting Input address
													///< Set to false if there are a setting of Input Min/Max value
	TTBoolean			mObserveOutputRange;		///< do observe Output rangeBounds attribute ?
													///< Set to true if there are a setting Output address
													///< Set to false if there are a setting of Output Min/Max value
	
	TTCallbackPtr		mReturnValueCallback;		///< a way to return back value to the owner of this mapper
	
	TTFloat64			mA, mB, mC, mD;				//< Coefficients used for normalizing input(A, B) and output (C, D
	TTAudioObjectPtr	mFunctionUnit;
	TTBoolean			mValid;						//< true if the functionUnit can be used
	
	/** process mapping */
	TTErr Map(TTValue& value);
	
	/** */
	TTErr getFunctionLibrary(TTValue& value);
	
	/** */
	TTErr getFunctionSamples(TTValue& value);
	
	/** set the input address and set InputMin and InputMax using RangeBounds attributes */
	TTErr setInput(const TTValue& value);
	TTErr observeInput();
	TTErr observeInputRange();
	
	/**  set the output address and set OutputMin and OutputMax using RangeBounds attributes */
	TTErr setOutput(const TTValue& value);
	TTErr observeOutput();
	TTErr observeOutputRange();
	
	/** */
	TTErr setInputMin(const TTValue& value);
	
	/** */
	TTErr setInputMax(const TTValue& value);
	
	/** */
	TTErr setOutputMin(const TTValue& value);
	
	/** */
	TTErr setOutputMax(const TTValue& value);
	
	/** set the function unit and set datas name extending attributes of the unit */
	TTErr setFunction(const TTValue& value);
	
	/** process mapping */
	TTErr processMapping(TTValue& value);
	
	/** */
	TTErr scaleInput();
	
	/** */
	TTErr scaleOutput();
	
	/** */
	TTErr notifyObservers(TTSymbolPtr attrName, const TTValue& value);
	
	friend TTErr TTMODULAR_EXPORT TTMapperInputCreationCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTMapperOutputCreationCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTMapperInputRangeCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTMapperOutputRangeCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTMapperReceiveValueCallback(TTPtr baton, TTValue& data);
};

typedef TTMapper* TTMapperPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMapperInputCreationCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMapperOutputCreationCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMapperInputRangeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMapperOutputRangeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTMapperReceiveValueCallback(TTPtr baton, TTValue& data);

#endif // __TT_MAPPER_H__
