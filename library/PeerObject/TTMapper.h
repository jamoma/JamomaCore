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
	
	TTSymbolPtr			mInput;						///< ATTRIBUTE : address of the parameter for the incoming value
	TTSymbolPtr			mOutput;					///< ATTRIBUTE : address of the parameter for the value to control
	
	TTFloat64			mInputMin;					///< ATTRIBUTE : 
	TTFloat64			mInputMax;					///< ATTRIBUTE : 
	TTFloat64			mOutputMin;					///< ATTRIBUTE : 
	TTFloat64			mOutputMax;					///< ATTRIBUTE : 
	
	TTSymbolPtr			mFunction;					///< ATTRIBUTE : name of the map function
	
private:
	
	TTNodeDirectoryPtr	mDirectory;					///< the directory
	TTReceiverPtr		mReceiver;					///< the receiver which binds on In parameter(s)
	TTSenderPtr			mSender;					///< the sender which binds on Out parameter(s)
	
	TTCallbackPtr		mReturnValueCallback;		///< a way to return received value to the owner of this mapper
	
public:
	
	/** process mapping */
	TTErr map(const TTValue& value);
	
private :
	
	/** */
	TTErr setInput(const TTValue& value);
	
	/** */
	TTErr setOutput(const TTValue& value);
	
	/** */
	TTErr setFunction(const TTValue& value);
	
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
