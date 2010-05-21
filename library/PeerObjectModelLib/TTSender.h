/* 
 * A Sender Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SENDER_H__
#define __TT_SENDER_H__

#include "TTPeerObjectModel.h"

/**	TTSender ... TODO : an explanation
 */
class TTPOM_EXPORT TTSender : public TTObject
{
	TTCLASS_SETUP(TTSender)
	
	public:
	
	TTNodeDirectoryPtr	mDirectory;			///< the directory
	TTSymbolPtr			mAddress;			///< ATTRIBUTE: the address to bind
	TTSymbolPtr			mAttribute;			///< ATTRIBUTE: the attribute to bind (default : value)

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

typedef TTSender* TTSenderPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTFOUNDATION_EXPORT TTSenderCallback(TTPtr baton, TTValue& data);

#endif // __TT_SENDER_H__
