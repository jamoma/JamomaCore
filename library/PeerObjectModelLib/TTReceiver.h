/* 
 * A Receiver Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_RECEIVER_H__
#define __TT_RECEIVER_H__

#include "TTModular.h"

/**	TTReceiver ... TODO : an explanation
 */
class TTMODULAR_EXPORT TTReceiver : public TTObject
{
	TTCLASS_SETUP(TTReceiver)
	
public:
	
	TTNodeDirectoryPtr	mDirectory;					///< the directory
	TTSymbolPtr			mAddress;					///< the address to bind
	TTSymbolPtr			mAttribute;					///< the attribute to bind (default : value)
	TTBoolean			mEnable;					///< if false, received data won't be output without unregistered attribute observers (default true).
	
private :
	
	TTCallbackPtr		mReturnAddressCallback;		///< a way to return received address to the owner of this receiver
	TTCallbackPtr		mReturnValueCallback;		///< a way to return received value to the owner of this receiver
	TTObjectPtr			mObserver;					///< a life cycle observer
	TTListPtr			mNodesObserversCache;		///< a list containing <aNode, anAttrObserver>
	
public:
	
	/**	Setter for mAddress attribute. */
	TTErr setAddress(const TTValue& value);
	
	/**	Setter for mAttribute attribute. */
	TTErr setAttribute(const TTValue& value);
	
	/**	Setter for mMute attribute. */
	TTErr setEnable(const TTValue& value);
	
	/** Ask the value directly */
	TTErr get();
	
private :
	
	TTErr bind();
	
	TTErr unbind();
	
	friend TTErr TTReceiverDirectoryCallback(TTPtr baton, TTValue& data);
	
	friend TTErr TTReceiverAttributeCallback(TTPtr baton, TTValue& data);
	
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

#endif // __TT_RECEIVER_H__
