/* 
 * A Receiver Object
 * Copyright © 2008, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_NODE_RECEIVER_H__
#define __TT_NODE_RECEIVER_H__

#include "TTModular.h"
#include "TTNode.h"
#include "TTNodeDirectory.h"

/**	TTReceiver ... TODO : an explanation
 */
class TTFOUNDATION_EXPORT TTNodeReceiver : public TTObject
{
	TTCLASS_SETUP(TTNodeReceiver)
	
	public:
	
	TTNodeDirectoryPtr	mDirectory;			///< the directory
	TTSymbolPtr			mAddress;			///< the address to bind
	TTSymbolPtr			mAttribute;			///< the attribute to bind (default : value)
	TTBoolean			mEnable;			///< if false, received data won't be output without unregistered attribute observers (default true).
	
	private :
	
	TTListPtr			mNodesCache;		///< a cache containing all binded nodes for quick access
	TTObjectPtr			mObserver;			///< a life cycle observer
	TTListPtr			mAttrObservers;		///< a list containing <aNode, anAttrObserver>
	
	public:
	
	/**	Setter for mAddress attribute. */
	TTErr setAddress(const TTValue& value);
	
	/**	Setter for mAttribute attribute. */
	TTErr setAttribute(const TTValue& value);
	
	/**	Setter for mMute attribute. */
	TTErr setEnable(const TTValue& value);
	
	TTErr directoryNotification(TTPtr baton, TTValue& data);
	
	TTErr attrNotification(TTPtr baton, TTValue& data);
	
	TTErr get();
	
	private :
	
	TTErr send(TTValue& valueToSend);
	
	TTErr bind();
	
	TTErr unbind();
	
};

typedef TTNodeReceiver* TTNodeReceiverPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT NodeReceiverDirectoryCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTFOUNDATION_EXPORT NodeReceiverAttrCallback(TTPtr baton, TTValue& data);

#endif // __TT_NODE_RECEIVER_H__
