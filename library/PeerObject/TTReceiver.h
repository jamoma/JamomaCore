/* 
 * A Receiver Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_RECEIVER_H__
#define __TT_RECEIVER_H__

#include "TTModular.h"

/**	TTReceiver ... TODO : an explanation
 
 
 */

class TTMODULAR_EXPORT TTReceiver : public TTDataObject
{
	TTCLASS_SETUP(TTReceiver)
	
private:
	
	TTNodeAddressPtr			mAddress;					///< ATTRIBUTE: the address to bind
	TTBoolean					mEnable;					///< ATTRIBUTE: if false, received data won't be output without unregister the attribute observer (default true).
	
	TTNodeDirectoryPtr			mDirectory;					///< a receiver depends on a directory
	TTCallbackPtr				mReturnAddressCallback;		///< a way to return received address to the owner of this receiver
	TTCallbackPtr				mReturnValueCallback;		///< a way to return received value to the owner of this receiver
	TTCallbackPtr				mAddressObserver;			///< an address life cycle observer
	TTCallbackPtr				mApplicationObserver;		///< an application life cycle observer
	TTListPtr					mNodesObserversCache;		///< a list containing <aNode, anAttrObserver>
	TTObjectPtr					mObjectCache;				///< ATTRIBUTE : the object from which the value is received

	
	/**	Setter for mAddress attribute. */
	TTErr setAddress(const TTValue& value);
	
	/**	Setter for mMute attribute. */
	TTErr setEnable(const TTValue& value);
	
	/** Ask the value directly */
	TTErr Get();
	
	/** */
	TTErr bindAddress();
	
	/**  */
	TTErr unbindAddress();
	
	/** */
	TTErr bindApplication();
	
	/** */
	TTErr unbindApplication();
	
	friend TTErr TTMODULAR_EXPORT TTReceiverDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTReceiverAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTReceiverApplicationManagerCallback(TTPtr baton, TTValue& data);
	
};

typedef TTReceiver* TTReceiverPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTReceiverDirectoryCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTReceiverAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTReceiverApplicationManagerCallback(TTPtr baton, TTValue& data);

#endif // __TT_RECEIVER_H__
