/* 
 * A Mapper Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
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

class TTMODULAR_EXPORT TTMapper : public TTObject
{
	TTCLASS_SETUP(TTMapper)
	
public:
	
	TTSymbolPtr			mInput;						///< ATTRIBUTE : address of the data for the incoming value
	TTSymbolPtr			mOutput;					///< ATTRIBUTE : address of the data for the value to control
	
	TTFloat64			mInputMin;					///< ATTRIBUTE : 
	TTFloat64			mInputMax;					///< ATTRIBUTE : 
	TTFloat64			mOutputMin;					///< ATTRIBUTE : 
	TTFloat64			mOutputMax;					///< ATTRIBUTE : 
	
	TTValue				mFunctionLibrary;			///< ATTRIBUTE : names of all available function from FunctionLib
	TTSymbolPtr			mFunction;					///< ATTRIBUTE : name of the map function
	TTValue				mFunctionDatas;		///< ATTRIBUTE : names of data's function
	TTValue				mFunctionSamples;			///< ATTRIBUTE : an overview of the mapping (each value between [map(InputMin) :: map(InputMax)])
	
private:
	
	TTNodeDirectoryPtr	mDirectory;					///< the directory
	TTReceiverPtr		mReceiver;					///< the receiver which binds on In data(s)
	TTSenderPtr			mSender;					///< the sender which binds on Out data(s)
	
	TTCallbackPtr		mReturnValueCallback;		///< a way to return back value to the owner of this mapper
	
	TTFloat64			mA, mB, mC, mD;				// Coefficients used for normalizing input(A, B) and output (C, D
	TTAudioObjectPtr	mFunctionUnit;
	TTBoolean			mValid;						// true if the functionUnit can be used
	
public:
	
	/** process mapping */
	TTErr map(TTValue& value);
	
private :
	
	/** */
	TTErr getFunctionLibrary(TTValue& value);
	
	/** */
	TTErr getFunctionSamples(TTValue& value);
	
	/** set the input address and set InputMin and InputMax using RangeBounds attributes */
	TTErr setInput(const TTValue& value);
	
	/**  set the output address and set OutputMin and OutputMax using RangeBounds attributes */
	TTErr setOutput(const TTValue& value);
	
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
	
	TTErr scaleInput();
	TTErr scaleOutput();
	
	TTErr notifyObservers(TTSymbolPtr attrName, const TTValue& value);
	
	friend TTErr TTMODULAR_EXPORT TTMapperReceiveAddressCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTMapperReceiveValueCallback(TTPtr baton, TTValue& data);
};

typedef TTMapper* TTMapperPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTMapperReceiveAddressCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTMapperReceiveValueCallback(TTPtr baton, TTValue& data);

#endif // __TT_MAPPER_H__
