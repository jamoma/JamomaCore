/* 
 * A Sender Object
 * Copyright © 2008, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_NODE_SENDER_H__
#define __TT_NODE_SENDER_H__

#include "TTModular.h"
#include "TTNode.h"
#include "TTNodeDirectory.h"

/**	TTSender ... TODO : an explanation
 */
class TTMODULAR_EXPORT TTNodeSender : public TTObject
{
	TTCLASS_SETUP(TTNodeSender)
	
	public:
	
	TTNodeDirectoryPtr	mDirectory;			///< the directory
	TTSymbolPtr			mAddress;			///< the address to bind
	TTSymbolPtr			mAttribute;			///< the attribute to bind (default : value)

	private:
	
	TTListPtr			mNodesCache;		///< a cache containing all binded nodes for quick access
	TTObjectPtr			mObserver;			///< a life cycle observer
	
	public:
	
	/**	Setter for mAddress attribute. */
	TTErr setAddress(const TTValue& value);
	
	/**	Setter for mAttribute attribute. */
	TTErr setAttribute(const TTValue& value);
	
	TTErr directoryNotification(TTPtr baton, TTValue& data);
	
	private :
	
	TTErr send(TTValue& valueToSend);
	
	TTErr bind();
	
	TTErr unbind();
	
};

typedef TTNodeSender* TTNodeSenderPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT NodeSenderCallback(TTPtr baton, TTValue& data);

#endif // __TT_NODE_SENDER_H__
